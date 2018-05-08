DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  item_id INTEGER NOT NULL AUTO_INCREMENT,
  product_name VARCHAR (150) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price DECIMAL(11,4) NOT NULL,
  stock_quantity INT(50) NOT NULL,
  primary key(item_id)
);

SELECT * FROM products;

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (001,"side mirror" ,"Auto", 50, 121.25)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (002,"Cola juice" ,"Food and drinks", 100, 3.50)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (003,"exhaust pipe" ,"Auto", 30, 75)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (004,"Levis jeans" ,"apparel", 45, 32.75)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (005,"wire" ,"Electrical", 50, 11.25)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (006,"Hook rails" ,"Hardware", 65, 16.25)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (007,"dry vacuum" ,"tools", 15, 95.25)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (008,"primers" ,"paint", 100, 21.99)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (009,"wiper" ,"Auto", 50, 121.25)

INSERT INTO products(item_id,product_name,department_name,stock_quantity,price)
VALUES (010,"phillps bulb" ,"lighting", 100, 4.25)
