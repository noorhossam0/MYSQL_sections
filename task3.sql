CREATE DATABASE IF NOT EXISTS MARKET;

CREATE TABLE IF NOT EXISTS coustomers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    customer_email VARCHAR(50),
    phone VARCHAR(15)
);
CREATE TABLE IF NOT EXISTS orders(
	order_id INT PRIMARY KEY,
    order_date date DEFAULT current_timestamp,
    customer_id INT,
    foreign key (customer_id) references coustomers(customer_id)
);
CREATE TABLE IF NOT EXISTS products(
	product_id INT PRIMARY KEY,
	product_name VARCHAR(50) NOT NULL,
	section VARCHAR(50) default 'general',
    price INT NOT NULL,
    order_id INT,
    foreign key (order_id) references orders(order_id)
);