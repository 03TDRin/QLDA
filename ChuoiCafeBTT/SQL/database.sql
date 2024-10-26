CREATE DATABASE ChuoiCafe;
USE ChuoiCafe;

CREATE TABLE account (
    uID INT AUTO_INCREMENT PRIMARY KEY,
    user NVARCHAR(255) NULL,
    pass NVARCHAR(255) NULL,
    isSell INT NULL
);

INSERT INTO account (user, pass, isSell) VALUES
(N'ADV', N'TB', 1),
(N'ThD', N'Q2', 1);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT NULL,
    image TEXT NULL,
    price DECIMAL(10,1) NULL,
    quantity int,
    title TEXT NULL,
    description TEXT NULL,
    cateID INT NULL,
    sell_ID INT NULL
);

INSERT INTO product (name, image, price, quantity, title, description, cateID, sell_ID) VALUES
(N'Cà Phê', 'Images/cafe-den.jpg', 12.0, 10, N'Cà Phê Đen', N'Cà Phê Đen Nguyên Chất', 1, 1),
(N'Cà Phê Sữa', 'Images/cafe-sua.jpg', 22.0, 13, N'Cà Phê Sữa Đá', N'Cái khéo trong sự kết hợp giữa các nguyên liệu cao cấp: cà phê phin, sữa béo và sữa đặc cho ra đời một thức uống tròn vị đắng, ngọt, bùi.', 1, 1),
(N'Bạc Xỉu', 'Images/bac-xiu.jpg', 22.0, 10, N'Bạc Xỉu Đá', N'Kết hợp cà phê phin và sữa đặc, tạo ra hương vị đậm đà, mềm mịn, thơm ngon.', 1, 1),
(N'Trà Hạt Sen', 'Images/tra-sen-vang.jpg', 24.0, 10, N'Trà Sen Vàng Đá', N'Trà hạt sen là một loại trà được làm từ hoa sen khô và hạt sen, tạo ra một đồ uống thơm ngon, nhẹ nhàng và đầy sức sống. ', 2, 1),
(N'Trà Đào', 'Images/tra-dao.jpg', 25.0, 20, N'Trà Đào Đá', N'Trà Đào mang đến hương vị tươi mới, ngọt ngào của trái đào cùng với hậu vị thanh mát của trà, tạo nên một lựa chọn thú vị và sảng khoái cho mùa hè.', 2, 1),
(N'Trà Atiso Đỏ', 'Images/tra-atiso-do.jpg', 28.0, 8, N'Trà Atiso Đỏ Nguyên Chất', N'Trà Atiso Đỏ là loại trà được chế biến từ lá atiso đỏ, một loại thảo mộc tự nhiên giàu chất chống oxy hóa và có nhiều lợi ích cho sức khỏe.', 2, 1),
(N'Trà Sữa Thái', 'Images/tra-sua-thai-do.jpg', 30.0, 18, N'Trà Sữa Thái Đỏ', N'Được chế biến từ trà đen hoặc trà olong kết hợp với sữa đặc và đá bào, Trà Sữa Thái thường có hương vị ngọt ngào, béo ngậy và đậm đà.', 3, 2),
(N'Trà Sữa Đường Đen', 'Images/tra-sua-duong-den.jpg', 28.0, 23, N'Trà Sữa Đường Đen Trân Châu', N'Trà Sữa Trân Châu Đường Đen là một loại đồ uống phổ biến trong thế giới trà sữa.', 3, 2),
(N'Trà Sữa Socola', 'Images/tra-sua-socola.jpg', 33.0, 21, N'Trà Sữa Socola Kem', N'Trà Sữa Socola là một biến thể độc đáo của trà sữa, kết hợp giữa hương vị truyền thống của trà sữa với vị socola đắng ngọt. ', 3, 2),
(N'Americano', 'Images/americano.jpg', 29.0, 20, N'Americano Nóng', N'Americano mang lại hương vị đậm đà và mạnh mẽ, nhưng vẫn giữ được tính cân đối và dễ uống.', 1, 2),
(N'Cappuccino', 'Images/cappuccino.jpg', 29.0, 20, N'Cappuccino Nóng', N'Cappuccino có lớp bọt sữa đặc trưng ở trên cùng, tạo nên một hương vị cân bằng giữa cà phê đậm đà và sự nhẹ nhàng của sữa.', 1, 2),
(N'Espresso', 'Images/espresso.jpg', 27.0, 20, N'Espresso Nóng', N'Espresso là loại cà phê được chế biến bằng cách ép nước nóng dưới áp lực cao qua lớp cà phê bột mịn, tạo ra một đồng nhất, hương vị đậm đà và cơ động. ', 1, 2),
(N'Trà Sữa Bạc Hà', 'Images/tra-sua-bac-ha.jpg', 32.0, 15, N'Trà Sữa Bạc Hà Đá', N'Trà Sữa Bạc Hà là một loại đồ uống phổ biến trong thế giới trà sữa, kết hợp giữa hương vị thơm mát của bạc hà và sự ngọt ngào của trà sữa. ', 3, 1),
(N'Trà Chanh Dây', 'Images/tra-chanh-day.jpg', 27.0, 15, N'Trà Chanh Dây Đá', N'hường được pha lạnh và có thêm đường hoặc mật ong để tăng thêm hương vị ngọt ngào, Trà Chanh Dây mang lại cảm giác tươi mới, sảng khoái và bổ dưỡng. ', 2, 2),
(N'Trà Gừng', 'Images/tra-gung.jpg', 22.0, 18, N'Trà Gừng Nóng', N'Hương vị đặc trưng của gừng, với sự hòa quện của hương thơm từ trà, tạo ra một đồ uống ấm áp và sảng khoái.', 2, 2),
(N'Trà Vải', 'Images/tra-vai.jpg', 26.0, 15, N'Trà Hạt Vải Đá', N'Trà Hạt Vải là một loại đồ uống trà tự nhiên phổ biến, được chế biến từ lá trà và hạt vải tự nhiên. ', 2, 2),
(N'Latte', 'Images/latte.jpg', 24.0, 15, N'Latte Nóng', N'Đặc trưng với hương vị đậm đà của cà phê espresso và sự mềm mịn của sữa, Latte thường được thưởng thức trong ly lớn và là một lựa chọn phổ biến cho những người muốn thưởng thức hương vị cà phê nhưng không quá mạnh mẽ như espresso. ', 1, 1),
(N'Yogurt Trái Cây', 'Images/yogurt-trai-cay.jpg', 28.0, 15, N'Yogurt Trái Cây', N'Yogurt Trái Cây là một loại đồ uống lành mạnh và bổ dưỡng, được làm từ sự kết hợp của sữa chua và trái cây tươi.', 4, 1),
(N'Soda Blue Ocean', 'Images/soda-blue-ocean.jpg', 35.0, 5, N'Soda Blue Ocean Đá', N'Đặc trưng với màu xanh biển sâu và hương vị ngọt ngào, sảng khoái, Soda Blue Ocean là một lựa chọn phổ biến cho những buổi tiệc và sự kiện giải trí.', 4, 2);

CREATE TABLE Category (
    cID INT NOT NULL PRIMARY KEY,
    cname NVARCHAR(50) NOT NULL
);

INSERT INTO Category (cID, cname) VALUES
(1, N'Cà Phê'),
(2, N'Sữa Tươi'),
(3, N'Trà Sữa'),
(4, N'Khác');

CREATE TABLE transaction (
    tID INT AUTO_INCREMENT PRIMARY KEY,
    cusname NVARCHAR(255) NOT NULL,
    pID INT NOT NULL,
    quanti INT NOT NULL,
    Date timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pID) REFERENCES product(id)
);

INSERT INTO transaction (cusname, pID, quanti, Date) VALUES
(N'Anh Đào', 2, 2,'2023-11-19 14:45:32'),
(N'Hà Đông', 12, 5,'2023-12-11 11:45:32'),
(N'Nguyễn Duy', 18, 8,'2024-1-12 11:30:32'),
(N'Nguyễn Lê Dũng Chí', 11, 12,'2024-2-14 11:30:32');







