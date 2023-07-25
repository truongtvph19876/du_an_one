-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 21, 2023 lúc 02:17 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_one`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id_bill` int(20) NOT NULL,
  `iduser` int(10) DEFAULT 0,
  `name_bill` varchar(255) NOT NULL,
  `email_bill` varchar(255) NOT NULL,
  `address_bill` varchar(255) NOT NULL,
  `tel_bill` varchar(50) NOT NULL,
  `ordernote_bill` varchar(255) NOT NULL,
  `tongtien_bill` int(10) NOT NULL DEFAULT 0,
  `pttt_bill` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1. Thanh toán trực tiếp\r\n2. Chuyển khoản',
  `ngaydathang` varchar(50) DEFAULT NULL,
  `status_bill` tinyint(1) DEFAULT 0 COMMENT '0. Đơn hàng mới\r\n1. Đang sử lý\r\n2. Đang giao hàng\r\n3. Giao thành công',
  `receive` varchar(255) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id_bill`, `iduser`, `name_bill`, `email_bill`, `address_bill`, `tel_bill`, `ordernote_bill`, `tongtien_bill`, `pttt_bill`, `ngaydathang`, `status_bill`, `receive`, `receive_address`, `receive_tel`) VALUES
(99, 17, '123', 'duyanh@gmail.com', 'THhh', '0375123841', '32112', 231123128, 1, '08:08:07am 01/04/2023', 0, NULL, NULL, NULL),
(100, 17, '123', 'duyanh@gmail.com', 'THhh', '0375123841', '', 36998, 2, '08:19:37am 01/04/2023', 0, NULL, NULL, NULL),
(101, 17, '123', 'duyanh@gmail.com', 'THhh', '0375123841', '', 27000000, 1, '08:25:26am 01/04/2023', 0, NULL, NULL, NULL),
(102, 17, '555', 'duyanh@gmail.com', 'THhh', '0375123841', '', 27000000, 2, '08:44:57am 01/04/2023', 0, NULL, NULL, NULL),
(107, 17, 'nguyen tuan anh', 'duyanh@gmail.com', 'THhh', '0375123841', '', 27000000, 1, '08:41:36am 04/04/2023', 4, NULL, NULL, NULL),
(110, 17, 'duyanh', 'duyanh@gmail.com', 'THhh', '0375123841', '312321', 27000000, 1, '07:42:25am 08/04/2023', 2, NULL, NULL, NULL),
(111, 17, '123', 'duyanh@gmail.com', 'THhh', '0375123841', '', 7900, 1, '08:46:38am 13/04/2023', 0, NULL, NULL, NULL),
(112, 17, 'nguyễn văn a', 'duyanh@gmail.com', 'THhh', '0375123841', '', 7900, 1, '08:48:08am 13/04/2023', 0, NULL, NULL, NULL),
(113, 17, '123', 'duyanh@gmail.com', 'THhh', '0375123841', '', 11004, 1, '04:23:07pm 13/04/2023', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id_bl` int(10) NOT NULL,
  `content_bl` varchar(255) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_pro` int(10) NOT NULL,
  `date_bl` varchar(30) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `role_tk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id_bl`, `content_bl`, `id_user`, `id_pro`, `date_bl`, `user_name`, `role_tk`) VALUES
(30, 'okđyâ', 0, 72, '07:37:09am 25/03/2023', '', 0),
(31, 'duy anh oke', 0, 72, '07:37:37am 25/03/2023', '', 0),
(32, 'ổn đấy', 0, 82, '08:10:37am 30/03/2023', '', 0),
(33, 'bn ạ', 0, 65, '10:16:45am 30/03/2023', '', 0),
(34, 'hello', 17, 84, '07:47:55am 04/04/2023', '123', 0),
(35, 'dfbfd', 0, 84, '07:27:52am 08/04/2023', '', 0),
(36, '', 0, 84, '07:27:56am 08/04/2023', '', 0),
(37, 'asdas', 0, 84, '07:30:00am 08/04/2023', '', 0),
(38, 'abfmhjsd', 0, 64, '07:30:38am 08/04/2023', '', 0),
(39, 'hjhvjkvd', 0, 64, '07:30:44am 08/04/2023', '', 0),
(40, 'nhom3', 17, 64, '07:41:46am 08/04/2023', '123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `id_bill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `idpro`, `img`, `name`, `price`, `soluong`, `id_bill`) VALUES
(129, 17, 82, 'a23.jpg', 'samsung a23', 5, 1, 99),
(130, 17, 79, 'a333.jpg', 'samsung galaxy a33', 231123123, 1, 99),
(131, 17, 66, 'ip13.jpg', 'iphone 13 pro max', 15999, 1, 100),
(132, 17, 67, 'ip14.jpg', 'iphone 14 pro max', 20999, 1, 100),
(133, 17, 84, 'a73.jpg', 'samsung galaxy a73', 27000000, 1, 101),
(134, 17, 83, 'a73.jpg', 'samsung galaxy a73', 27000000, 1, 102),
(142, 17, 84, 'a73.jpg', 'samsung galaxy a73', 27000000, 1, 107),
(143, 17, 84, 'a73.jpg', 'samsung galaxy a73', 27000000, 1, 110),
(144, 17, 64, 'iphone11.jpg', 'iphone 11 pro max', 7900, 1, 111),
(145, 17, 64, 'iphone11.jpg', 'iphone 11 pro max', 7900, 1, 112),
(146, 17, 82, 'a23.jpg', 'samsung a23', 5, 1, 113),
(147, 17, 65, 'iphone 12.jpg', 'iphone 12 pro max', 10999, 1, 113);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(20) NOT NULL,
  `name_danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `name_danhmuc`) VALUES
(21, 'iphone 11'),
(22, 'iphone 12'),
(23, 'iphone 13'),
(24, 'iphone 14'),
(26, 'iphone 8plus'),
(27, 'iphone 11'),
(28, 'oppo'),
(29, 'sam sung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` int(20) NOT NULL,
  `name_sp` varchar(50) NOT NULL,
  `img_sp` char(40) NOT NULL,
  `price_sp` int(11) NOT NULL,
  `mota_sp` varchar(2000) NOT NULL,
  `id_danhmuc` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `name_sp`, `img_sp`, `price_sp`, `mota_sp`, `id_danhmuc`) VALUES
