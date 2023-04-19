--90
SELECT SUM(unit_price) as "Toplam Ciro" from order_details

--91
SELECT AVG(unit_price) as "Ortalama Ürün Fiyatı" from products

--92
SELECT product_name FROM products ORDER BY unit_price DESC LIMIT 1;

--93
SELECT product_name FROM products ORDER BY unit_price ASC LIMIT 1;

--94
SELECT contact_name FROM customers ORDER BY LENGTH(contact_name) DESC LIMIT 1

--95
SELECT first_name, last_name, date_part('year', CURRENT_DATE) -
							  date_part('year', birth_date) AS "age" FROM EMPLOYEES
							  
--96 -96. Hangi üründen toplam kaç adet alınmış..?
SELECT  product_name, SUM(quantity) from order_details o 
INNER JOIN products p on o.product_id = p.product_id 
GROUP BY product_name

--97
SELECT  product_name, SUM(o.unit_price) from order_details o 
INNER JOIN products p on o.product_id = p.product_id
GROUP BY product_name

--98
SELECT  category_name, SUM(units_in_stock) from categories c 
INNER JOIN products p on c.category_id = p.category_id 
GROUP BY category_name

--99
SELECT product_name, SUM(quantity) AS "toplam" from order_details o 
INNER JOIN products p on o.product_id = p.product_id 
GROUP BY product_name HAVING SUM(quantity) > 1000
 							
--100
SELECT contact_name from customers c 
INNER JOIN orders o on c.customer_id = o.customer_id 
INNER JOIN order_details od on o.order_id = od.order_id
GROUP BY contact_name HAVING SUM(quantity) = 0

--101
SELECT company_name, product_name from products p 
INNER JOIN suppliers s on p.supplier_id = s.supplier_id 
GROUP BY company_name, product_name

--102
SELECT o.order_id, s.company_name, o.shipped_date from suppliers sp
INNER JOIN products p on p.supplier_id = sp.supplier_id
INNER JOIN order_details od on od.product_id = p.product_id
INNER JOIN orders o on o.order_id = od.order_id
INNER JOIN shippers s on o.ship_via = s.shipper_id

--103
SELECT contact_name, od.order_id from customers c 
INNER JOIN orders o on c.customer_id = o.customer_id 
INNER JOIN order_details od on o.order_id = od.order_id
GROUP BY contact_name, od.order_id

--104
SELECT first_name, SUM(quantity) from orders o 
INNER JOIN employees e on e.employee_id = o.employee_id 
INNER JOIN order_details od on o.order_id = od.order_id
GROUP BY first_name

--105
SELECT first_name, SUM(quantity) from orders o 
INNER JOIN employees e on e.employee_id = o.employee_id 
INNER JOIN order_details od on o.order_id = od.order_id
GROUP BY first_name ORDER BY SUM(quantity) DESC LIMIT 1

--106
SELECT order_id, (first_name,last_name) AS "Employee Info", contact_name from orders o 
INNER JOIN employees e on o.employee_id = e.employee_id 
INNER JOIN customers c on o.customer_id = c.customer_id
GROUP BY order_id, first_name, last_name, contact_name

--107
SELECT product_name,category_name, company_name from products p 
INNER JOIN categories c on p.category_id = c.category_id 
INNER JOIN suppliers s on p.supplier_id = s.supplier_id
GROUP BY product_name,category_name, company_name

--108
SELECT o.order_id, c.contact_name, (first_name,last_name) AS "Employee Info", 
o.order_date, s.company_name, p.product_name, od.quantity, od.unit_price, ca.category_name, sp.company_name
from orders o 
INNER JOIN order_details od on o.order_id = od.order_id 
INNER JOIN employees e on o.employee_id = e.employee_id
INNER JOIN customers c on o.customer_id = c.customer_id
INNER JOIN products p on od.product_id = p.product_id 
INNER JOIN suppliers sp on p.supplier_id = sp.supplier_id
INNER JOIN categories ca on p.category_id = ca.category_id
INNER JOIN shippers s on o.ship_via=s.shipper_id
GROUP BY o.order_id, c.contact_name, (first_name,last_name), o.order_date, s.company_name,
		 p.product_name, od.quantity, od.unit_price, ca.category_name, sp.company_name

--109
SELECT c.category_name, p.units_in_stock from products p INNER JOIN categories c on p.category_id = c.Category_id
WHERE p.units_in_stock = 0


	
