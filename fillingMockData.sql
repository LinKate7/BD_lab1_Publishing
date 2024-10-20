INSERT INTO users (username, first_name, last_name, email, created_at) VALUES
('jdoe', 'John', 'Doe', 'johndoe@example.com', CURRENT_TIMESTAMP),
('asmith', 'Alice', 'Smith', 'alicesmith@example.com', CURRENT_TIMESTAMP),
('bparker', 'Ben', 'Parker', 'benparker@example.com', CURRENT_TIMESTAMP);

INSERT INTO genres (name, is_deleted) VALUES
('Fiction', false),
('Non-Fiction', false),
('Science Fiction', false);

INSERT INTO languages (name, code) VALUES
('English', 'EN'),
('French', 'FR');

INSERT INTO publishers (name, address, city, country, email, phone, is_deleted, last_modified_by, last_modified_at) VALUES
('Penguin Random House', '375 Hudson St', 'New York', 'USA', 'contact@penguin.com', '345-678-9012', false, 1, CURRENT_TIMESTAMP);

INSERT INTO formats (name, is_deleted) VALUES
('Hardcover', false),
('Paperback', false);

INSERT INTO authors (first_name, last_name, date_of_birth, nationality, biography, email, phone, is_deleted, last_modified_by, last_modified_at) VALUES
('George', 'Orwell', '1903-06-25', 'British', 'English novelist and essayist.', 'orwell@example.com', '123-456-7890', false, 1, CURRENT_TIMESTAMP),
('Isaac', 'Asimov', '1920-01-02', 'American', 'Science fiction author and biochemist.', 'asimov@example.com', '234-567-8901', false, 1, CURRENT_TIMESTAMP);

INSERT INTO books (title, isbn, genre_id, publish_date, number_of_pages, language_id, publisher_id, format_id, edition, is_deleted, last_modified_by, last_modified_at, created_at) VALUES
('1984', '978-0451524935', 1, '1949-06-08', 328, 1, 1, 1, 'First Edition', false, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('Foundation', '978-0553293357', 3, '1951-06-01', 255, 2, 1, 1, 'First Edition', false, 2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO book_authors (book_id, author_id, contribution_type, is_deleted) VALUES
(1, 1, 'Primary', false),
(2, 2, 'Primary', false);

INSERT INTO editors (first_name, last_name, email, phone, department, is_deleted, last_modified_by, last_modified_at) VALUES
('Emily', 'Brown', 'ebrown@example.com', '456-789-0123', 'Literature', false, 1, CURRENT_TIMESTAMP),
('James', 'Wilson', 'jwilson@example.com', '567-890-1234', 'Science Fiction', false, 2, CURRENT_TIMESTAMP);

INSERT INTO book_editors (book_id, editor_id, contribution_type, is_deleted) VALUES
(1, 1, 'Editor', false),
(2, 2, 'Editor', false);

INSERT INTO reviewers (first_name, last_name, email, affiliation) VALUES
('Laura', 'Johnson', 'lauraj@example.com', 'Literary Review'),
('Michael', 'Clark', 'mclark@example.com', 'Sci-Fi Magazine');

INSERT INTO reviews (book_id, reviewer_id, rating, review_text, review_date, is_deleted) VALUES
(1, 1, 5, 'A brilliant and thought-provoking novel.', '2023-01-15', false),
(2, 2, 4, 'A timeless classic in science fiction.', '2023-02-10', false);

INSERT INTO stores (name, address, city, country, website, email, phone, is_deleted, last_modified_by, last_modified_at) VALUES
('Books Galore', '123 Main St', 'New York', 'USA', 'www.booksgalore.com', 'info@booksgalore.com', '678-901-2345', false, 3, CURRENT_TIMESTAMP);

INSERT INTO book_stores (store_id, book_id, stock_quantity, price) VALUES
(1, 1, 50, 9.99),
(1, 2, 30, 14.99);

INSERT INTO customers (first_name, last_name, email, address, city, country, phone, is_deleted, last_modified_by, last_modified_at) VALUES
('David', 'Miller', 'dmiller@example.com', '456 Elm St', 'Los Angeles', 'USA', '789-012-3456', false, 2, CURRENT_TIMESTAMP),
('Sophia', 'Garcia', 'sgarcia@example.com', '789 Pine St', 'Chicago', 'USA', '890-123-4567', false, 3, CURRENT_TIMESTAMP);

INSERT INTO orders (customer_id, order_date, total_amount, status, last_modified_by, last_modified_at) VALUES
(1, '2023-09-15', 29.98, 'Completed', 1, CURRENT_TIMESTAMP),
(2, '2023-10-01', 14.99, 'Shipped', 2, CURRENT_TIMESTAMP);

INSERT INTO order_details (order_id, book_id, quantity, unit_price) VALUES
(1, 1, 2, 9.99),
(2, 2, 1, 14.99);

INSERT INTO royalties (author_id, book_id, royalty_percentage, payment_date, amount, last_modified_by, last_modified_at) VALUES
(1, 1, 10.5, '2023-08-15', 2.10, 1, CURRENT_TIMESTAMP),
(2, 2, 12.0, '2023-09-30', 1.80, 2, CURRENT_TIMESTAMP);

INSERT INTO promotions (book_id, start_date, end_date, discount_percentage, is_deleted, last_modified_by, last_modified_at) VALUES
(1, '2023-11-01', '2023-11-30', 20.0, false, 1, CURRENT_TIMESTAMP),
(2, '2023-12-01', '2023-12-31', 15.0, false, 2, CURRENT_TIMESTAMP);

INSERT INTO contracts (author_id, book_id, contract_date, expiry_date, contract_details, last_modified_by, last_modified_at) VALUES
(1, 1, '2022-01-01', '2025-01-01', '3-year contract for book royalties.', 1, CURRENT_TIMESTAMP),
(2, 2, '2022-02-15', '2025-02-15', '3-year contract for book royalties.', 2, CURRENT_TIMESTAMP);
