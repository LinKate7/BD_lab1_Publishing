SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM order_details;
DELETE FROM orders;
DELETE FROM reviews;
DELETE FROM reviewers;
DELETE FROM book_stores;
DELETE FROM stores;
DELETE FROM book_editors;
DELETE FROM editors;
DELETE FROM book_authors;
DELETE FROM books;
DELETE FROM authors;
DELETE FROM royalties;
DELETE FROM contracts;
DELETE FROM promotions;
DELETE FROM customers;
DELETE FROM formats;
DELETE FROM publishers;
DELETE FROM languages;
DELETE FROM genres;
DELETE FROM users;


SET FOREIGN_KEY_CHECKS = 1;
