const db = require("../db/dbConfig");

const getAllCategories = async () => {
  try {
    const allCategories = await db.any("SELECT * FROM category");
    return allCategories;
  } catch (error) {
    console.error("Error getting all categories:", error.message);
    throw new Error("Could not retrieve categories");
  }
};

const getOneCategory = async (id) => {
  try {
    const oneCategory = await db.one(
      "SELECT * from category where id = $1",
      id
    );
    return oneCategory;
  } catch (error) {
    console.error(`Error getting category with id ${id}:`, error.message);
    throw new Error("Could not retrieve category");
  }
};

const createCategory = async (categoryObj) => {
  try {
    const categoryToCreate = await db.one(
      "INSERT into category (service, description) VALUES ($1, $2) RETURNING *",
      [categoryObj.service, categoryObj.description]
    );
    return categoryToCreate;
  } catch (error) {
    console.error("Error creating category:", error.message);
    throw new Error("Could not create category");
  }
};

const updateCategory = async (id, categoryObj) => {
  try {
    const categoryToUpdate = await db.one(
      "UPDATE category SET service = $1, description = $2 where id=$3 RETURNING *",
      [categoryObj.service, categoryObj.description, id]
    );
    return categoryToUpdate;
  } catch (error) {
    console.error(`Error updating category with id ${id}:`, error.message);
    throw new Error("Could not update category");
  }
};

const deleteCategory = async (id) => {
  try {
    const deletedCategory = await db.one(
      "DELETE FROM category WHERE id = $1 RETURNING *",
      id
    );
    console.log('Category Deleted', deletedCategory);
    return deletedCategory;
  } catch (error) {
    console.error(`Error deleting category with id ${id}:`, error.message);
    throw new Error("Could not delete category");
  }
};

module.exports = {
  getAllCategories,
  getOneCategory,
  createCategory,
  updateCategory,
  deleteCategory
};
