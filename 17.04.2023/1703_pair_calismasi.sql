	-- 17.04.2023 Pair Çalışması --

-- Example - 1 (Her sipariş için, ciro hesabı)
SELECT order_id, SUM(unit_price * quantity * (1 - discount)), 2 AS Subtotal
FROM order_details 
GROUP BY order_id 
ORDER BY order_id;

-- Example - 2 (Satışı durdurulmamış ürünlerin detay bilgisi)
SELECT distinct p.*, c.category_name
FROM categories c INNER JOIN products p ON c.category_id = p.category_id
WHERE p.Discontinued = 0 ORDER BY p.Product_Name;

-- Example - 3 (1997 yılı mart ayındaki siparişleri ve satılan ürünlerin hangi çalışan tarafından satıldığını listele)
SELECT e.first_name, o.order_id FROM employees e 
INNER JOIN orders o On e.employee_id = o.employee_id 
WHERE order_date BETWEEN '01/03/1997' AND '31/03/1997'

-- Example - 4 (En çok satılan 5 ürün)
SELECT p.product_name, SUM(od.quantity) AS toplam 
FROM order_details od
INNER JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY toplam DESC LIMIT 5

-- Example - 5 (7 numaralı ID ye sahip çalışanın 1996 yılında sattığı ürünlerden elde edilen kar)
SELECT e.employee_id, e.first_name, SUM(p.unit_price * od.quantity * (1 - discount)), 2 AS ciro
FROM  orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE order_date BETWEEN '01/01/1996' AND '31/12/1996' AND e.employee_id = 7
GROUP BY e.employee_id, e.first_name

-- Example - 6 (7 numaralı ID ye sahip çalışandan ürün alan müşteriler)
SELECT e.employee_id, c.contact_name
FROM  orders o
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN customers c ON c.customer_id = o.customer_id
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE e.employee_id = 7
GROUP BY e.employee_id, c.contact_name

-- Example - 7 (1996 yılında ürün alan müşterilerin aldıkları ürünlerin fiyatlarının azalana ve müşterilerin isimlerinin artana göre sıralanması)
SELECT c.contact_name, p.unit_price
FROM  orders o
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN customers c ON c.customer_id = o.customer_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE order_date BETWEEN '01/01/1996' AND '31/12/1996'
GROUP BY c.contact_name, p.unit_price
ORDER BY p.unit_price DESC, c.contact_name ASC

-- Example - 8 (1998 yılında satış yapan çalışanların toplam satış sayılarını azalana göre sıralanması)
SELECT e.first_name, e.last_name, COUNT(*) AS total
FROM  orders o
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN products p ON od.product_id = p.product_id
WHERE order_date BETWEEN '01/01/1998' AND '31/12/1998'
GROUP BY e.first_name, e.employee_id, e.last_name
ORDER BY total DESC

-- Example - 9 (91 müşterim var. Sadece 89’u sipariş vermiş. Sipariş veren müşterilerden hangisi 5 numaralı çalışandan sipariş vermiştir)
SELECT CONCAT(e.first_name, ' ', e.last_name), c.contact_name from customers c
FULL OUTER JOIN orders o ON c.customer_id = o.customer_id
FULL OUTER JOIN employees e ON e.employee_id = o.employee_id
WHERE order_id IS NOT NULL AND e.employee_id = 5
GROUP BY c.contact_name, c.customer_id, order_id, e.first_name, e.last_name

-- Example - 10 (1996 yılındaki ortalama ürün satış miktarının üzerinde sipariş sayısına sahip olan ürünleri listeleyin.)
SELECT o.order_id, SUM(od.quantity)
FROM  orders o
INNER JOIN order_details od ON o.order_id = od.order_id
WHERE quantity > (SELECT AVG(quantity) 
				  FROM order_details 
				  WHERE order_date 
				  BETWEEN '01/01/1996' AND '31/12/1996'
)
GROUP BY o.order_id

-- Example - 11 (1990 ve 1994 arasındaki çalışan bilgilerinin işe alım tarihlerine göre listelenmesi)
SELECT * 
FROM employees e
WHERE e.hire_date BETWEEN '01/01/1990' AND '31/12/1994' 
ORDER BY e.hire_date



