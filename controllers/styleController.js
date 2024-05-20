const express = require("express");
const style = express.Router();
// const stylesArray = require("../models/style");

style.get("/", async (req, res) => {
  res.json(stylesArray);
});

style.get("/:id", (req, res) => {
  const { id } = req.params;
  const foundstyle = stylesArray.find((style) => style.id.toString() === id);

  if (foundstyle) {
    res.json(foundstyle);
    console.log("excuse", foundstyle);
  } else {
    res.status(404).json("no id matching");
  }
});

// const isLoggedIn = (req, res, next) => {
//   if (req.isAuthenticated()) {
//     return next();
//   }
//   res.redirect('/login');
// };

// Route for private entry creation
// app.get('/new', isLoggedIn, (req, res) => {
//   res.sendFile(__dirname + '/index.html');
// });

// const Entry = {
//   text: String,
//   isPrivate: Boolean,
//   owner: String, // Username of the entry owner
// };
// authenticateUser,
// Example server-side code to retrieve entries
// entry.get('/entries/:id',  (req, res) => {
//   const id = req.params.id;

//   const entry = Entry.findById(id);

//   if (!entry || (entry.isPrivate && entry.owner !== req.user.username)) {
//     return res.status(403).json({ error: 'Unauthorized' });
//   }

//   res.json(entry);
// });

style.post("/", (req, res) => {
  const {} = req.body;

  const newstyle = {};
  console.log(`sent`, newstyle);
  stylesArray.push(newstyle);
  res.status(201).json(stylesArray);
});

style.put("/:id", (req, res) => {
  const { id } = req.params;
  console.log("ID from URL:", id, typeof id);
  const styleToUpdate = stylesArray.find((style) => {
    console.log("Comparing style.id:", style.id, typeof style.id);
    return style.id.toString() == id;
  });

  if (!styleToUpdate) {
    return res.status(404).json({ error: "style not found" });
  }

  const {} = req.body;
  const updatedstyle = {};

  const updatedStylesArray = stylesArray.map((style) =>
    style.id === styleToUpdate.id ? updatedstyle : style
  );

  res.status(200).json(updatedStylesArray);
});

module.exports = entry;
