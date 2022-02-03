const express = require('express');
const app = express();
const cors = require('cors');
const connection = require('./db-config');

// Verif connection to BDD
connection.connect((err) => {
  if(err){
    console.error(`${err.stack}`);
  }else{
    console.log(`${connection.threadId}`);
  }
});

//Routes
const db = connection.promise();
app.use(cors())
app.use(express.json())

const port = process.env.PORT || 5000;

//Produits

// AllProduits
app.get('/produits', (req,res) => {
  db.query('SELECT * FROM produits')
  .then(result => {
    res.status(200).send(result[0]);
  })
  .catch(err => {
    res.status(404).send('Error retrieving produits from database')
  })
});

// OneProduit
app.get('/produits/:id', (req, res) => {
  const produitId = req.params.id;
  db.query('SELECT * FROM produits WHERE id = ?', [produitId])
  .then(result => {
    res.status(200).send(result[0]);
  })
  .catch(err => {
    res.status(404).send('Error retrieving produits from database')
  })
});

// CreateProduit
app.post('/produits/', (req, res) => {
  const {name, quantite, description, image, prix, id_categories} = req.body;
  db.query('INSERT INTO produits (name, quantite, description, image, prix) VALUES (?, ?, ?, ?, ?)', [name, quantite, description, image, prix, id_categories])
  .then(result => {
    res.status(201).send({id : result[0].insertId, ...req.body});
  })
  .catch(err => {
    res.status(404).send('Error retrieving produits from database')
  })
});

// UpdateProduit
app.put('/produits/:id', (req, res) => {
  db.query('UPDATE produits SET ? WHERE id = ?', [req.body, req.params.id])
  .then(result => {
    res.status(204).send({...req.body});
  })
  .catch(err => {
    res.status(404).send('Error retrieving produits from database')
  })
});

// DeleteProduit
app.delete('/produits/:id', (req, res) => {
  db.query('DELETE FROM produits WHERE id = ?', [req.params.id])
  .then(result => {
    res.status(204).send('Produit deleted correctly');
  })
  .catch(err => {
    res.status(404).send('Error retrieving produits from database')
  })
});

// Categories

// AllCategories

app.get('/categories', (req,res) => {
  db.query('SELECT * FROM categories')
  .then(result => {
    res.status(200).send(result[0]);
  })
  .catch(err => {
    res.status(404).send('Error retrieving categories from database')
  })
});

// OneCategorie
app.get('/categories/:id', (req, res) => {
  db.query('SELECT * FROM categories WHERE id = ?', [req.params.id])
  .then(result => {
    res.status(200).send(result[0]);
  })
  .catch(err => {
    res.status(404).send('Error retrieving categories from database')
  })
});

// OneProduit/OneCategorie
app.get('/categories/:id/produits', (req, res) => {
  db.query('SELECT * FROM produits WHERE id_categories = ?', [req.params.id])
  .then(result => {
    res.status(200).send(result[0]);
  })
  .catch(err => {
    res.status(404).send('Error retrieving produits from database')
  })
});


app.listen(port, () => console.log(`Server listening on port ${port}`));
