 
const express = require("express");
const app = express();
const path = require("path");
const rutaMain = require("./routes/main");
const rutaProductos = require("./routes/productos");
const rutaUsers = require("./routes/users");
const methodOverride = require('method-override');

//const rutaUsers = require("./routes/users");
const PORT = process.env.PORT || 3000;
app.set('views', __dirname + '/views');
app.set("view engine", "ejs");


app.use(methodOverride("_method"));
app.use(express.static(path.join(__dirname, "../public")));
app.use(express.urlencoded({extended: false}));
app.use(express.json());

app.use("/", rutaMain);
app.use("/productos", rutaProductos);
app.use("/users", rutaUsers);


app.listen(PORT, () => {
    console.log("Escuchando en http://localhost:" + PORT + "/");
});



