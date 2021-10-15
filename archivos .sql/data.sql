INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Queretaro', 'Casa de 200 metros cuadrados, 5 recamaras y 3 baños', '1000000', 'casa1.jpg', 'Casa', 
  'Lomas verdes, #123', 'Venta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Queretaro', 'Casa de 300 metros cuadrados, dentro del fraccionamiento la vista, 5 recamaras, 3 baños, cocina equipada',
 '3100000', 'casa2.jpg', 'Casa', 
  'Fraccionamiento la vista, #123, interior la luna', 'Venta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Queretaro', 'Casa de 250 metros cuadrados, 3 recamaras, 3 baños patio de recreación, con cocina semi equipada', '3500', 'casa3.jpeg', 'Casa', 
  'Fracionamiento el refugio, #13', 'Renta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Morelia', 'Casa de 100 metros cuadrados, 2 recamaras y 3 baños', '1000000', 'casa4.jpg', 'Casa', 
  'Lomas villas, #1212', 'Venta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Monterrey', 'Casa de 400 metros cuadrados, 3 recamaras y 1 baño', '3500000', 'casa6.jpg', 'Casa', 
  'Lomas del campestre, #121', 'Venta','1');


INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Morelia', 'Departamento de 250 metros cuadrados, 2 recamaras y 3 baños', '4600', 'departamento1.jpeg', 'Departamento', 
  'El campestre, #23 ', 'Renta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Leon', 'Departamento de 110 metros cuadrados, 2 recamaras y 1 baño, cocina y muebles incluidos', '2000', 'departamento2.jpg', 'Departamento', 
  'El campestre, #23 ', 'Renta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('CDMX', 'Departamento en Santa fe, 3 recamaras, 2 baños, alberca, cocina equipada, sala equipada', '15000', 'departamento3.jpg', 'Departamento', 
  'Santa fe, #1223 ', 'Renta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Queretaro', 'Departamento de 250 metros cuadrados, 4 recamaras y 3 baños', '2250000', 'departamento5.jpg', 'Departamento', 
  'Juriquilla, #23, altos de nuevo toledo', 'Venta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Guadalajara', 'Departamento de 150 metros cuadrados, 2 recamaras y 2 baños', '1150000', 'departamento6.jpg', 'Departamento', 
  'Periferico, #23, altos de nuevo azul', 'Venta','1');



INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Guadalajara', 'Terreno en venta 20 metros cubicos', '150000', 'terreno1.jpeg', 'Terreno', 
  'Fraccionamiento la cienega, altos de nuevo azul', 'Venta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Morelia', 'Terreno en venta 20 metros cubicos', '150000', 'terreno2.jpg', 'Terreno', 
  'Avenida del estudiante, 9 de junio', 'Venta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Leon', 'Terreno en venta 20 metros cubicos', '50000', 'terreno3.jpg', 'Terreno', 
  'Avenida del maestro, 12 de julio', 'Venta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Morelia', 'Terreno en renta para fiestas o algun evento 20 metros cubicos', '500', 'terreno4.jpg', 'Terreno', 
  'Avenida del estudiante, 9 de junio', 'Renta','1');



INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Morelia', 'Local en venta 20 metros cubicos', '150000', 'local1.jpg', 'Local', 
  'plaza de torreon nuevo', 'Venta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Leon', 'Local en renta 20 metros cubicos', '2000', 'local2.jpeg', 'Local', 
  'hacienda de correalejo, #432', 'Renta','1');

INSERT INTO products(city, description, price, image, category, address, tipo, disponible)
VALUES ('Morelia', 'Local en renta 20 metros cubicos', '1550', 'local3.jpg', 'Local', 
  'Niños heroes, #132', 'Renta','1');




INSERT INTO users(firstName, lastName, email, city, address, codigo_postal, password, image)
VALUES ('Oscar', 'Fernández Durán', 'oscarfedu@gmail.com', 'Morelia', 'Lomas de hidalgo, 145', 
  '58240', '$2a$10$oDM0Xj9E5b7GzeWl.fOEl.prr.r.k95UYZF1NyFJe2U8wu3GQf0XK','group-1628285793922.jpeg');

INSERT INTO users(firstName, lastName, email, city, address, codigo_postal, password, image)
VALUES ('Felipe', 'Alvares', 'felip.alva@gmail.com', 'Leon', 'Monumento del noreste, 134', 
  '89065', '$2a$10$Zgrxt5dRYCgDGWjJJloOjeeOpJyRPMTUCxpHnNeMenBoqfym0w1DS','group-1628270377645.jpg');


INSERT INTO users(firstName, lastName, email, city, address, codigo_postal, password, image)
VALUES ('Karina', 'Mercado', 'karina7@gmail.com', 'Queretaro', 'lomas del toredo, 451', 
  '56789', '$2a$10$Zgrxt5dRYCgDGWjJJloOjeeOpJyRPMTUCxpHnNeMenBoqfym0w1DS','group-1629163999679.png');


INSERT INTO users(firstName, lastName, email, city, address, codigo_postal, password, image)
VALUES ('Andrea', 'Avalos Tapia', 'andrea7@gmail.com', 'CDMX', 'lomas del prado, 984', 
  '55332', '$2a$10$Zgrxt5dRYCgDGWjJJloOjeeOpJyRPMTUCxpHnNeMenBoqfym0w1DS','group-1629163999613.jpg');
  

INSERT INTO users(firstName, lastName, email, city, address, codigo_postal, password, image)
VALUES ('Caleb', 'Ordas', 'caleb7@gmail.com', 'Morelia', '9 de junio, 984, lomas del plano', 
  '34534', '$2a$10$Zgrxt5dRYCgDGWjJJloOjeeOpJyRPMTUCxpHnNeMenBoqfym0w1DS','group-16291623499613.jpg');

INSERT INTO users(firstName, lastName, email, city, address, codigo_postal, password, image)
VALUES ('Edna', 'Camacho Regalado', 'edna_love7@gmail.com', 'Guadalajara', '9 de junio, 984, lomas del plano', 
  '34534', '$2a$10$Zgrxt5dRYCgDGWjJJloOjeeOpJyRPMTUCxpHnNeMenBoqfym0w1DS','avatar.jpg');


INSERT INTO vendedores(id_usuario,comision)
VALUES ('1', '5'); 

INSERT INTO usuariosPermitidos(id_usuario)
VALUES ('1');



/*INSERT INTO ventas(id_producto, id_comprador, fecha, final_price)
VALUES ('1', '1','2021/05/07', '1000000'); */





