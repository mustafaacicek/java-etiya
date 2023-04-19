Select * from products

-- 1
SELECT product_name, quantity_per_unit from products

-- 2
SELECT product_id, product_name from products  WHERE discontinued = 0

-- 3
SELECT product_id, product_name from products  WHERE discontinued = 0

-- 4
SELECT product_id, product_name, unit_price from products WHERE unit_price < 20

-- 5
SELECT product_id, product_name, unit_price from products WHERE unit_price BETWEEN 15 AND 25

-- 6
SELECT product_name, units_on_order, units_in_stock from products WHERE units_in_stock < units_on_order

-- 7
SELECT product_name from products WHERE product_name LIKE 'A%'

-- 8
SELECT product_name from products WHERE product_name LIKE '%i'

----- BİZİM ÖRNEKLERİMİZ ------------------------------------------------------------------------

-- 1
SELECT supplier_id, category_id, product_name from products -- Satıcı kimliği, ürün kategori kimliği ve ürün ismi listelenmiştir.

-- 2
SELECT product_name, unit_price from products  WHERE unit_price < 15 -- unit price değeri 15 den küçük olanlara göre product name ve unit price listelenmiştir.

-- 3
SELECT product_name, units_in_stock from products  WHERE units_in_stock > 50 -- units in stock değeri 50 den büyük olanlara göre product name ve unit in stock listelenmiştir.

-- 4
SELECT SUM(unit_price) as "Unit Price Toplamı(Bellow 20)" from products WHERE unit_price < 20 -- unit price değeri 20 den küçük olan ürünlerin unit price değerleri toplanarak listelenmiştir.

-- 5
SELECT AVG(unit_price) as "Unit Price Ortalama(Between 5 to 20)" from products WHERE unit_price BETWEEN 5 AND 20 -- unit price değeri 5 ile 20 arasındaki ürünlerin unit price değerlerinin ortalaması listelenmiştir.

-- 6
SELECT product_name, units_on_order, units_in_stock from products WHERE units_in_stock < units_on_order

-- 7
SELECT product_name from products WHERE product_name LIKE '%ce%' -- product name içerisinde 'ce' geçen product nameler listelenmiştir.

-- 8
SELECT category_id, product_name from products WHERE product_name LIKE '%d' -- product name içerisinde sonu 'd'ile biten category id ve product name listelenmiştir.




