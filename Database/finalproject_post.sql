CREATE DATABASE  IF NOT EXISTS `finalproject` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `finalproject`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: finalproject
-- ------------------------------------------------------
-- Server version	5.7.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image_paths` json NOT NULL,
  `type` varchar(50) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `video_path` varchar(200) DEFAULT NULL,
  `area` int(11) NOT NULL,
  `rent_fee` decimal(19,2) NOT NULL,
  `rent_deposit` decimal(19,2) NOT NULL,
  `electric_cost` decimal(10,2) NOT NULL,
  `water_cost` decimal(19,2) NOT NULL,
  `service_fee` decimal(19,2) NOT NULL,
  `structure` varchar(45) NOT NULL,
  `furniture` varchar(45) NOT NULL,
  `other_feature` varchar(45) NOT NULL,
  `other_description` varchar(1000) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (10,4,'test','Số 5, ngõ 257, Thanh Nhàn, Thanh Nhàn, Hai Bà Trưng, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1702615965932_zzig99.PNG?alt=media&token=aa3b670b-5f4b-4fb8-8971-ec90f3ea6c01\"]','t4',21.002568419245964,105.85275380818676,'',40,1500000.00,0.00,0.00,0.00,0.00,'1N1B0K0VS','1DH0TL1NL1MG0BG1BD','1NX0TM1BC1ST0GX','','2023-12-15 11:52:54'),(11,4,'Test 2','số5, Lê Thanh Nghị, Thanh Nhàn, Hai Bà Trưng, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1702630671816_7auepp.jpg?alt=media&token=2f940479-8183-41e7-aca6-8d457b5e1179\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1702713262814_9p8xwa.PNG?alt=media&token=663b63ef-93d8-42a5-8784-be0cbfc4f767\"]','t2',21.000156825982813,105.84580483039053,'',40,1500000.00,1500000.00,3000.00,70000.00,100000.00,'2N1B0K1VS','0DH0TL1NL1MG0BG0BD','1NX0TM0BC0ST0GX','','2023-12-15 16:00:18'),(12,4,'Tét','Thanh Nhàn, Hai Bà Trưng, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1702713262814_9p8xwa.PNG?alt=media&token=663b63ef-93d8-42a5-8784-be0cbfc4f767\"]','t4',21.00119099695137,105.84696793339708,'',20,2500000.00,2500000.00,3000.00,40000.00,150000.00,'1N0B0K1VS','1DH1TL1NL0MG0BG0BD','1NX0TM0BC0ST0GX','','2023-12-16 14:54:51'),(13,4,'Cho thuê phòng ngõ 325 Kim Ngưu, Hai Bà Trưng, HN','Thanh Nhàn, Hai Bà Trưng, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1703141853779_vt7gs1.png?alt=media&token=8423aa83-a7ad-4351-b273-8fd6f1a25c85\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1703141864419_0ljzqf.jpg?alt=media&token=41b5d6b3-53f2-4d7e-993a-3610120af2de\"]','t4',21.004404471174354,105.86059239657546,'',30,1500000.00,1500000.00,0.00,0.00,0.00,'1N1B0K0VS','1DH1TL1NL0MG0BG0BD','1NX0TM1BC0ST0GX','line 1\nline 2','2023-12-21 13:58:07'),(16,5,'Phòng đẹp. Giá 2.7tr, Full đồ, Đường Thanh Nhàn, Phường Thanh Nhàn, Quận Hai Bà Trưng, Hà Nội','Thanh Nhàn, Hai Bà Trưng, Hà Nội','[\"\", \"\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705207811740_9fbit8.jpg?alt=media&token=7f85f4a1-735c-4e1f-a3b9-73edd7d6cfc1\"]','t2',21.00212181320962,105.86062281589284,'',20,2700000.00,2700000.00,4000.00,80000.00,0.00,'1N0B0K0VS','1DH0TL1NL0MG0BG0BD','0NX0TM0BC0ST0GX','','2024-01-14 11:50:19'),(17,5,'Cho thuê hộp ngủ giá 1.6 triệu bao trọn gói mọi chi phí, đủ hết đồ chỉ việc đến ở tại phố Võ Thị Sáu','Thanh Nhàn, Hai Bà Trưng, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705208047197_qw78xt.jpg?alt=media&token=9fe1468c-0487-4375-891b-e98ac40f9789\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705208056739_m8915j.jpg?alt=media&token=6a2aac66-0e6c-4761-a43c-1816785ed58a\"]','t4',21.001200330181348,105.86075156192555,'',10,1600000.00,1600000.00,4000.00,80000.00,0.00,'1N0B0K0VS','1DH1TL1NL1MG0BG0BD','1NX0TM0BC0ST0GX','','2024-01-14 11:54:26'),(18,5,'Cho thuê phòng ghép Homestay đủ đồ khu BKX Lê Thanh Nghị, đi bộ sang viện Bạch Mai','Bách Khoa, Hai Bà Trưng, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705208282094_ug2qwh.jpg?alt=media&token=d1d16da1-e481-4130-bf31-f8996dc221e5\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705208290021_zqnl61.jpg?alt=media&token=090925a3-3c31-4c6d-9cc7-88c992542384\"]','t4',21.00132052394246,105.84358542423024,'',0,1200000.00,1200000.00,4000.00,60000.00,0.00,'1N0B0K0VS','1DH0TL1NL1MG0BG0BD','1NX0TM1BC0ST0GX','','2024-01-14 11:58:29'),(19,5,'Phòng ghép đầy đủ đồ tiện ích 1tr5 bao đnc hệ thống trung tâm HN','Giáp Bát, Hoàng Mai, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705208706879_xwjsf5.jpg?alt=media&token=f9e2a76a-2089-40dc-b9c4-ea416d0d27b6\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705208715569_ak40gz.jpg?alt=media&token=0276cf82-2cd0-41bd-98a2-38ec9f7f2058\"]','t4',20.992334862885574,105.84169714908376,'',0,1500000.00,1500000.00,0.00,0.00,0.00,'1N1B0K0VS','1DH0TL1NL0MG0BG0BD','1NX0TM0BC0ST0GX','','2024-01-14 12:05:23'),(20,5,'TINGTONG CÒN PHÒNG 1K1N NGAY CHÂN CẦU MAI DỊCH FULL ĐỒ CÓ BAN CÔNG','Mai Dịch, Cầu Giấy, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705209540188_f09ulo.jpg?alt=media&token=d02bd3c7-68da-4dde-a7da-7c6c98aa3cbe\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705209547823_xm81ye.jpg?alt=media&token=055e8299-5c37-4916-b878-7f3168c14c14\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705209553722_tb0np0.jpg?alt=media&token=f25cc8ef-97cc-4644-a589-11b0a718525f\"]','t3',21.03875894924207,105.7772544474127,'',35,5250000.00,5250000.00,3800.00,100000.00,0.00,'1N0B1K0VS','0DH0TL1NL1MG0BG0BD','1NX1TM0BC0ST0GX','TingTong cơ sở 86 TRỐNG PHÒNG ĐỊA CHỈ 89 PHẠM VĂN ĐỒNG studio full nội thất có bãi ô tô\\nTòa nhà TingTong cơ sở 86 trống 1 phòng.\\n- Vị trí trung tâm, thuận lợi đi lại.\\n- Thiết bị nội thất tiện nghi, đồ đạc y ảnh\\n- Phòng ban công, cửa sổ thoáng mát.\\n- Dịch vụ: Thang máy, máy giặt, máy giặt tiện nghi, cổng khóa vân tay.\\nCamera 24/24, kiểm tra an ninh và kĩ thuật hàng ngày.\\nVệ sinh sạch sẽ, thường xuyên có người đến dọn dẹp vệ sinh.\\n* Điện 3,8 nghìn/số, nước 28K/khối.\\nTòa nhà được trang bị thiết bị chữa cháy đạt tiêu chuẩn PCCC. Có hệ thống camera an ninh, số hotline chăm sóc cư dân trong tòa nhà.\\nSố lượng phòng có hạn, nhanh tay liên hệ ngay với TingTong để sớm chuyển vào những căn hộ vô cùng chất lượng nhé!\\n\\n---------------------------------------\\n\\nTingTong - Hệ thống căn hộ, phòng trọ toàn quốc.\\nLiên hệ với chúng tôi để được phục vụ và xem nhà miễn phí mọi lúc','2024-01-14 12:19:27'),(21,5,'Cho thuê phòng ngõ 325 Kim Ngưu, Hai Bà Trưng, HN','ngõ 325 Kim Ngưu, Thanh Nhàn, Hai Bà Trưng, Hà Nội','[\"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705210323973_1bp2yh.jpg?alt=media&token=af7aca82-1d8c-419e-ae9d-1bc6f3557375\", \"https://firebasestorage.googleapis.com/v0/b/finalproject-f295b.appspot.com/o/images%2F1705210332187_rviobn.jpg?alt=media&token=e3dc1698-a45f-40fc-9060-53cd92b20d0e\"]','t2',21.003204765319854,105.86209895304695,'',25,3500000.00,3500000.00,4000.00,100000.00,0.00,'1N0B0K1VS','1DH1TL1NL1MG0BG0BD','1NX0TM1BC0ST0GX','','2024-01-14 12:32:45');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 20:34:07
