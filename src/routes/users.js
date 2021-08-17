
const express = require("express");

const router = express.Router();
const controller = require("../controllers/usersController");

router.get("/crearProducto", controller.crear);
router.get("/editarProducto", controller.editar);
router.post("/crearProducto", controller.create) ;
router.get("/edit/:id", controller.edit);
router.put("/:id", controller.update);
router.delete('/:id', controller.destroy); 

module.exports = router;