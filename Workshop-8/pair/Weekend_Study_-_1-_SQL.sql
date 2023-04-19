-------------------------     HAFTA SONU ÖDEVİ     -----------------------------------

--10
SELECT COUNT(*) from products 
WHERE unit_price < 30

--11
SELECT LOWER(product_name), unit_price from products 
ORDER BY unit_price DESC

--12
SELECT CONCAT(first_name, ' ', last_name) from employees

--13
SElECT company_name, region from suppliers 
WHERE region IS NUll

--14
SElECT company_name, region from suppliers 
WHERE region IS NOT NUll

--15
SELECT CONCAT('TR','_', UPPER(product_name)) from products 

--16
SELECT CONCAT('TR','_', UPPER(product_name)), unit_price from products 
WHERE unit_price < 20 

--17
SELECT product_name, unit_price from products
ORDER BY unit_price DESC

--18
SELECT product_name, unit_price from products O
RDER BY unit_price DESC LIMIT 10

--19
SELECT product_name, unit_price from products
WHERE unit_price > (SELECT AVG(unit_price) from products)

--20
SELECT SUM(unit_price) from products 
WHERE units_in_stock != 0

--21
SELECT SUM(units_in_stock) + SUM(discontinued) from products

--22
SELECT c.category_name, p.product_name from products p 
INNER JOIN categories c ON p.category_id = c.category_id

--23
SELECT c.category_name, SUM(p.unit_price) AS "TOPLAM" from products p 
INNER JOIN categories c ON p.category_id = c.category_id 
GROUP BY c.category_name, p.unit_price

--24
SELECT p.product_name, p.unit_price, c.category_name from products p 
INNER JOIN categories c ON p.category_id = c.category_id 
GROUP BY p.product_name, p.unit_price, c.category_name
ORDER BY unit_price DESC LIMIT 1

--25
SELECT p.product_name, c.category_name, s.company_name from products p 
INNER JOIN categories c ON p.category_id = c.category_id 
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
GROUP BY p.product_name, c.category_name, s.company_name, units_on_order
ORDER BY units_on_order DESC LIMIT 1

--26
SELECT product_id, product_name, company_name, phone from products p 
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE units_in_stock != 0
GROUP BY product_id, product_name, company_name, phone

--27
SELECT ship_address, first_name, last_name from orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
WHERE order_date BETWEEN '01/03/1998' AND '31/03/1998'
GROUP BY ship_address, first_name, last_name

--28
SELECT SUM(quantity) from orders o
INNER JOIN order_details od ON o.order_id = od.order_id
WHERE order_date BETWEEN '01/02/1997' AND '28/02/1997'

--29
SELECT SUM(quantity) from orders o
INNER JOIN order_details od ON o.order_id = od.order_id
WHERE order_date BETWEEN '01/01/1998' AND '31/12/1998' AND ship_city = 'London'

--30
SELECT contact_name, c.phone from orders o
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN customers c ON c.customer_id = o.customer_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997'
GROUP BY contact_name, c.phone

--31
SELECT SUM(quantity) from orders o
INNER JOIN order_details od ON o.order_id = od.order_id
WHERE freight > 40

--32
SELECT ship_city, contact_name from orders o
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN customers c ON c.customer_id = o.customer_id
WHERE freight > 40
GROUP BY ship_city, contact_name

--33
SELECT order_date, ship_city, UPPER(CONCAT(first_name, ' ', last_name)) from orders o
INNER JOIN employees e ON e.employee_id = o.employee_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997'
GROUP BY order_date, ship_city, first_name, last_name 

--34
SELECT contact_name, phone  from orders o
INNER JOIN customers c ON c.customer_id = o.customer_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997'
GROUP BY contact_name, phone 

--35
SELECT order_date, contact_name, first_name, last_name from orders o
INNER JOIN customers c ON c.customer_id = o.customer_id
INNER JOIN employees e ON e.employee_id = o.employee_id
GROUP BY order_date, contact_name, first_name, last_name

--36
SELECT order_id, required_date, shipped_date from orders
WHERE shipped_date > required_date

--37
SELECT order_date, contact_name from orders o 
INNER JOIN customers c ON o.customer_id = c.customer_id
WHERE shipped_date > required_date
GROUP BY order_date, contact_name

