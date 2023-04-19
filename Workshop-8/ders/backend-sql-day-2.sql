Select * from categories
-- Veri manipülasyonu
-- Insert Into => Add => Create
Insert Into categories(category_name, description, picture) 
VALUES ('Elektronik', 'Elektrik ürünleri', null)
-- Update
Update categories
SET description = 'Deneme', category_name = 'Deneme Kategori'
WHERE category_id=11
--
-- Delete
DELETE FROM categories 
WHERE category_id >= 9
--

-- JOIN => Inner Join - Right Join - Left Join - Full Outer Join
--Ürünler, kategorilerinin bilgileriyle birlikte listelensin.
-- Alias
Select * from products p
inner join categories c
on p.category_id = c.category_id
where c.category_name LIKE '%s'
--

-- Ürünleri kategori bilgileri ile birlikte listele, product_name'i a-z sırala, 
-- koşul: category_name C ile başlamalı
Select * from products p --p => left
inner join categories c --c => right
on p.category_id = c.category_id
where c.category_name LIKE 'C%'
--asc => ascending -> artan (küçükten büyüğe a-z)
--desc=> descending -> azalan (büyükten küçüğe z-a)
ORDER BY product_name DESC


-- Tüm kategorileri ve eşleşme olan ürünleri getir
-- hangi tablodan hangi tabloya join oluyorum? left - right
Select * from products p
right join categories c
on p.category_id = c.category_id
--
Select * from categories c
inner join products p 
on c.category_id = p.category_id

Select * from categories c
left join products p 
on c.category_id = p.category_id

-- Ürünleri, supplier ve category bilgileri ile birlikte listele.
Select * from products p
inner join suppliers s
on p.supplier_id = s.supplier_id
inner join categories c
on p.category_id = c.category_id


Select * from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_details od
on o.order_id = od.order_id
inner join products p
on od.product_id = p.product_id