(64, 'iphone 11 pro max', 'iphone11.jpg', 7900, '<p>iPhone 11 - siêu phẩm được mong chờ nhất năm 2019 của Apple chuẩn bị ra mắt. Với những cải tiến vượt trội, phiên bản iPhone mới nhất hứa hẹn sẽ làm bùng nổ thị trường công nghệ.</p>', 21),
(65, 'iphone 12 pro max', 'iphone 12.jpg', 10999, '<h2>Mua iPhone 12 giá rẻ chính hãng tại Hoàng Hà Mobile</h2><p>Vào ngày 13/10 vừa qua, Apple đã chính thức cho ra mắt thế hệ iPhone 12 mới với 4 phiên bản, và trong đó mẫu iPhone 12 tiêu chuẩn, với nhiều cải tiến về cả bên ngoài lẫn bên trong, hứa hẹn sẽ lại tiếp tục nối tiếp sự thành công từ chiếc iPhone 11 tiền nhiệm.</p><h3>Thiết kế được làm mới lại hoàn toàn</h3><p>Nhắc tới Apple, người dùng sẽ luôn nghĩ tới những thiết bị iPhone đẳng cấp, mang trên mình một thiết kế vô cùng sang trọng, hiện đại và thời thượng. Và iPhone 12 Series của năm nay cũng không phải là một ngoại lệ. Mẫu iPhone 12 256GB sở hữu một thiết kế đã được “lột xác” hoàn toàn so với các thế hệ tiền nhiệm trước đây với cạnh được vát phẳng, vuông thành sắc cạnh, mang tới một cảm giác cực kì bền bỉ và chắc chắn. Thiết kế này khiến cho người dùng có thể dễ dàng liên tưởng tới những mẫu iPhone huyền thoại trước đây đã làm nên tên tuổi của Apple như iPhone</p>', 22),
(66, 'iphone 13 pro max', 'ip13.jpg', 15999, '<h3><a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-max\">Điện thoại&nbsp;iPhone 13 Pro Max 128 GB</a>&nbsp;- siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ <a href=\"https://www.thegioididong.com/apple\">Apple</a>. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.</h3>', 23),
(67, 'iphone 14 pro max', 'ip14.jpg', 20999, '<p>Các mẫu iPhone nhà Apple chưa bao giờ khiến người dùng thất vọng về thiết kế. iPhone 14 Pro chính hãng VN/A năm nay cũng được lấy cảm hứng từ mẫu iPhone 5 đời đầu với các góc cạnh vuông vức và mặt lưng phẳng. Mặt sau của iPhone 14 Pro là cụm camera ba cảm biến được tích hợp những công nghệ nhiếp ảnh hàng đầu. Chiếc điện thoại có trọng lượng chỉ 206g và độ dày 7.9mm, người dùng có thể cầm gọn trong lòng bàn tay và sử dụng. Ngay cả khi bạn cần mang điện thoại ra bên ngoài thì iPhone 14 Pro cũng không chiếm quá nhiều diện tích trong túi. iPhone 14 Pro chính hãng VN/A là một trong hai mẫu cao cấp được nhiều người dùng yêu thích như một biểu tượng của sự sang trọng và đẳng cấp.</p>', 24),
(70, 'iphone 8 plus', 'ip8.jpg', 66600000, '                      <h2>Thừa hưởng những thiết kế đã đạt đến độ chuẩn mực, thế hệ <a href=\"https://www.thegioididong.com/dtdd/iphone-8-plus\">iPhone 8 Plus</a> thay đổi phong cách bóng bẩy hơn và bổ sung hàng loạt tính năng cao cấp cho trải nghiệm sử dụng vô cùng tuyệt vời.</h2>                                                ', 26),
(77, 'oppo a57', 'op1.jpg', 19999921, '<p>mua ngay để có 1 chiếc oppo xịn nhất&nbsp;</p>', 28),
(78, 'renno 8T', 'op2.jpg', 33000000, '<h3>Tiếp nối sự thành công rực rỡ đến từ các thế hệ trước đó thì chiếc <a href=\"https://www.thegioididong.com/dtdd/oppo-reno8-t-5g-256gb\">OPPO Reno8 T 5G 256GB</a> cuối cùng đã được giới thiệu chính thức tại Việt Nam, được định hình là dòng sản phẩm thuộc phân khúc tầm trung với camera 108 MP, con chip Snapdragon 695 cùng kiểu dáng thiết kế mặt lưng và màn hình bo cong hết sức nổi bật.</h3><h3>Thiết kế với kiểu dáng bắt mắt</h3><p>Qua những lần chạm đầu tiên trên chiếc Reno8 T 5G thì mình thấy đây là một chiếc điện thoại có độ hoàn thiện khá tốt, máy mang lại cho mình một cảm giác cầm nắm tương đối là đầm tay, hai bên cạnh cũng được làm bo cong giúp hạn chế tình trạng cấn tay mang đến cho mình một trải nghiệm sử dụng khá là thoải mái.</p><p><br>&nbsp;</p>', 28),
(79, 'samsung galaxy a33', 'a333.jpg', 231123123, '<h2>Ưu đãi thêm 1 triệu, thu cũ đổi mới đồng thời nhiều thiết bị, hỗ trợ thêm 3 triệu</h2>', 29),
(82, 'samsung a23', 'a23.jpg', 5, '<h2><a href=\"http://thegioididong.com/samsung\">Samsung</a>&nbsp;đã chính thức tiết lộ&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a23-5g\">Galaxy A23 5G</a>. Thiết bị dự kiến sẽ là một đối thủ \"đáng gờm\" trong phân khúc tầm trung với chip Snapdragon đầu 6, bốn camera sau và mức giá dễ chịu. Hãy cùng&nbsp;<a href=\"http://thegioididong.com/tin-tuc\">24h Công nghệ</a>&nbsp;tìm hiểu&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/samsung-galaxy-a23-5g-se-ra-mat-vao-thang-9-1458625\">cấu hình và giá bán Galaxy A23 5G</a>&nbsp;nhé!</h2>', 29),
(83, 'samsung galaxy a73', 'a73.jpg', 27000000, '<h3><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a73\">Samsung Galaxy A73 5G 128GB</a> được xem là sản phẩm nổi bật nhất dòng <a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-a\">Galaxy A</a> 2022 mới ra mắt, máy trang bị bộ thông số kỹ thuật ấn tượng về phần hiệu năng, chất lượng màn hình và nổi bật nhất trong số đó là camera khi nó đem lại bức ảnh có độ phân giải lên đến 108 MP.</h3>', 29),
(84, 'samsung galaxy a73', 'a73.jpg', 27000000, '<h3><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a73\">Samsung Galaxy A73 5G 128GB</a> được xem là sản phẩm nổi bật nhất dòng <a href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-a\">Galaxy A</a> 2022 mới ra mắt, máy trang bị bộ thông số kỹ thuật ấn tượng về phần hiệu năng, chất lượng màn hình và nổi bật nhất trong số đó là camera khi nó đem lại bức ảnh có độ phân giải lên đến 108 MP.</h3>', 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_tk` int(10) NOT NULL,
  `name_tk` varchar(50) NOT NULL,
  `pass_tk` varchar(50) NOT NULL,
  `email_tk` varchar(255) NOT NULL,
  `address_tk` varchar(255) NOT NULL,
  `tel_tk` varchar(20) NOT NULL,
  `role` tinyint(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id_tk`, `name_tk`, `pass_tk`, `email_tk`, `address_tk`, `tel_tk`, `role`) VALUES
(15, 'duyanh18122003', 'duyanh1233', 'duyanh@gmail.com', 'DTT', '0375613869', 0),
(17, '123', '123', 'duyanh@gmail.com', 'THhh', '0375123841', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_bl`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `idpro` (`idpro`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_tk`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id_bill` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_bl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id_tk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id_tk`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id_bill`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id_sp`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
