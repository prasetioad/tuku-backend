const express = require("express");
const router = express.Router();
const addressController = require("../controllers/addressController");
const auth = require("../middlewares/auth");
const multer = require("../middlewares/multer");

router
  .post('/insert', addressController.insertAddress)
  .put('/update/:id', addressController.updateAddress)


module.exports = router;