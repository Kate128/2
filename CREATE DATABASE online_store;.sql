CREATE DATABASE online_store;
USE online_store;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    total DECIMAL(10, 2) NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
INSERT INTO products (name, description, price, image) VALUES
('Футболка', 'Стильна футболка з бавовни', 299.99, 'tshirt.jpg'),
('Джинси', 'Зручні джинси', 599.99, 'jeans.jpg'),
('Куртка', 'Тепла куртка для холодної погоди', 999.99, 'jacket.jpg');
