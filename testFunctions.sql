-- count_books_by_publisher
SELECT count_books_by_publisher(1) AS book_count;

-- get_total_sales_for_book
INSERT INTO orders (id, customer_id, order_date, total_amount, status, last_modified_by, last_modified_at)
VALUES (1, 1, NOW(), 39.98, 'Completed', 1, NOW());

INSERT INTO order_details (id, order_id, book_id, quantity, unit_price)
VALUES (1, 1, 1, 2, 19.99);

SELECT get_total_sales_for_book(1) AS total_sales;

-- is_book_available_in_store
SELECT is_book_available_in_store(1, 1) AS available;
