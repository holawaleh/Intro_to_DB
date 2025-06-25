-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE Alx_book_storg;

-- TABLE: AUTHORS
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- TABLE: Books
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (Author_id) REFERENCES Authors(Author_id)
);

-- TABLE: CUSTOMERS
CREATE Table Customers (
    Customer_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_name VARCHAR(215) NOT NULL,
    Email VARCHAR(215) UNIQUE,
    Address TEXT
);

-- TABLE: ORDERS
CREATE Table Orders (
    Order_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_id INT,
    Order_date DATE,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

-- TABLE: ORDER_DETAILS
CREATE Table Order_Details (
    Orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    Order_id INT,
    Book_id INT,
    Quantity DOUBLE NOT NULL,
    FOREIGN KEY (Order_id) REFERENCES Order(Order_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);

