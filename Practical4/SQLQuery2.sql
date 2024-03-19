--inner join Orders
Select SUM(UnitPrice * Quantity * (1- Discount)) as Total FROM [Order Details] Inner Join Orders On [Order Details].OrderID = Orders.OrderID
WHERE Orders.EmployeeID = 2 AND Year(OrderDate) = 1996;

SELECT OrderID, Format(OrderDate,'dd MMM yyyy') FROM Orders Inner Join Employees On Orders.EmployeeID=Employees.EmployeeID WHERE Orders.EmployeeID = 2
