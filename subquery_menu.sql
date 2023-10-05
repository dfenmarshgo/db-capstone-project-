SELECT MenuName
FROM Menus
WHERE MenuItemsID IN (
    SELECT M.MenuItemsID
    FROM Orders O
    JOIN Menus M ON O.MenuID = M.MenuID
    WHERE O.Quantity > 2
);