--38
SELECT product_name, category_id, quantity from orders o 
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE o.order_id = 10248
GROUP BY product_name, category_id, quantity

--39
SELECT product_name, company_name from suppliers s
INNER JOIN products p ON s.supplier_id = p.supplier_id
INNER JOIN order_details od ON p.product_id = od.product_id
WHERE od.order_id = 10248
GROUP BY product_name, company_name

--40
SELECT product_name, quantity  from  orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997' AND e.employee_id=3
GROUP BY product_name, quantity

--41 
SELECT e.employee_id, CONCAT(e.first_name,' ',e.last_name) "Çalışan", p.product_name "Ürün", 
	                 od.quantity "Adet", o.order_date from employees e
INNER JOIN orders o
ON o.employee_id = e.employee_id
INNER JOIN order_details od
ON od.order_id = o.order_id
INNER JOIN products p
ON p.product_id = od.product_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997'
ORDER BY quantity DESC LIMIT 1

--42
SELECT o.employee_id, CONCAT(first_name, ' ', last_name), COUNT(*) AS "Toplam Sipariş" from  orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997'
GROUP BY o.employee_id, first_name, last_name
ORDER BY COUNT(*) DESC LIMIT 1 

--43
SELECT product_name, category_name from products p 
INNER JOIN categories c ON p.category_id = c.category_id
GROUP BY product_name, category_name, unit_price
ORDER BY unit_price DESC LIMIT 1

--44
SELECT first_name, last_name, order_date, order_id from employees e 
INNER JOIN orders o ON e.employee_id = o.employee_id
GROUP BY first_name, last_name, order_date, order_id
ORDER BY order_date ASC

--45
SELECT AVG(od.unit_price), od.order_id from order_details od
INNER JOIN orders o ON od.order_id = o.order_id
INNER JOIN products p ON p.product_id = od.product_id
GROUP BY od.unit_price, od.order_id, units_on_order
ORDER BY units_on_order DESC LIMIT 5

--46
SELECT product_name, category_name, quantity, order_date from categories c 
INNER JOIN products p ON c.category_id = p.category_id
INNER JOIN order_details od ON p.product_id = od.product_id
INNER JOIN orders o ON o.order_id = od.order_id
WHERE order_date BETWEEN '01/01/1998' AND '31/01/1998' 
GROUP BY product_name, category_name, quantity, order_date
ORDER BY product_name ASC

--47 
SELECT order_id, quantity from order_details
WHERE quantity > (SELECT AVG(quantity) from order_details)

--48
SELECT product_name, c.category_name, company_name from order_details od
INNER JOIN products p ON od.product_id = p.product_id
INNER JOIN categories c ON p.category_id = c.category_id
INNER JOIN suppliers s ON s.supplier_id = p.supplier_id
GROUP BY product_name, c.category_name, company_name, quantity
ORDER BY quantity DESC LIMIT 1

--49
SELECT COUNT(DISTINCT country) from customers

--50
SELECT SUM(quantity) from order_details od
INNER JOIN orders o ON od.order_id = o.order_id
WHERE order_date > '01/01/1998'
GROUP BY quantity

--51
SELECT product_name, category_id, quantity from orders o 
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE o.order_id = 10248
GROUP BY product_name, category_id, quantity

--52
SELECT product_name, company_name from suppliers s
INNER JOIN products p ON s.supplier_id = p.supplier_id
INNER JOIN order_details od ON p.product_id = od.product_id
WHERE od.order_id = 10248
GROUP BY product_name, company_name

--53
SELECT product_name, quantity  from  orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997' AND e.employee_id=3
GROUP BY product_name, quantity

--54 
SELECT e.employee_id, CONCAT(e.first_name,' ',e.last_name) "Çalışan", p.product_name "Ürün", 
	                 od.quantity "Adet", o.order_date from employees e
INNER JOIN orders o
ON o.employee_id = e.employee_id
INNER JOIN order_details od
ON od.order_id = o.order_id
INNER JOIN products p
ON p.product_id = od.product_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997'
ORDER BY quantity DESC LIMIT 1

--55
SELECT e.employee_id, CONCAT(first_name, ' ', last_name)  from  orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN order_details od ON o.order_id = od.order_id
WHERE order_date BETWEEN '01/01/1997' AND '31/12/1997'
GROUP BY e.employee_id, first_name, last_name, quantity
ORDER BY quantity DESC LIMIT 1

