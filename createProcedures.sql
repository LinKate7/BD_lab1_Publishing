DELIMITER $$

CREATE PROCEDURE add_new_book (
    IN p_title VARCHAR(255),
    IN p_isbn VARCHAR(255),
    IN p_genre_id INT,
    IN p_publish_date DATE,
    IN p_number_of_pages INT,
    IN p_language_id INT,
    IN p_publisher_id INT,
    IN p_format_id INT,
    IN p_edition VARCHAR(255),
    IN p_created_by INT
)
BEGIN
    INSERT INTO books (title, isbn, genre_id, publish_date, number_of_pages, language_id, publisher_id, format_id, edition, created_at, last_modified_by, last_modified_at)
    VALUES (p_title, p_isbn, p_genre_id, p_publish_date, p_number_of_pages, p_language_id, p_publisher_id, p_format_id, p_edition, NOW(), p_created_by, NOW());

    SELECT LAST_INSERT_ID() AS book_id;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE get_books_by_author (
    IN p_author_id INT
)
BEGIN
    SELECT b.id, b.title, b.isbn, b.publish_date
    FROM books b
    INNER JOIN book_authors ba ON ba.book_id = b.id
    WHERE ba.author_id = p_author_id AND b.is_deleted = FALSE;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE delete_genre_if_unused (
    IN p_genre_id INT
)
BEGIN
    IF NOT EXISTS (SELECT 1 FROM books WHERE genre_id = p_genre_id AND is_deleted = FALSE) THEN
        DELETE FROM genres WHERE id = p_genre_id;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Genre cannot be deleted because it is associated with books.';
    END IF;
END$$

DELIMITER ;
