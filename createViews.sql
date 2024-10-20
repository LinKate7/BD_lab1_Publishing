CREATE VIEW book_details AS
SELECT 
    b.id AS book_id,
    b.title,
    b.isbn,
    g.name AS genre,
    b.publish_date,
    b.number_of_pages,
    l.name AS language,
    p.name AS publisher,
    f.name AS format,
    b.edition,
    b.created_at,
    b.last_modified_at
FROM 
    books b
JOIN genres g ON b.genre_id = g.id
JOIN languages l ON b.language_id = l.id
JOIN publishers p ON b.publisher_id = p.id
JOIN formats f ON b.format_id = f.id;


CREATE VIEW author_details AS
SELECT 
    a.id AS author_id,
    a.first_name,
    a.last_name,
    a.date_of_birth,
    a.nationality,
    a.biography,
    a.email,
    a.phone,
    GROUP_CONCAT(b.title ORDER BY b.title SEPARATOR ', ') AS books
FROM 
    authors a
JOIN book_authors ba ON a.id = ba.author_id
JOIN books b ON ba.book_id = b.id
GROUP BY a.id;


CREATE VIEW customer_orders_summary AS
SELECT 
    c.id AS customer_id,
    c.first_name,
    c.last_name,
    c.email,
    o.id AS order_id,
    o.order_date,
    o.total_amount,
    o.status
FROM 
    customers c
JOIN orders o ON c.id = o.customer_id;
