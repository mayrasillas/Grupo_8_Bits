
const express = require("express");

const router = express.Router();
const controller = require("../controllers/productosController");

router.get("/productCart", controller.carrito);
router.get("/productDetail", controller.detalle);
router.get("/", controller.productos);


module.exports = router;