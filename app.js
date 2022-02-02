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







app.listen(port, () => console.log(`Server listening on port ${port}`));
