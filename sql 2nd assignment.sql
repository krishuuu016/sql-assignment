create database Ecommerce;

use Ecommerce;

create table users (
	user_id INT AUTO_INCREMENT primary key,
    name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    total_amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    is_returnable BOOLEAN
);

INSERT INTO users (name, email, city) VALUES
('krish', 'krish@gmail.com', 'indore'),
('hiral', 'hiral@gmail.com', 'indore'),
('kanishka', 'kanishka@gmail.com', 'indore');

INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 500.00, 'Pending'),
(1, 1500.00, 'Shipped'),
(2, 2000.00, 'Delivered'),
(3, 800.00, 'Cancelled');

INSERT INTO products (name, description, is_returnable) VALUES
('Laptop', 'High-performance laptop', 1),
('Smartphone', 'Latest model smartphone', 0),
('Headphones', 'Noise-cancelling headphones', 1),
('Backpack', 'Durable travel backpack', 1);

SELECT order_id, status 
FROM orders 
WHERE user_id = 1;

SELECT SUM(total_amount) AS total_spent 
FROM orders 
WHERE user_id = 1;

UPDATE users 
SET city = 'Bangalore' 
WHERE user_id = 2;

select * from users;

UPDATE products 
SET description = 'Ultra-slim, lightweight laptop' 
WHERE product_id = 1;

select * from products;

SELECT product_id, name, description 
FROM products 
WHERE is_returnable = 1;