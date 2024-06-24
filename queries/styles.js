const db = require("../db/dbConfig");

const getAllStyles = async () => {
  try {
    const allStyles = await db.any("SELECT * FROM styles");
    return allStyles;
  } catch (error) {
    console.error("Error getting all Styles:", error.message);
    throw new Error("Could not retrieve Styles");
  }
};

const getStylesByCategory = async (categoryId) => {
  try {
    const styles = await db.any(
      "SELECT * FROM styles WHERE category_id = $1",
      categoryId
    );
    return styles;
  } catch (error) {
    console.error(error);
    throw new Error("Could not retrieve style by Category Id");
  }
};

const getOneStyle = async (id) => {
  try {
    const style = await db.one("SELECT * FROM styles WHERE id = $1", id);
    return style;
  } catch (error) {
    console.error(error);
    throw new Error("Could not find style matching id");
  }
};

const createStyle = async (styleObj) => {
  try {
    const styleToCreate = await db.one(
      "INSERT INTO styles (price, name, description, image_url, duration, category_id) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *",
      [
        styleObj.price,
        styleObj.name,
        styleObj.description,
        styleObj.image_url,
        styleObj.duration,
        styleObj.category_id,
      ]
    );
    return styleToCreate;
  } catch (error) {
    console.error(error);
    throw new Error("Could not create styleObj");
  }
};

const updateStyle = async (id, styleObj) => {
  try {
    const styleToUpdate = await db.one(
      "UPDATE styles SET name = $1, price = $2, description = $3, image_url = $4, duration = $5, category_id = $6 WHERE id = $7 RETURNING *",
      [
        styleObj.name,
        styleObj.price,
        styleObj.description,
        styleObj.image_url,
        styleObj.duration,
        styleObj.category_id,
        id,
      ]
    );
    return styleToUpdate;
  } catch (error) {
    console.error(error);
    throw error;
  }
};

const deleteStyle = async (id) => {
  try {
    const deletedStyle = await db.one(
      "DELETE FROM styles WHERE id = $1 RETURNING *",
      id
    );
    console.log("Style Deleted", deletedStyle);
    return deletedStyle;
  } catch (error) {
    console.error(error);
    throw error;
  }
};

module.exports = {
  getAllStyles,
  getStylesByCategory,
  getOneStyle,
  createStyle,
  updateStyle,
  deleteStyle,
};
