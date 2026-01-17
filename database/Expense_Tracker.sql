CREATE DATABASE expense_tracker;
USE expense_tracker;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    password VARCHAR(50)
);
CREATE TABLE expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DOUBLE,
    category VARCHAR(30),
    expense_date DATE,
    note VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE budget (
    budget_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    month VARCHAR(20),
    limit_amount DOUBLE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

