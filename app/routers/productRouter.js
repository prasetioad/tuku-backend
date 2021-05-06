const express = require("express");
const router = express.Router();
const productController = require("../controllers/productController");

router
  .get("/", productController.findAll)
  .get("/popular", productController.findAllPopular)
  .get("/category/:id", productController.findAllByCategory)
  .get("/image/:id", productController.findAllImageProduct)
  .get("/:id", productController.findOne);

module.exports = router;
