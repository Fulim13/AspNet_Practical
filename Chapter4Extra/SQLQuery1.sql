-- Execute Reader
Select * from Products;
Select * from Products where ProductID='P001';

-- Execute Scalar
Select ProductName from Products where ProductID='P001';
Select Count(*) from Products;

-- Execute Non Query
Insert into Products(ProductID,ProductName,unitPrice,quantity) values('P005','Speaker',100,550);
Update Products set unitPrice=200 where ProductID='P005';
Delete from Products where ProductID='P005';