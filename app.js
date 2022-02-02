const express = require('express');
const app = express();
const connection = require('./db-config');

connection.connect((err) => {
  if(err){
    console.error(`${err.stack}`);
  }else{
    console.log(`${connection.threadId}`);
  }
});

const port = process.env.PORT || 5000;

app.use(express.json());

app.listen(port, () => console.log(`Server listening on port ${port}`));
