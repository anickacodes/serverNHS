const express = require("express");
const category = express.Router();

const {
  getAllCategories,
  getOneCategory,
  createCategory,
  updateCategory,
  deleteCategory,
} = require("../queries/category");

category.get("/", async (req, res) => {
  try {
    const allCategories = await getAllCategories(req.query.name);
    if (allCategories.length > 0) {
        res.status(200).json(allCategories);
    } else {
        res.status(404).json({ error: "No categories found" });
    }
} catch (error) {
    res.status(500).json({ error: "Server error" });
}
});

category.get("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const category = await getOneCategory(id);
    if (category.id) {
        res.json(category);
    } else {
        res.status(404).json({ error: "Category not found" });
    }
} catch (error) {
    res.status(500).json({ error: "Server error" });
}
});

category.post("/", async (req, res) => {
  try {
    const createdCategory = await createCategory(req.body);
    res.status(201).json(createdCategory);
} catch (error) {
    res.status(400).json({ error: error.message });
}
});

category.put("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const updatedCategory = await updateCategory(id, req.body);
    if (updatedCategory && updatedCategory.id) {
        res.status(200).json(updatedCategory);
    } else {
        res.status(404).json({ error: "Category not found" });
    }
} catch (error) {
    res.status(500).json({ error: "Server error" });
}
});

category.delete("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const deletedCategory = await deleteCategory(id);
    res.status(200).json('object deleted', deletedCategory);
} catch (error) {
    res.status(500).json({ error: "Server error" });
}
});

module.exports = category;
