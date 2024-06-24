const express = require("express");
const styles = express.Router();

const {
  getAllStyles,
  getStylesByCategory,
  getOneStyle,
  createStyle,
  updateStyle,
  deleteStyle,
} = require("../queries/styles");

styles.get("/", async (req, res) => {
  try {
    const allStyles = await getAllStyles();
    res.status(200).json(allStyles);
  } catch (error) {
    res.status(500).json({ error: "Server Controller Error" });
  }
});

styles.get("/category/:categoryId", async (req, res) => {
  try {
    const { categoryId } = req.params;
    const styles = await getStylesByCategory(categoryId);
    res.status(200).json(styles);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

styles.get("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const style = await getOneStyle(id);
    res.status(200).json(style);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

styles.post("/", async (req, res) => {
  try {
    const createdStyle = await createStyle(req.body);
    res.status(201).json(createdStyle);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

styles.put("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const updatedStyle = await updateStyle(id, req.body);
    res.status(200).json(updatedStyle);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

styles.delete("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const deletedStyle = await deleteStyle(id);
    res.status(200).json(deletedStyle);
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

module.exports = styles;
