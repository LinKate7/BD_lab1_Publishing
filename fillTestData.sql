INSERT INTO users (id, username, first_name, last_name, email, created_at)
VALUES 
    (1, 'admin', 'Admin', 'User', 'admin@example.com', NOW()),
    (2, 'jdoe', 'John', 'Doe', 'jdoe@example.com', NOW());

INSERT INTO genres (id, name) VALUES 
    (1, 'Science Fiction'),
    (2, 'Fantasy'),
    (3, 'Mystery');

INSERT INTO authors (id, first_name, last_name, date_of_birth, nationality, biography, email, phone, last_modified_by, last_modified_at)
VALUES
    (1, 'Isaac', 'Asimov', '1920-01-02', 'American', 'Prolific sci-fi writer.', 'asimov@example.com', '123-456-7890', 1, NOW()),
    (2, 'Arthur', 'Clarke', '1917-12-16', 'British', 'Sci-fi visionary.', 'clarke@example.com', '123-456-7890', 1, NOW());


INSERT INTO publishers (id, name, address, city, country, email, phone, last_modified_by, last_modified_at)
VALUES
    (1, 'SciFi Books Ltd.', '123 SciFi Street', 'New York', 'USA', 'info@scifibooks.com', '123-456-7890', 1, NOW());


INSERT INTO languages (id, name, code) VALUES 
    (1, 'English', 'EN'),
    (2, 'Spanish', 'ES');


INSERT INTO formats (id, name) VALUES 
    (1, 'Hardcover'),
    (2, 'Paperback');

INSERT INTO books (id, title, isbn, genre_id, publish_date, number_of_pages, language_id, publisher_id, format_id, edition, created_at, last_modified_by, last_modified_at)
VALUES 
    (1, 'Foundation', '978-0-123456-47-2', 1, '1951-06-01', 244, 1, 1, 1, 'First Edition', NOW(), 1, NOW()),
    (2, 'Rendezvous with Rama', '978-0-123456-48-9', 1, '1973-06-01', 241, 1, 1, 2, 'First Edition', NOW(), 1, NOW());

INSERT INTO book_authors (id, book_id, author_id, contribution_type, is_deleted)
VALUES
    (1, 1, 1, 'Author', FALSE),
    (2, 2, 2, 'Author', FALSE);

INSERT INTO customers (id, first_name, last_name, email, address, city, country, phone, last_modified_by, last_modified_at)
VALUES 
    (1, 'Alice', 'Smith', 'alice.smith@example.com', '123 Main St', 'Springfield', 'USA', '555-1234', 1, NOW()),
    (2, 'Bob', 'Johnson', 'bob.johnson@example.com', '456 Oak St', 'Metropolis', 'USA', '555-5678', 1, NOW());

INSERT INTO stores (id, name, address, city, country, website, email, phone, last_modified_by, last_modified_at)
VALUES
    (1, 'Bookstore A', '123 Elm St', 'Metropolis', 'USA', 'www.bookstorea.com', 'info@bookstorea.com', '555-9876', 1, NOW());

INSERT INTO book_stores (id, store_id, book_id, stock_quantity, price)
VALUES
    (1, 1, 1, 10, 19.99),
    (2, 1, 2, 5, 9.99);