/*select now();
select database();
select user();
show databases;
*/

/*create database db_library;
use db_library;
*/

/*CREATE TABLE tbl_books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    quantity INT NOT NULL
);
show tables;
desc tbl_books;
*/

/*CREATE TABLE tbl_members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL
);
show tables;
desc tbl_members;
*/

CREATE TABLE tbl_borrowings (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
show tables;
desc tbl_borrowings;
