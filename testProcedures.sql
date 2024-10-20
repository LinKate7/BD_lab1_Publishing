-- add_new_book
CALL add_new_book(
    'I, Robot', 
    '978-0-123456-49-6', 
    1, 
    '1950-12-02', 
    253, 
    1, 
    1, 
    1, 
    'First Edition', 
    1
);

--to check newly added book
SELECT * FROM books WHERE title = 'I, Robot';

CALL get_books_by_author(1);

CALL delete_genre_if_unused(1);

INSERT INTO genres (id, name) VALUES (4, 'Unused Genre');
CALL delete_genre_if_unused(4);
