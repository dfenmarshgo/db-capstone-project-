SELECT
    C.CustomerID,
    C.FullName,
    O.OrderID,
    O.TotalCost,
    M.MenuName,
    MI.CourseName,
    MI.StarterName
FROM Customers AS C
INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN Menus AS M ON O.MenuID = M.MenuID
INNER JOIN MenuItems AS MI ON M.MenuItemsID = MI.MenuItemsID
WHERE O.TotalCost > 150
ORDER BY O.TotalCost ASC;
