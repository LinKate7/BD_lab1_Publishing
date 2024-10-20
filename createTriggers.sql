DELIMITER $$

CREATE TRIGGER before_insert_books
BEFORE INSERT ON books
FOR EACH ROW
BEGIN
    SET NEW.created_at = NOW();
    SET NEW.last_modified_at = NOW();
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER after_delete_books
AFTER DELETE ON books
FOR EACH ROW
BEGIN
    UPDATE book_authors
    SET is_deleted = TRUE
    WHERE book_id = OLD.id;
END$$

DELIMITER ;
DELIMITER $$

CREATE TRIGGER before_insert_orders
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    IF NEW.total_amount < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Total amount cannot be negative.';
    END IF;
END$$

DELIMITER ;
DELIMITER $$

CREATE TRIGGER after_insert_reviews
AFTER INSERT ON reviews
FOR EACH ROW
BEGIN
    DECLARE avg_rating DECIMAL(3, 2);

    SELECT AVG(r.rating) INTO avg_rating
    FROM reviews r
    WHERE r.book_id = NEW.book_id AND r.is_deleted = FALSE;

    UPDATE books
    SET rating = avg_rating
    WHERE id = NEW.book_id;
END$$

DELIMITER ;
