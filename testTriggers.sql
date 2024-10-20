-- before_insert_books
INSERT INTO books (id, title, isbn, genre_id, publish_date, number_of_pages, language_id, publisher_id, format_id, edition, last_modified_by)
VALUES (3, 'The Stars, Like Dust', '978-0-123456-50-2', 1, '1951-02-01', 224, 1, 1, 2, 'First Edition', 1);

SELECT created_at, last_modified_at FROM books WHERE id = 3;

-- after_delete_books
DELETE FROM books WHERE id = 3;

SELECT * FROM book_authors WHERE book_id = 3;

-- before_insert_orders
INSERT INTO orders (id, customer_id, order_date, total_amount, status, last_modified_by, last_modified_at)
VALUES (2, 1, NOW(), -50.00, 'Completed', 1, NOW());

-- after_insert_reviews
INSERT INTO reviewers (id, first_name, last_name, email, affiliation) 
VALUES (1, 'Charles', 'Reviewer', 'charles@example.com', 'SciFi Weekly');

INSERT INTO reviews (id, book_id, reviewer_id, rating, review_text, review_date, is_deleted)
VALUES (1, 1, 1, 5, 'Great book!', NOW(), FALSE);

SELECT * FROM books WHERE id = 1;
