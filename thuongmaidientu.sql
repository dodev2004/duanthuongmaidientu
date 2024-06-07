-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 07, 2024 lúc 08:44 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(150) NOT NULL,
  `icon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten_danhmuc`, `icon`) VALUES
(53, 'Laptop - Laptop Gaming', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"46\" height=\"46\" viewBox=\"0 0 2500 2500\" version=\"1.1\">\r\n	<path d=\"M 492.731 348.054 C 395.474 356.734, 312.538 416.835, 277.487 504.034 C 266.274 531.930, 261 559.147, 261 589.119 C 261 600.562, 269.994 725.286, 292.500 1025.952 C 309.825 1257.402, 324 1447.239, 324 1447.813 C 324 1448.387, 321.413 1449.156, 318.250 1449.524 C 308.670 1450.636, 291.214 1454.786, 278 1459.093 C 231.478 1474.256, 189.195 1506.527, 161.510 1548 C 140.122 1580.041, 128.149 1615.039, 124.892 1655.044 C 123.545 1671.579, 125.016 1707.265, 128 1730.491 C 155.803 1946.853, 322.331 2112.358, 534.500 2134.496 C 563.993 2137.573, 733.176 2144.549, 861.500 2147.978 C 1111.743 2154.667, 1386.684 2154.665, 1638.500 2147.973 C 1765.850 2144.588, 1935.968 2137.577, 1965.500 2134.496 C 2048.357 2125.851, 2125.596 2095.381, 2192 2045.143 C 2292.054 1969.448, 2357.880 1853.214, 2372.455 1726.500 C 2374.637 1707.530, 2376.231 1673.107, 2375.488 1661 C 2372.060 1605.157, 2350.877 1555.953, 2313.627 1517.311 C 2285.102 1487.719, 2254.558 1468.800, 2216.447 1457.118 C 2205.742 1453.836, 2191.185 1450.629, 2181.750 1449.474 C 2178.588 1449.086, 2176 1448.306, 2176 1447.740 C 2176 1447.174, 2190.175 1257.334, 2207.500 1025.873 C 2230.917 713.023, 2238.999 600.732, 2238.995 588.268 C 2238.981 536.424, 2221.108 486.425, 2187 442.811 C 2178.743 432.253, 2160.012 413.453, 2149 404.669 C 2112.991 375.949, 2071.091 357.650, 2023.369 349.802 L 2009.500 347.521 1255.500 347.396 C 840.800 347.327, 497.554 347.623, 492.731 348.054 M 503.315 527.005 C 495.022 528.222, 484.125 531.864, 475.500 536.303 C 469.408 539.438, 465.348 542.576, 458.479 549.460 C 445.249 562.717, 440.021 574.024, 439.982 589.460 C 439.968 595.299, 503.916 1456.076, 504.411 1456.702 C 504.879 1457.294, 615.708 1462.775, 682 1465.486 C 865.551 1472.990, 1027.580 1475.985, 1250 1475.985 C 1472.420 1475.985, 1634.449 1472.990, 1818 1465.486 C 1884.301 1462.775, 1995.127 1457.293, 1995.586 1456.702 C 1996.078 1456.068, 2060.029 595.278, 2060.016 589.460 C 2059.956 562.703, 2039.561 539.362, 2007.451 529.304 L 1998.500 526.500 1253.500 526.372 C 843.750 526.302, 506.167 526.587, 503.315 527.005 M 344.500 1626.627 C 334.171 1628.034, 326.828 1631.274, 319.090 1637.839 C 311.517 1644.263, 306.481 1652.452, 304.428 1661.678 C 302.952 1668.314, 302.886 1671.292, 303.874 1686.852 C 305.800 1717.209, 309.753 1738.179, 318.510 1764.500 C 333.862 1810.641, 356.574 1846.926, 391.121 1880.504 C 412.146 1900.940, 430.068 1913.940, 455.195 1926.984 C 489.368 1944.723, 525.848 1954.854, 565 1957.480 C 588.499 1959.056, 708.120 1963.978, 783.500 1966.471 C 1150.116 1978.596, 1555.766 1975.885, 1903.813 1958.984 C 1946.847 1956.895, 1963.107 1955.078, 1983.500 1950.079 C 2019.880 1941.161, 2057.588 1922.970, 2086.885 1900.203 C 2098.391 1891.262, 2120.227 1869.884, 2130.328 1857.673 C 2163.491 1817.579, 2185.828 1767.010, 2193.468 1714.729 C 2196.079 1696.862, 2197.308 1672.991, 2196.037 1664.804 C 2193.082 1645.755, 2177.404 1630.130, 2158.199 1627.092 C 2151.189 1625.983, 2104.306 1629.022, 2096 1631.124 C 2093.525 1631.751, 2086.100 1632.256, 2079.500 1632.247 C 2072.900 1632.238, 2048.600 1633.293, 2025.500 1634.590 C 1797.633 1647.388, 1604.262 1653.295, 1361.750 1654.867 C 1034.454 1656.988, 759.268 1650.693, 474.500 1634.571 C 451.400 1633.263, 427.550 1632.241, 421.500 1632.300 C 415.181 1632.361, 406.457 1631.696, 401 1630.737 C 395.775 1629.818, 383.850 1628.587, 374.500 1628 C 365.150 1627.413, 355.250 1626.772, 352.500 1626.575 C 349.750 1626.379, 346.150 1626.402, 344.500 1626.627\" stroke=\"none\" fill=\"currentColor\" fill-rule=\"evenodd\"></path>\r\n</svg>  '),
(54, 'Máy giặt - máy sấy', '        <svg xmlns=\"http://www.w3.org/2000/svg\" fill=\"none\" viewBox=\"-0.5 -0.5 14 14\" height=\"14\" width=\"14\"><g id=\"hotel-laundry--laundry-machine-hotel\"><path id=\"Vector\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M10.678571428571429 0.4642857142857143h-8.357142857142858c-0.5128314285714286 0 -0.9285714285714286 0.41573535714285714 -0.9285714285714286 0.9285714285714286v10.214285714285715c0 0.51285 0.41574 0.9285714285714286 0.9285714285714286 0.9285714285714286h8.357142857142858c0.51285 0 0.9285714285714286 -0.4157214285714286 0.9285714285714286 -0.9285714285714286v-10.214285714285715c0 -0.5128360714285715 -0.4157214285714286 -0.9285714285714286 -0.9285714285714286 -0.9285714285714286Z\" stroke-width=\"1\"></path><path id=\"Vector_2\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M9.247197142857143 8.357142857142858h-0.780455C7.78401 8.357142857142858 7.110656428571429 8.198180714285716 6.5 7.892857142857143v0C5.889343571428571 7.587533571428571 5.21599 7.428571428571429 4.533257857142857 7.428571428571429h-0.780455M9.285714285714286 7.892857142857143c0 1.53855 -1.2472107142857143 2.7857142857142856 -2.7857142857142856 2.7857142857142856s-2.7857142857142856 -1.2471642857142857 -2.7857142857142856 -2.7857142857142856c0 -0.3255942857142857 0.05585357142857143 -0.6381328571428572 0.15851642857142859 -0.9285714285714286C4.255215714285714 5.8823235714285715 5.287081428571429 5.107142857142858 6.5 5.107142857142858c1.5385035714285715 0 2.7857142857142856 1.2472107142857143 2.7857142857142856 2.7857142857142856Z\" stroke-width=\"1\"></path><path id=\"Vector_3\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" d=\"M1.3928571428571428 3.25h10.214285714285715\" stroke-width=\"1\"></path></g></svg>        ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_binhluan`
--

CREATE TABLE `db_binhluan` (
  `id_bl` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sanPham` int(11) NOT NULL,
  `content` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `ngay_capNhat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(10) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bill_name` varchar(250) NOT NULL,
  `bill_tel` varchar(13) NOT NULL,
  `bill_address` varchar(150) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1- Trả tiền khi nhận hàng , 2- Chuyển khoản khi nhận hàng, 3- thanh toán  onl',
  `bill_datecreated` int(11) NOT NULL,
  `bill_dateupdate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Chờ xác nhận ,  1 - Chờ lấy hàng,2-Đang giao    ',
  `total` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(10) NOT NULL,
  `id_order` int(10) NOT NULL,
  `id_product` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_sanpham`
--

CREATE TABLE `db_sanpham` (
  `id_sanPham` int(11) NOT NULL,
  `ten_sanPham` varchar(150) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `luotXem` int(11) NOT NULL DEFAULT 0,
  `mota` text DEFAULT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_sanpham`
--

INSERT INTO `db_sanpham` (`id_sanPham`, `ten_sanPham`, `image`, `price`, `luotXem`, `mota`, `id_danhmuc`) VALUES
(41, 'Điện thoại Honor 7X 64GB/4GB 3 camera', '7329f4ef40e4ead01e089872faf6ae.jpg', 3900000.00, 29, '                                        ', 53);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(150) NOT NULL,
  `vetification_user` varchar(6) NOT NULL,
  `created_time` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `active` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `user`, `password`, `phone`, `email`, `address`, `role`, `name`, `vetification_user`, `created_time`, `active`) VALUES
(31, 'Buingocdo2004@', '31102004', NULL, 'Bùi Ngọc Đông', 'dobnph33400@fpt.edu.vn', 1, '31102004', '804674', '2024-01-26 16:04:19', 1),
(51, 'donghae19003', '31102004', NULL, 'dobnph33400@fpt.edu.vn', NULL, 0, 'Bùi Ngọc Đông', '48544', '2024-02-19 19:32:50', 1),
(52, 'donghae1900', 'dochin123', NULL, 'dobui@gmail.com', NULL, 1, 'Bùi Ngọc Đông', '787187', '2024-02-17 21:19:39', 0),
(53, 'buingocdo20044@', 'dochin123', NULL, '8.12a5.dobuingoc@gmail.com', NULL, 1, 'Bùi Ngọc Đông', '147252', '2024-02-17 21:20:07', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `db_binhluan`
--
ALTER TABLE `db_binhluan`
  ADD PRIMARY KEY (`id_bl`),
  ADD KEY `db_binhLuan_fk1` (`id_user`),
  ADD KEY `db_binhluan_fk2` (`id_sanPham`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user_frk_1` (`id_user`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_fk_1` (`id_order`),
  ADD KEY `order_detaill_fk_2` (`id_product`);

--
-- Chỉ mục cho bảng `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD PRIMARY KEY (`id_sanPham`),
  ADD KEY `db_sanpham_ibfk_1` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `db_binhluan`
--
ALTER TABLE `db_binhluan`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `db_sanpham`
--
ALTER TABLE `db_sanpham`
  MODIFY `id_sanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_binhluan`
--
ALTER TABLE `db_binhluan`
  ADD CONSTRAINT `db_binhLuan_fk1` FOREIGN KEY (`id_user`) REFERENCES `db_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_binhluan_fk2` FOREIGN KEY (`id_sanPham`) REFERENCES `db_sanpham` (`id_sanPham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `id_user_frk_1` FOREIGN KEY (`id_user`) REFERENCES `db_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `order_detail_fk_1` FOREIGN KEY (`id_order`) REFERENCES `db_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detaill_fk_2` FOREIGN KEY (`id_product`) REFERENCES `db_sanpham` (`id_sanPham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `db_sanpham`
--
ALTER TABLE `db_sanpham`
  ADD CONSTRAINT `db_sanpham_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
