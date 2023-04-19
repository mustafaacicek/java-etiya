-- Mustafa Çiçek 

-- SQL Select
SELECT * FROM Customers;
SELECT city FROM Customers;
SELECT DISTINCT Country FROM Customers;


-- SQL Where
SELECT * FROM Customers WHERE City = 'Berlin';
SELECT * FROM Customers WHERE NOT City = 'Berlin';
SELECT * FROM Customers WHERE CustomerID = 32;
SELECT * FROM Customers WHERE City = 'Berlin' and PostalCode = 12209;
Select * FROM Customers WHERE City = 'Berlin' or 'London';


-- SQL Like
SELECT * FROM Customers WHERE City LIKE 'a%';
SELECT * FROM Customers WHERE City LIKE '%a';
SELECT * FROM Customers WHERE City LIKE '%a%';
SELECT * FROM Customers WHERE City LIKE 'a%b';
SELECT * FROM Customers WHERE City NOT LIKE 'a%';


-- SQL In    
SELECT * FROM Customers WHERE Country IN ('Norway','France');
SELECT * FROM Customers WHERE Country NOT IN ('Norway','France');


-- SQL Between
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;
SELECT * FROM Products WHERE Price NOT BETWEEN 10 AND 20;
SELECT * FROM Products WHERE ProductName BETWEEN 'Geitost' and 'Pavlova'

-- SQL Wildcards
SELECT * FROM Customers WHERE City LIKE '_a%';
SELECT * FROM Customers WHERE City LIKE '[acs]%';
SELECT * FROM Customers WHERE City LIKE '[a-f]%';
SELECT * FROM Customers WHERE City LIKE '[^acf]%';


-- SQL Alias
SELECT CustomerName,Address,PostalCode as Pno FROM Customers;
SELECT * FROM Customers as Consumers;


-- SQL Order By 
SELECT * FROM Customers Order By City;
SELECT * FROM Customers Order By City DESC;
SELECT * FROM Customers Order By Country,City;


-- SQL Insert Into 
Insert Into Customers(CustomerName,Address,City,PostalCode,Country) VALUES ('Hekkan Burger','Gateveiein 15','Sandnes','4306','Norway');


-- SQL Update 
UPDATE Customers SET City = 'Oslo';
UPDATE Customers SET City = 'Oslo' WHERE Country = 'Norway';
UPDATE Customers SET City = 'Oslo', Country = 'Norway' WHERE CustomerID = 32;


-- SQL DELETE 
DELETE From Customers WHERE Country = 'Norway';
DELETE FROM Customers;





