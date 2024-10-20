DELIMITER $$

CREATE FUNCTION count_books_by_publisher (
    p_publisher_id INT
)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_books INT;
    
    SELECT COUNT(*) INTO total_books
    FROM books
    WHERE publisher_id = p_publisher_id AND is_deleted = FALSE;

    RETURN total_books;
END$$

DELIMITER ;
DELIMITER $$

CREATE FUNCTION get_total_sales_for_book (
    p_book_id INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_sales DECIMAL(10,2);
    
    SELECT SUM(od.quantity * od.unit_price) INTO total_sales
    FROM order_details od
    WHERE od.book_id = p_book_id;

    IF total_sales IS NULL THEN
        RETURN 0.00;
    ELSE
        RETURN total_sales;
    END IF;
END$$

DELIMITER ;
DELIMITER $$

CREATE FUNCTION is_book_available_in_store (
    p_book_id INT,
    p_store_id INT
)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE stock INT;
    
    SELECT stock_quantity INTO stock
    FROM book_stores
    WHERE book_id = p_book_id AND store_id = p_store_id;

    RETURN stock > 0;
END$$

DELIMITER ;
