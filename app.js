const cors = require("cors");
const express = require("express");
const morgan = require("morgan");
const app = express();
// const session = require("express-session");
const categoryController = require("./controllers/categoryController")
const stylesController = require("./controllers/stylesController")

app.use(cors());
app.use(express.json());
app.use(morgan("tiny"));
app.use("/category", categoryController);
app.use("/styles", stylesController);

// app.use(express.urlencoded({extended: true}))

// app.use(
//   session({
//     secret: process.env.SESSION_SECRET || "your-secret-key",
//     resave: false,
//     saveUninitialized: false,
//   })
// );

app.get("/", (req, res) => {
  res.send(
    `<main><h3><section><p>Server side storage for CLN Styles</p></section></h3></main>`
  );
});


app.get("*", (req, res) => {
  res.status(404).send("Page not found");
});

module.exports = app;
