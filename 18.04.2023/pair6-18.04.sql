INSERT INTO Users (first_name, last_name, email, password) VALUES
('Ali', 'Yılmaz', 'aliyilmaz@mail.com', '12345'),
('Ayşe', 'Demir', 'ayse_demir@gmail.com', 'abcde'),
('Ahmet', 'Kaya', 'ahmetkaya@hotmail.com', 'qwerty'),
('Zeynep', 'Aksoy', 'zeynep_aksoy@gmail.com', '78910'),
('Mehmet', 'Şahin', 'mehmet.sahin@outlook.com', 'pass123'),
('Nihal', 'Koç', 'nihalkoc@yahoo.com', '123456'),
('Cemal', 'Güneş', 'cemalguneshotmail.com', '54321'),
('Fatma', 'Yıldız', 'f_yildiz@mail.com', 'abc123'),
('Burak', 'Arslan', 'burak.arslan@outlook.com', 'arslan123'),
('Esra', 'Çelik', 'esracelik@yahoo.com', 'qwe123');

INSERT INTO Addresses (user_id, country, city, district, street) VALUES
(1, 'Türkiye', 'İstanbul', 'Kadıköy', 'Moda Caddesi No:5'),
(2, 'Türkiye', 'Ankara', 'Çankaya', 'Kızılay Meydanı No:10'),
(3, 'Türkiye', 'İzmir', 'Bornova', 'Ege Üniversitesi Kampüsü'),
(4, 'Türkiye', 'Antalya', 'Konyaaltı', 'Antalya Plajı'),
(5, 'Türkiye', 'Bursa', 'Osmangazi', 'Uludağ Üniversitesi'),
(6, 'Türkiye', 'Adana', 'Çukurova', 'Çukurova Üniversitesi'),
(7, 'Türkiye', 'Eskişehir', 'Tepebaşı', 'Anadolu Üniversitesi'),
(8, 'Türkiye', 'İstanbul', 'Üsküdar', 'Bağlarbaşı Mahallesi No:20'),
(9, 'Türkiye', 'İzmir', 'Karşıyaka', 'Göztepe Parkı'),
(10, 'Türkiye', 'Antalya', 'Muratpaşa', 'Antalya Kent Meydanı');

INSERT INTO Products (product_name, price) VALUES
('Akıllı Telefon', 1500.00),
('Bilgisayar', 4000.00),
('Tablet', 1000.00),
('Kulaklık', 200.00),
('Hoparlör', 500.00),
('Televizyon', 3000.00),
('Kamera', 2500.00),
('Masaüstü Lambası', 100.00),
('Masa Tenisi Masası', 1500.00),
('Kanepe', 2500.00);

INSERT INTO ProductAttributes (attribute_name) VALUES
('Renk'),
('Boyut'),
('Ağırlık'),
('Marka'),
('Model'),
('Malzeme'),
('Garanti'),
('Stok Durumu'),
('Bağlantı'),
('Pil Ömrü');

INSERT INTO ProductVariations (product_id, attribute_id, value) VALUES
(1, 1, 'Mavi'),
(1, 1, 'Kırmızı'),
(1, 1, 'Yeşil'),
(1, 2, 'S'),
(1, 2, 'M'),
(1, 2, 'L'),
(2, 1, 'Siyah'),
(2, 1, 'Beyaz'),
(2, 1, 'Gri'),
(2, 2, 'XS'),
(2, 2, 'S');


INSERT INTO ProductDiscounts (product_id, discount_amount, start_date, end_date) VALUES
(1, 5.50, '2023-04-01', '2023-04-30'),
(2, 10.00, '2023-03-15', '2023-03-31'),
(3, 2.25, '2023-04-20', '2023-05-15');

INSERT INTO Suppliers (supplier_name) VALUES
('ABC Tekstil'),
('DEF Ayakkabı'),
('GHI Kırtasiye'),
('JKL Elektronik'),
('MNO Mobilya'),
('PQR Gıda'),
('STU Kozmetik'),
('VXY Aksesuar'),
('ZAB Giyim'),
('CDE Oyuncak');

INSERT INTO ProductSupplier (product_id, supplier_id, supplier_price) VALUES
(1, 1, 45.00),
(1, 2, 50.00),
(1, 3, 55.00),
(2, 4, 150.00),
(2, 5, 170.00),
(2, 6, 180.00),
(3, 7, 10.50),
(3, 8, 11.00),
(3, 9, 12.00);

INSERT INTO Orders (user_id, order_date) VALUES
(1, '2023-04-01'),
(2, '2023-04-15'),
(3, '2023-04-20'),
(1, '2023-04-25'),
(2, '2023-04-30');

INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 1, 2, 50.00),
(1, 3, 1, 12.00),
(2, 2, 1, 170.00),
(2, 3, 2, 11.00),
(2, 1, 1, 55.00);


INSERT INTO ProductReviews (product_id, user_id, review_text, review_date)
VALUES (1, 1, 'Ürün çok iyi.', '2022-02-20'),
       (2, 2, 'Ürün fiyatına göre kaliteli değil.', '2022-03-15'),
       (3, 3, 'Ürün beklediğimden çok daha kaliteli çıktı.', '2022-04-05');


INSERT INTO ReviewReplies (review_id, user_id, reply_text, reply_date)
VALUES (1, 2, 'Ben de çok memnun kaldım.', '2022-02-21'),
       (2, 1, 'Bunun sebebi ucuz malzeme kullanımı olabilir.', '2022-03-17'),
       (3, 2, 'Gerçekten çok sevindim, umarım uzun süre kullanabilirsiniz.', '2022-04-06');
	   
	   
INSERT INTO Invoices (order_id, invoice_date, total_amount) VALUES
(1, '2023-04-17', 180.00),
(2, '2023-04-16', 246.00),
(3, '2023-04-15', 82.00);

INSERT INTO Payments (invoice_id, payment_amount, payment_date) VALUES
(1, 180.00, '2023-04-17'),
(2, 123.00, '2023-04-17'),
(3, 82.00, '2023-04-17');

INSERT INTO Installments (payment_id, installment_amount, installment_date) VALUES
(1, 180.00, '2023-04-17'),
(2, 41.00, '2023-04-24'),
(2, 41.00, '2023-05-01'),
(2, 41.00, '2023-05-08'),
(2, 41.00, '2023-05-15'),
(3, 82.00, '2023-04-17');

INSERT INTO Returns (order_id, return_date, return_reason) VALUES
(1, '2022-03-15', 'Ürün beklediğimden farklı çıktı.'),
(2, '2022-04-02', 'Üründe hasar mevcut.'),
(3, '2022-05-10', 'Ürün istediğim gibi çalışmıyor.');
