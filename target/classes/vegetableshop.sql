--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `CategoryID` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`CategoryID`, `Name`, `Description`) VALUES
(1, 'Củ quả', 'Loại có thể ăn được không cần nấu'),
(2, 'Rau xanh', 'Loại dùng để làm salad hoặc súp'),
(3, 'Gia vị', 'Loại dùng để tăng hương vị món ăn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Fullname` varchar(40) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`CustomerID`, `Password`, `Fullname`, `Address`, `Username`) VALUES
(1, '1', 'Bình', 'Hà Nội', 'binh'),
(2, '1', 'Hà', 'Hà Nội', 'ha'),
(3, '1', 'Thắng', 'Hà Nội', 'thang');

-- --------------------------------------------------------


--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `STT` int(11) NOT NULL,
  `OrderID` int(10) NOT NULL,
  `VegetableID` int(10) NOT NULL,
  `Quantity` tinyint(4) NOT NULL,
  `Price` float NOT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`STT`, `OrderID`, `VegetableID`, `Quantity`, `Price`, `Date`) VALUES
(1, 1, 10, 3, 180000, '2023-05-09 23:16:15'),
(2, 2, 1, 4, 200000, '2023-05-09 23:18:07'),
(3, 2, 5, 5, 175000, '2023-05-09 23:18:07'),
(4, 2, 9, 5, 200000, '2023-05-09 23:18:07'),
(5, 2, 10, 7, 420000, '2023-05-09 23:18:07'),
(6, 2, 7, 1, 15000, '2023-05-09 23:18:07'),
(7, 3, 9, 9, 360000, '2023-05-09 23:20:02'),
(8, 3, 2, 11, 550000, '2023-05-09 23:20:02'),
(9, 3, 4, 6, 480000, '2023-05-09 23:20:02'),
(10, 3, 8, 7, 84000, '2023-05-09 23:20:02'),
(11, 3, 3, 7, 1050000, '2023-05-09 23:20:02'),
(12, 3, 10, 5, 300000, '2023-05-09 23:20:02'),
(13, 4, 1, 6, 300000, '2023-05-09 23:21:05'),
(14, 4, 2, 6, 300000, '2023-05-09 23:21:05'),
(15, 4, 8, 6, 72000, '2023-05-09 23:21:05'),
(16, 4, 10, 5, 300000, '2023-05-09 23:21:05'),
(17, 5, 3, 20, 3000000, '2023-05-09 23:21:54'),
(18, 5, 8, 1, 12000, '2023-05-09 23:21:54'),
(19, 5, 4, 1, 80000, '2023-05-09 23:21:54'),
(20, 5, 6, 1, 40000, '2023-05-09 23:21:54'),
(21, 5, 9, 1, 40000, '2023-05-09 23:21:54');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(10) NOT NULL,
  `CustomerID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Total` float NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` text NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `Date`, `Total`, `Name`, `Address`, `Phone`) VALUES
(1, 3, '2023-05-09', 180000, 'Thang', 'HaNoi', '0123456789'),
(2, 3, '2023-05-09', 1010000, 'Thang', 'HaNoi', '0123456789'),
(3, 1, '2023-05-09', 2824000, 'Binh', 'HaiDuong', '0987654321'),
(4, 2, '2023-05-09', 972000, 'Ha', 'NinhBinh', '0123456789'),
(5, 2, '2023-05-09', 3172000, 'Ha', 'BacGiang', '0987654231');


-- --------------------------------------------------------


--
-- Cấu trúc bảng cho bảng `vegetable`
--

CREATE TABLE `vegetable` (
  `VegetableID` int(10) NOT NULL,
  `CategoryID` int(10) NOT NULL,
  `Unit` varchar(20) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `Price` float NOT NULL,
  `vegetable_name` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `vegetable`
--

INSERT INTO `vegetable` (`VegetableID`, `CategoryID`, `Unit`, `Amount`, `Image`, `Price`, `vegetable_name`, `Description`) VALUES
(1, 1, 'kg', 90, 'tomato.jpg', 50000, 'Cà chua', 'Cà chua là một nguồn quan trọng của hương vị. Chúng được tiêu thụ theo nhiều cách khác nhau: sống hoặc nấu chín, và trong nhiều món ăn, nước sốt, salad và đồ uống.'),
(2, 1, 'kg', 30, 'potato.jpg', 50000, 'Khoai tây', 'Khoai tây là một trong những sản phẩm được trồng nhiều nhất trên thế giới. Tiêu thụ của nó là dành cho con người ăn tươi, làm thức ăn gia súc và làm nguyên liệu cho các ngành công nghiệp chế biến thực phẩm và nông nghiệp, chẳng hạn như khoai tây chiên, khoai tây mảnh, khoai tây đông lạnh, vv. Khoai tây là một trong những sản phẩm được trồng nhiều nhất trên thế giới. Lượng tiêu thụ của nó được dùng để làm thức ăn tươi cho con người, làm thức ăn cho gia súc và làm nguyên liệu cho các ngành công nghiệp chế biến thực phẩm và nông nghiệp, chẳng hạn như khoai tây chiên, khoai tây mảnh, khoai tây đông lạnh, v.v.'),
(3, 1, 'túi', 50, 'apple.jpg', 150000, 'Táo', 'Táo là loại trái cây lý tưởng để ăn bất cứ lúc nào, có vai trò tích cực trong việc đạt được sự cân bằng dinh dưỡng. Da của chúng có thể có màu xanh lục, vàng hoặc hơi đỏ, và vị thịt từ đắng đến ngọt. Nó là một trong những loại trái cây được tiêu thụ nhiều nhất trên thế giới. Có một số lượng lớn các giống; nhờ vậy mà táo có quanh năm.'),
(4, 1, 'quả', 20, 'watermelon.jpg', 80000, 'Dưa hấu', 'Dưa hấu là một loại quả lớn có hình cầu ít nhiều. Nó thường được ăn sống như món tráng miệng trên bàn. Nó có thịt màu đỏ hoặc hơi vàng ngọt. Nó là một loại thực phẩm rất tươi mát cung cấp rất ít calo. Nó cũng cung cấp một số vitamin và khoáng chất.'),
(5, 2, 'kg', 50, 'broccoli.jpg', 35000, 'Bông cải xanh', 'Bông cải xanh là một loại rau thuộc họ bắp cải. Mức tiêu thụ của nó tăng lên liên tục, vì nó là một loại thực phẩm tốt cho sức khỏe với nhiều công dụng nấu nướng. Nó có hương vị dễ chịu và rất giàu khoáng chất và vitamin. Nó cũng ít calo.'),
(6, 2, 'kg', 80, 'celery.jpg', 40000, 'Cần tây', 'Cần tây là loại rau có cuống lá dài, nhiều thịt và mọng nước được biết đến với tên gọi là cần tây. Chúng có thể được ăn sống trong món salad hoặc một mình, chiên, luộc, với nước sốt và làm gia vị cho súp, món hầm, v.v. Nó cũng có thể được sử dụng làm chất thơm và ngoài thân, lá và hạt của cây cũng được sử dụng.'),
(7, 3, 'bó', 50, 'springonion.jpg', 15000, 'Hành lá ', 'Hành lá bao gồm các củ nhỏ hình tròn đến hình bầu dục, đường kính trung bình từ 2 đến 5 cm, được gắn vào một thân thẳng, nhiều lớp của các lá xếp chồng lên nhau. Củ nhẵn, chắc, giòn và mọng nước, có màu từ trắng sáng đến đỏ, tùy thuộc vào giống. Cũng có thể có một cụm rễ rám nắng tươi, dẻo và mịn gắn vào gốc củ. Những chiếc lá hình ống, mảnh khảnh, có độ cứng, dày và giòn, đồng thời rỗng, có màu xanh đậm ở mép và chuyển dần sang tông xanh nhạt ở gần củ. Củ hành lá chứa đường và không có khí phát triển ở những củ già hơn, tạo ra hương vị ngọt và nhẹ, êm dịu. Những chiếc lá có hương vị đậm đà hơn và mang lại sắc thái thân thảo, hăng và cỏ.'),
(8, 3, 'kg', 30, 'garlic.jpg', 12000, 'Tỏi', 'Một loại thảo mộc phát triển từ một củ tròn, có mùi thơm mạnh bao gồm khoảng 10 đến 20 cây đinh hương được bao phủ bởi một lớp áo giấy. Những chiếc lá dài, hình kiếm được gắn vào một thân ngầm và những bông hoa màu trắng xanh hoặc hơi hồng mọc thành cụm dày đặc, hình cầu trên đỉnh một cuống hoa.'),
(9, 1, 'quả', 30, 'pear.jpg', 40000, 'Lê', 'Quả lê là một trong những loại trái cây phổ biến có mùi vị thơm ngon và vô cùng bổ dưỡng. Ăn lê thường xuyên sẽ giúp chúng ta cải thiện được tình tràng táo bón, mệt mỏi, tăng huyết áp và hạn chế bệnh tiểu đường tuýp 2 cũng như vô vàn công dụng tuyệt vời khác đối với sức khỏe.'),
(10, 1, 'chùm', 30, 'grape.jpg', 60000, 'Nho', 'Nho là một loại quả mọng lấy từ các loài cây thân leo thuộc chi Nho (Vitis). Quả nho mọc thành chùm từ 6 đến 300 quả, chúng có màu đen, lam, vàng, lục, đỏ-tía hay trắng. Khi chín, quả nho có thể ăn tươi hoặc được sấy khô để làm nho khô, cũng như được dùng để sản xuất các loại rượu vang, thạch nho, nước quả, mật nho, dầu hạt nho.');


--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Chỉ mục cho bảng `customers`
--

ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Chỉ mục cho bảng `orderdetail`
--

ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `VegetableID` (`VegetableID`);

--
-- Chỉ mục cho bảng `orders`
--

ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Chỉ mục cho bảng `vegetable`
--

ALTER TABLE `vegetable`
  ADD PRIMARY KEY (`VegetableID`),
  ADD KEY `category_ibfk_1` (`CategoryID`);


--
-- AUTO_INCREMENT cho bảng `category`
--

ALTER TABLE `category`
  MODIFY `CategoryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `customers`
--

ALTER TABLE `customers`
  MODIFY `CustomerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--

ALTER TABLE `orderdetail`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `orders`
--

ALTER TABLE `orders`
  MODIFY `OrderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `vegetable`
--

ALTER TABLE `vegetable`
  MODIFY `VegetableID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


--
-- Các ràng buộc cho bảng `orderdetail`
--

ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`VegetableID`) REFERENCES `vegetable` (`VegetableID`),
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Các ràng buộc cho bảng `orders`
--

ALTER TABLE `orders`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

--
-- Các ràng buộc cho bảng `vegetable`
--

ALTER TABLE `vegetable`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);
COMMIT;

