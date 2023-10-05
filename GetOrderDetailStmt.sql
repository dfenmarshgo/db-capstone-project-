-- Create the prepared statement
PREPARE GetOrderDetailStmt FROM
'SELECT OrderID, Quantity, TotalCost
 FROM Orders
 WHERE CustomerID = ?';

-- Set the CustomerID variable
SET @CustomerID = 1;

-- Execute the prepared statement
EXECUTE GetOrderDetailStmt USING @CustomerID;

-- Deallocate the prepared statement
DEALLOCATE PREPARE GetOrderDetailStmt;
