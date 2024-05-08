-- USE DB FPTShopManagement
USE [FPTShopManagement]
-- Insert data tblUsers
INSERT INTO tblUsers VALUES('ad1', 'admin', '1', 'AD'),
						   ('ad2', 'Dan Thu', '1', 'AD'),
						   ('ad3', 'Minh Quyen', '1', 'AD'),
						   ('ad4', 'Khanh Hung', '1', 'AD'),
						   ('us1', 'Quy Duc', '1', 'US')
-- Insert data tblProducts
INSERT INTO tblProducts (productID, productName, category, brand, [description], price, [image])
VALUES
('L1', 'Dell Laptop', 'Laptops', 'Dell', 'Dell laptop description', 1000, 'https://product.hstatic.net/200000722513/product/pherals_latop_latitude_3520_gallery_5_ce328dd2d885438db9a3b46fff39cc48_211cb71c3c384326b0b8ac43943f0b89_1024x1024.png'),
('L2', 'Acer Laptop', 'Laptops', 'Acer', 'Acer laptop description', 900, 'https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(5):fill(white)/fptshop.com.vn/Uploads/Originals/2022/3/7/637822560588852335_acer-aspire-3-a315-58-bac-1.jpg'),
('L3', 'Asus Laptop', 'Laptops', 'Asus', 'Asus laptop description', 1100, 'https://www.chonluachuan.com/wp-content/uploads/2022/03/laptop-asus-loai-nao-tot-08.jpg'),
('P1', 'Samsung Phone', 'Phones', 'Samsung', 'Samsung phone description', 800, 'https://m.media-amazon.com/images/I/71NiGVS1mrL._AC_UF1000,1000_QL80_DpWeblab_.jpg'),
('P2', 'Xiaomi Phone', 'Phones', 'Xiaomi', 'Xiaomi phone description', 700, 'https://cdn.tgdd.vn/Products/Images/42/298538/xiaomi-14-green-thumbnew-600x600.jpg'),
('P3', 'Apple Phone', 'Phones', 'Apple', 'Apple phone description', 1200, 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-card-40-iphone15prohero-202309_FMT_WHH?wid=508&hei=472&fmt=p-jpg&qlt=95&.v=1693086369818'),
('A1', 'Headphones', 'Accessories', 'Headphones', 'Headphones description', 200, 'https://lh3.googleusercontent.com/proxy/28pSSimB3RzeiRWwnTBsOIOh8ITkeMps1eshKW4yH9PNuVTy9TTjApnS3LT9Z01YuNn_YTEybw8avZfDNUlFETCkwiNIe60d30XOFyeaYxkVscjCol45Ea32H5EXeBad2YpBo8FVNh7v'),
('A2', 'Keyboard', 'Accessories', 'Keyboard', 'Keyboard description', 50, 'https://laptop88.vn/media/news/2806_cau-tao-ban-phim-co.jpg'),
('A3', 'Mouse', 'Accessories', 'Mouse', 'Mouse description', 30, 'https://catthanh.com/1_html/img/product_img/thum/1445173615_chuot-may-tinh.jpg');
-- Insert data tblOrders
-- Insert data into tblOrders
INSERT INTO tblOrders (orderID, dateBuy, total, userID, phone, [address])
VALUES
(1, '2024-05-10 10:00:00', 150, 'us1', '1234567890', '123 Di An Street'),
(2, '2024-05-11 11:00:00', 200, 'us1', '9876543210', '456 Thu Thiem Street'),
(3, '2024-05-12 12:00:00', 300, 'us1', '5551234567', '789 Go Vap Street'),
(4, '2024-05-13 13:00:00', 250, 'us1', '3339876543', '321 Nha Be Street'),
(5, '2024-05-14 14:00:00', 180, 'us1', '9998887776', '654 Thu Duc Street'),
(6, '2024-05-15 15:00:00', 220, 'us1', '2223334445', '987 Cu Chi Street'),
(7, '2024-05-16 16:00:00', 270, 'us1', '7776665554', '234 Ba Son Street'),
(8, '2024-05-17 17:00:00', 190, 'us1', '4445556667', '567 Landmark Street'),
(9, '2024-05-18 18:00:00', 280, 'us1', '8889990001', '890 Vinhomes Street'),
(10, '2024-05-19 19:00:00', 320, 'us1', '1112223334', '012 Sala Street');

-- Insert data tblOrderDetails
INSERT INTO tblOrderDetails (productID, orderID, price, quantity, total)
VALUES
('L1', 1, 1000, 1, 1000), -- Example order detail for a laptop
('P1', 2, 800, 2, 1600),   -- Example order detail for a phone
('A1', 3, 200, 1, 200),    -- Example order detail for an accessory
('L2', 4, 900, 1, 900),    -- Example order detail for a laptop
('P2', 5, 700, 3, 2100),   -- Example order detail for a phone
('A2', 6, 50, 2, 100),     -- Example order detail for an accessory
('L3', 7, 1100, 1, 1100),  -- Example order detail for a laptop
('P3', 8, 1200, 1, 1200),  -- Example order detail for a phone
('A3', 9, 30, 3, 90),      -- Example order detail for an accessory
('P1', 10, 800, 1, 800);   -- Example order detail for a phone

-- UPDATE total table tblOrderDetails
UPDATE tblOrderDetails 
SET total = price * quantity


