const express = require('express');
const exphbs = require('express-handlebars');
const handlebars = require('handlebars');
const { sequelize } = require('sequelize');
const connection = require('./config/connection');

const app = express();

const PORT = process.env.PORT || 8080;

// STATIC DIRECTORY MIDDLEWARE
app.use(express.static('public'));

// const db = require('./models');

//Parse application body as JSON
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

//Set Handlebars
app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

// // Routes Testing
// app.get('/', (req, res) => {
//     res.render('index');
// });

// app.get('api/config', (req, res) => {
//     res.json({
//         success: true,
//     });
// });

//ROUTE
// var routes = require("./routes/api-routes")(app);



//Event Listener on PORT - SYNCING OUR SEQUELIZE MODELS AND STARTING EXPRESS APP
db.sequelize.sync().then(function () {
  app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
  });
});