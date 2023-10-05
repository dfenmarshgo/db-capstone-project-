DELIMITER //

CREATE PROCEDURE CheckBooking(IN bookingDate DATE, IN tableNumber INT)
BEGIN
    DECLARE bookingStatus INT;

    -- Check if the table is already booked for the given date
    SELECT COUNT(*) INTO bookingStatus
    FROM bookings
    WHERE booking_date = bookingDate AND table_number = tableNumber;

    -- Check the booking status
    IF bookingStatus > 0 THEN
        SELECT 'Table is already booked.' AS Message;
    ELSE
        SELECT 'Table is available for booking.' AS Message;
    END IF;
END //

DELIMITER ;