--56
SELECT product_name, category_name from products p 
INNER JOIN categories c ON p.category_id = c.category_id
GROUP BY product_name, category_name, unit_price
ORDER BY unit_price DESC LIMIT 1

--57
SELECT first_name, last_name, order_date, order_id from employees e 
INNER JOIN orders o ON e.employee_id = o.employee_id
GROUP BY first_name, last_name, order_date, order_id
ORDER BY order_date ASC

--58
SELECT AVG(od.unit_price), od.order_id from order_details od
INNER JOIN orders o ON od.order_id = o.order_id
INNER JOIN products p ON p.product_id = od.product_id
GROUP BY od.unit_price, od.order_id, units_on_order
ORDER BY units_on_order DESC LIMIT 5

--59
SELECT product_name, category_name, quantity, order_date from categories c 
INNER JOIN products p ON c.category_id = p.category_id
INNER JOIN order_details od ON p.product_id = od.product_id
INNER JOIN orders o ON o.order_id = od.order_id
WHERE order_date BETWEEN '01/01/1998' AND '31/01/1998' 
GROUP BY product_name, category_name, quantity, order_date

--60
SELECT order_id, quantity from order_details
WHERE quantity > (SELECT AVG(quantity) from order_details)

--61
SELECT product_name, c.category_name, company_name from order_details od
INNER JOIN products p ON od.product_id = p.product_id
INNER JOIN categories c ON p.category_id = c.category_id
INNER JOIN suppliers s ON s.supplier_id = p.supplier_id
GROUP BY product_name, c.category_name, company_name, quantity
ORDER BY quantity DESC LIMIT 1

--62
SELECT COUNT(country) from customers

--63 Hangi ülkeden kaç müşterimiz var
SELECT country, COUNT(*) AS "TOPLAM" from customers
GROUP BY country

--64
SELECT SUM(quantity) from order_details od
INNER JOIN orders o ON od.order_id = o.order_id
WHERE order_date > '01/01/1998'
GROUP BY quantity

--65
SELECT SUM(od.quantity * od.unit_price * (1.0 - od.discount)) AS "Ciro" from order_details od
INNER JOIN orders o ON o.order_id = od.order_id 
WHERE product_id = 10 AND o.order_date BETWEEN '01/04/1998' AND '30/06/1998'

--66
SELECT first_name,last_name, COUNT(od.order_id) AS "Toplam Siparis" from orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN order_details od ON o.order_id = od.order_id
GROUP BY first_name, last_name, od.order_id, e.employee_id
ORDER BY e.employee_id ASC

--67
SELECT c.contact_name from customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id
WHERE order_id IS null
GROUP BY c.contact_name, c.customer_id, order_id

--68
SELECT company_name, contact_name, address, city, country from customers
WHERE country = 'Brazil'

--69
SELECT company_name, contact_name, address, city, country from customers
WHERE NOT country = 'Brazil'

--70
SELECT customer_id, contact_name, country from customers
WHERE country = 'Spain' OR country = 'France' OR country = 'Germany'
   
--71
SELECT customer_id, contact_name, fax from customers
WHERE fax IS NULL

--72
SELECT customer_id, contact_name, city from customers
WHERE city = 'London' OR city = 'Paris' 

--73
SELECT customer_id, contact_name, contact_title, city from customers
WHERE city = 'México D.F.' AND contact_title = 'Owner'

--74
SELECT product_name, unit_price from products
WHERE product_name LIKE 'C%'

--75
SELECT first_name, last_name, birth_date from employees
WHERE first_name LIKE 'A%'

--76
SELECT company_name, contact_name from customers
WHERE company_name LIKE '%Restaurant%'

--77
SELECT product_name, unit_price from products
WHERE unit_price > 50 AND unit_price <100

--78
SELECT order_id, order_date from orders
WHERE order_date BETWEEN '01/07/1996' AND '31/12/1996'

--79
SELECT customer_id, contact_name, country from customers
WHERE country = 'Spain' OR country = 'France' OR country = 'Germany'

--80
SELECT customer_id, contact_name, fax from customers
WHERE fax IS NULL
