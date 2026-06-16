CREATE DATABASE shop;
USE shop;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50)
);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE product_category (
    product_id INT,
    category_id INT,
    PRIMARY KEY(product_id, category_id)
);

INSERT INTO users(username,password) VALUES ('admin','1234');

INSERT INTO product(name) VALUES ('Laptop'), ('Phone');

INSERT INTO category(name) VALUES ('Electronics'), ('Office');

INSERT INTO product_category VALUES (1,1);
INSERT INTO product_category VALUES (1,2);
INSERT INTO product_category VALUES (2,1);
