//jshint esversion:6

const express = require("express");
const bodyParser = require("body-parser");
const ejs = require("ejs");
const app = express();
const mysql = require('mysql');

app.set('view engine', 'ejs');

app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static("public")); // to use ejs

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'music_festival',
});

db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('Succes Connected to Data Base');
});

app.get('/lineup', (req, res) => {
  // query to get data from database
  db.query('SELECT * FROM lineup', (err, results) => {
    if (err) {
      throw err;
    }
    res.render('lineup', { lineup: results });
  });
});

app.get("/",function(req,res){
  res.render("index",{
  });
//console.log(posts);
});

app.get("/blog-1",function(req,res){
  res.render("blog-1",{});
});

app.get("/stage",function(req,res){
  res.render("stage",{});
});

app.get("/contact",function(req,res){
  res.render("contact-us",{});
});

app.listen(5000, function() {
  console.log("Server started on port 5000");
});
