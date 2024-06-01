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
    const allCategories = await getAllCategories(req.query.name);
    if (allCategories.length > 0) {
    res.status(200).json(allCategories);
  } else {
    res.status(500).json({ error: "server error" });
  }
});

category.get("/:id", async (req, res) => {
  const { id } = req.params;
  const category = await getOneCategory(id);
  // get one category will always return something so category will always have a value, check for a certain key value instead
  if (category.id) {
    res.json(category);
  } else {
    res.status(404).json({ error: "Category not found" });
  }
});

category.post("/", async (req, res) => {
  try {
    const createdCategory = await createCategory(req.body);
    res.json(createdCategory);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});

category.put("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const updatedCategory = await updateCategory(id, req.body);

    if (updatedCategory && updatedCategory.id) {
      res.status(200).json(updatedCategory);
    } else {
      res.status(404).json({ Error: "Category not found" });
    }
  } catch (error) {
    res.status(500).json({
      Error: "An error occurred while updating the category",
      details: error.message,
    });
  }
});

category.delete("/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const deletedCategory = await deleteCategory(id);
    res.status(200).json(deletedCategory);
  } catch (error) {
    res.status(500).json({
      Error: "An error occurred while deleting the category",
      details: error.message,
    });
  }
});

module.exports = category;
