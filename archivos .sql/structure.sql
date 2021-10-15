CREATE DATABASE  IF NOT EXISTS `bits` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bits`;


DROP TABLE IF EXISTS `products`;

CREATE TABLE products(
  id int NOT NULL AUTO_INCREMENT, 
  city VARCHAR(500) not null,
  description VARCHAR(3000) not null,
  price INT NOT NULL,
  image VARCHAR(500) not null,
  category VARCHAR(500) not null,
  address VARCHAR(500) not null,
  tipo VARCHAR(500) not null,
  disponible TINYINT(1) Default 1,
  PRIMARY KEY (id)
  );

DROP TABLE IF EXISTS `users`;

CREATE TABLE users(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
  firstName VARCHAR(100) not null,
  lastName VARCHAR(150) not null,
  email VARCHAR(100) not null,
  city VARCHAR(500) not null,
  address VARCHAR(500) not null,
  codigo_postal VARCHAR(5) not null,
  password VARCHAR(150) not null,
  image VARCHAR(150) not null
  );

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE ventas(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
  id_producto INT not null,
  id_comprador INT NOT NULL,
  fecha DATE not null,
  final_price INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_producto) REFERENCES products(id),
  FOREIGN KEY (id_comprador) REFERENCES users(id)
  );

DROP TABLE IF EXISTS `vendedores`;

CREATE TABLE vendedores( 
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
  id_usuario INT NOT NULL,
  comision INT NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES users(id)
  );

DROP TABLE IF EXISTS `usuariosPermitidos`;

CREATE TABLE usuariosPermitidos( 
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
  id_usuario INT not null,
  FOREIGN KEY (id_usuario) REFERENCES users(id)
  );


