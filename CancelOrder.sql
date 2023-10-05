DELIMITER //
CREATE PROCEDURE CancelOrder(IN p_OrderID INT)
BEGIN
    -- Check if the order exists
    IF EXISTS (SELECT 1 FROM Orders WHERE OrderID = p_OrderID) THEN
        -- Delete the order
        DELETE FROM Orders WHERE OrderID = p_OrderID;
        SELECT 'Order canceled successfully.';
    ELSE
        SELECT 'Order not found.';
    END IF;
END;
//
DELIMITER ;
