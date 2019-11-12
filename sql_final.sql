CREATE DATABASE  IF NOT EXISTS `book_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `book_store`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: book_store
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'kh001','123456','customer'),(3,'nv001','123456','employee');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `City` varchar(255) DEFAULT NULL,
  `District` varchar(255) DEFAULT NULL,
  `Town` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,NULL,NULL,NULL,NULL),(2,'HaNoi','HD','AS',NULL),(3,'HaNoi','HD','AS',NULL),(4,'HaNoi','HD','AS',NULL),(5,'HaNoi','HD','AS',NULL),(6,'HaNoi','HD','AS',NULL),(7,'HaNoi','HD','AS',NULL),(8,'HaNoi','HD','AS',NULL),(9,'wefwq','fwqf','wfwf',NULL),(10,'wefwq','fwqf','wfwf',NULL),(11,'wefwq','fwqf','wfwf',NULL),(12,'wefwq','fwqf','wfwf',NULL),(13,'afas','asdfasf','safasf',NULL),(14,'ags','agsag','asgsag',NULL),(15,'ags','agsag','asgsag',NULL),(16,'shsdh','hdsh','shsdfh',NULL),(17,'a','HD','a',NULL),(18,'x','y','z',NULL),(19,'x','y','z',NULL),(20,'x','y','z',NULL),(21,'x','y','z',NULL),(22,'x','y','z',NULL),(23,'x','y','z',NULL),(24,'x','y','z',NULL),(25,'x','y','z',NULL),(26,'x','y','z',NULL),(27,'a','c','s',NULL),(28,'a','a','a',NULL),(29,'a','a','a',NULL),(30,'a','HD','a',NULL),(31,'a','HD','a',NULL),(32,'Ha Noi','Ha Dong','Nguyen Trai',NULL),(33,'Thai Binh','Thai Binh','Kien Xuong',NULL),(34,'Ha Noi','Ha Dong','Nguyen Trai',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allowance`
--

DROP TABLE IF EXISTS `allowance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allowance` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmployeePersonID` int(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Amount` bigint(19) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKAllowance865721` (`EmployeePersonID`),
  CONSTRAINT `FKAllowance865721` FOREIGN KEY (`EmployeePersonID`) REFERENCES `employee` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowance`
--

LOCK TABLES `allowance` WRITE;
/*!40000 ALTER TABLE `allowance` DISABLE KEYS */;
/*!40000 ALTER TABLE `allowance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Erika Takeuchi',NULL),(2,NULL,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Payment` int(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PublisherID` int(10) NOT NULL,
  `AuthorID` int(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `PublishYear` varchar(255) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  `PurchasePrice` bigint(19) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKBook221643` (`PublisherID`),
  KEY `FKBook666593` (`AuthorID`),
  CONSTRAINT `FKBook221643` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`ID`),
  CONSTRAINT `FKBook666593` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,1,1,'NUÔI DẠY BÉ GÁI TỪ 0 - 6 TUỔI','2018',1,NULL),(2,1,1,'NUÔI DẠY BÉ TRAI TỪ 0 - 6 TUỔI','2018',1,NULL),(3,1,1,'HÀNH TRÌNH CỦA LINH HỒN (TÁI BẢN 2018)','2018',1,NULL),(4,1,1,'TỨ THƯ LÃNH ĐẠO - THUẬT LÃNH ĐẠO (TÁI BẢN 2018)','2018',1,NULL),(5,1,1,'BA NGƯỜI THẦY VĨ ĐẠI','2018',1,NULL),(6,1,1,'SỐNG ĐƠN GIẢN CHO MÌNH THANH THẢN','2018',1,NULL),(7,1,1,'MUỐN AN ĐƯỢC AN (TÁI BẢN 2018)','2018',1,NULL),(8,1,1,'TỨ THƯ LÃNH ĐẠO - THUẬT XỬ THẾ (TÁI BẢN 2017)','2018',1,NULL),(9,1,1,'BỐN MÙA CUỘC SỐNG - CHÂM NGÔN NGÀY MỚI (TÁI BẢN 2018)','2018',1,NULL),(10,1,1,'THỊNH VƯỢNG TÀI CHÍNH TUỔI 30 - TẬP 2 (TÁI BẢN 2018)','2018',1,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_category`
--

DROP TABLE IF EXISTS `book_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_category` (
  `BookID` int(10) NOT NULL,
  `CategoryID` int(10) NOT NULL,
  PRIMARY KEY (`BookID`,`CategoryID`),
  KEY `FKBook_Categ164886` (`CategoryID`),
  CONSTRAINT `FKBook_Categ164886` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`ID`),
  CONSTRAINT `FKBook_Categ535468` FOREIGN KEY (`BookID`) REFERENCES `book` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_category`
--

LOCK TABLES `book_category` WRITE;
/*!40000 ALTER TABLE `book_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookstorecard`
--

DROP TABLE IF EXISTS `bookstorecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookstorecard` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Point` bigint(19) DEFAULT NULL,
  `UsedPoint` bigint(19) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookstorecard`
--

LOCK TABLES `bookstorecard` WRITE;
/*!40000 ALTER TABLE `bookstorecard` DISABLE KEYS */;
INSERT INTO `bookstorecard` VALUES (1,NULL,NULL),(2,NULL,NULL),(3,NULL,NULL),(4,NULL,NULL),(5,NULL,NULL),(6,NULL,NULL),(7,NULL,NULL),(8,NULL,NULL),(9,NULL,NULL);
/*!40000 ALTER TABLE `bookstorecard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branchstore`
--

DROP TABLE IF EXISTS `branchstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchstore` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `AddressID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKBranchStor515405` (`AddressID`),
  CONSTRAINT `FKBranchStor515405` FOREIGN KEY (`AddressID`) REFERENCES `address` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchstore`
--

LOCK TABLES `branchstore` WRITE;
/*!40000 ALTER TABLE `branchstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `branchstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ItemID_idx` (`ItemID`),
  CONSTRAINT `ItemID` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,NULL),(2,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CartID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (1,1,7,NULL),(2,1,3,NULL);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cash`
--

DROP TABLE IF EXISTS `cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cash` (
  `PaymentID` int(10) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  CONSTRAINT `FKCash453060` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cash`
--

LOCK TABLES `cash` WRITE;
/*!40000 ALTER TABLE `cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactinfor`
--

DROP TABLE IF EXISTS `contactinfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactinfor` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `AddressID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKContactInf247244` (`AddressID`),
  CONSTRAINT `FKContactInf247244` FOREIGN KEY (`AddressID`) REFERENCES `address` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactinfor`
--

LOCK TABLES `contactinfor` WRITE;
/*!40000 ALTER TABLE `contactinfor` DISABLE KEYS */;
INSERT INTO `contactinfor` VALUES (1,'84977906098','hoangpn314@gmail.com',32),(2,'84977906098','hoangpn314@gmail.com',34);
/*!40000 ALTER TABLE `contactinfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `PersonID` int(10) NOT NULL,
  `CartID` int(10) NOT NULL,
  `MembershipTypeID` int(10) NOT NULL,
  `BookStoreCardID` int(10) NOT NULL,
  `WishlistID` int(10) NOT NULL,
  PRIMARY KEY (`PersonID`),
  KEY `FKCustomer809750` (`CartID`),
  KEY `FKCustomer333882` (`MembershipTypeID`),
  KEY `FKCustomer190739` (`BookStoreCardID`),
  KEY `FKCustomer854320` (`WishlistID`),
  CONSTRAINT `FKCustomer190739` FOREIGN KEY (`BookStoreCardID`) REFERENCES `bookstorecard` (`ID`),
  CONSTRAINT `FKCustomer220859` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`),
  CONSTRAINT `FKCustomer333882` FOREIGN KEY (`MembershipTypeID`) REFERENCES `membershiptype` (`ID`),
  CONSTRAINT `FKCustomer809750` FOREIGN KEY (`CartID`) REFERENCES `cart` (`ID`),
  CONSTRAINT `FKCustomer854320` FOREIGN KEY (`WishlistID`) REFERENCES `wishlist` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,8,8,1),(2,2,9,9,2);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customercarestaff`
--

DROP TABLE IF EXISTS `customercarestaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customercarestaff` (
  `PersonID` int(10) NOT NULL,
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `FKCustomerCa403597` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customercarestaff`
--

LOCK TABLES `customercarestaff` WRITE;
/*!40000 ALTER TABLE `customercarestaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `customercarestaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Position` varchar(255) DEFAULT NULL,
  `Salary` bigint(19) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `PersonID` int(10) NOT NULL,
  `BranchStoreID` int(10) NOT NULL,
  PRIMARY KEY (`PersonID`),
  KEY `FKEmployee319418` (`BranchStoreID`),
  CONSTRAINT `FKEmployee319418` FOREIGN KEY (`BranchStoreID`) REFERENCES `branchstore` (`ID`),
  CONSTRAINT `FKEmployee925855` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_workschedule`
--

DROP TABLE IF EXISTS `employee_workschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_workschedule` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `WorkScheduleID` int(10) NOT NULL,
  `EmployeePersonID` int(10) NOT NULL,
  `Shift` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKEmployee_W855920` (`WorkScheduleID`),
  KEY `FKEmployee_W520137` (`EmployeePersonID`),
  CONSTRAINT `FKEmployee_W520137` FOREIGN KEY (`EmployeePersonID`) REFERENCES `employee` (`PersonID`),
  CONSTRAINT `FKEmployee_W855920` FOREIGN KEY (`WorkScheduleID`) REFERENCES `workschedule` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_workschedule`
--

LOCK TABLES `employee_workschedule` WRITE;
/*!40000 ALTER TABLE `employee_workschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_workschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ItemID` int(10) NOT NULL,
  `CustomerPersonID` int(10) NOT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `Rate` int(10) DEFAULT NULL,
  `CustomerName` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKFeedback608988` (`ItemID`),
  KEY `FKFeedback455329` (`CustomerPersonID`),
  CONSTRAINT `FKFeedback455329` FOREIGN KEY (`CustomerPersonID`) REFERENCES `customer` (`PersonID`),
  CONSTRAINT `FKFeedback608988` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fullname`
--

DROP TABLE IF EXISTS `fullname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fullname` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fullname`
--

LOCK TABLES `fullname` WRITE;
/*!40000 ALTER TABLE `fullname` DISABLE KEYS */;
INSERT INTO `fullname` VALUES (1,'Hoa','Thi','Le'),(2,'Thang','Dinh','Nguyen');
/*!40000 ALTER TABLE `fullname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importingrecord`
--

DROP TABLE IF EXISTS `importingrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `importingrecord` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ImportingStaffPersonID` int(10) NOT NULL,
  `SupplierID` int(10) NOT NULL,
  `BookID` int(10) NOT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKImportingR664052` (`ImportingStaffPersonID`),
  KEY `FKImportingR802368` (`SupplierID`),
  KEY `FKImportingR445504` (`BookID`),
  CONSTRAINT `FKImportingR445504` FOREIGN KEY (`BookID`) REFERENCES `book` (`ID`),
  CONSTRAINT `FKImportingR664052` FOREIGN KEY (`ImportingStaffPersonID`) REFERENCES `importingstaff` (`PersonID`),
  CONSTRAINT `FKImportingR802368` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importingrecord`
--

LOCK TABLES `importingrecord` WRITE;
/*!40000 ALTER TABLE `importingrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `importingrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importingstaff`
--

DROP TABLE IF EXISTS `importingstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `importingstaff` (
  `PersonID` int(10) NOT NULL,
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `FKImportingS382258` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importingstaff`
--

LOCK TABLES `importingstaff` WRITE;
/*!40000 ALTER TABLE `importingstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `importingstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `SalePrice` bigint(19) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Promotions` int(10) DEFAULT NULL,
  `Feedbacks` int(10) DEFAULT NULL,
  `Books` int(10) DEFAULT NULL,
  `Url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'NUÔI DẠY BÉ GÁI TỪ 0 - 6 TUỔI',48750,'Erika Takeuchi',NULL,NULL,NULL,'8936037711218.jpg'),(2,'NUÔI DẠY BÉ TRAI TỪ 0 - 6 TUỔI',46020,'Erika Takeuchi',NULL,NULL,NULL,'8936037711232.jpg'),(3,'HÀNH TRÌNH CỦA LINH HỒN (TÁI BẢN 2018)',84150,'TS Michael Newton',NULL,NULL,NULL,'c24efe9cefce48768502776a3845b7c5.jpg'),(4,'TỨ THƯ LÃNH ĐẠO - THUẬT LÃNH ĐẠO (TÁI BẢN 2018)',108420,'Hòa Nhân',NULL,NULL,NULL,'image_174138.jpg'),(5,'BA NGƯỜI THẦY VĨ ĐẠI',64500,'Robin Sharma',NULL,NULL,NULL,'image_172235.jpg'),(6,'SỐNG ĐƠN GIẢN CHO MÌNH THANH THẢN',46020,'Shunmyo Masuno',NULL,NULL,NULL,'bia_song-don-gian-cho-minh-thanh-than.jpg'),(7,'MUỐN AN ĐƯỢC AN (TÁI BẢN 2018)',39000,'Thích Nhất Hạnh',NULL,NULL,NULL,'muon-an-thi-duoc-an.jpg'),(8,'TỨ THƯ LÃNH ĐẠO - THUẬT XỬ THẾ (TÁI BẢN 2017)',108420,'Hòa Nhân',NULL,NULL,NULL,'image_174140_1.jpg'),(9,'BỐN MÙA CUỘC SỐNG - CHÂM NGÔN NGÀY MỚI (TÁI BẢN 2018)',48750,'Jim Rohn',NULL,NULL,NULL,'image_174133.jpg'),(10,'THỊNH VƯỢNG TÀI CHÍNH TUỔI 30 - TẬP 2 (TÁI BẢN 2018)',60040,'Go Deuk Seong',NULL,NULL,NULL,'thinh-vuong-tai-chinh-tuoi-30-tap2-a.jpg');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_book`
--

DROP TABLE IF EXISTS `item_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_book` (
  `ItemID` int(10) NOT NULL,
  `BookID` int(10) NOT NULL,
  PRIMARY KEY (`ItemID`,`BookID`),
  KEY `FKItem_Book853343` (`BookID`),
  CONSTRAINT `FKItem_Book792256` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ID`),
  CONSTRAINT `FKItem_Book853343` FOREIGN KEY (`BookID`) REFERENCES `book` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_book`
--

LOCK TABLES `item_book` WRITE;
/*!40000 ALTER TABLE `item_book` DISABLE KEYS */;
INSERT INTO `item_book` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `item_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `Level` varchar(255) DEFAULT NULL,
  `PersonID` int(10) NOT NULL,
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `FKManager875256` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershiptype`
--

DROP TABLE IF EXISTS `membershiptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membershiptype` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Condition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershiptype`
--

LOCK TABLES `membershiptype` WRITE;
/*!40000 ALTER TABLE `membershiptype` DISABLE KEYS */;
INSERT INTO `membershiptype` VALUES (1,NULL,NULL,NULL),(2,NULL,NULL,NULL),(3,NULL,NULL,NULL),(4,NULL,NULL,NULL),(5,NULL,NULL,NULL),(6,NULL,NULL,NULL),(7,NULL,NULL,NULL),(8,NULL,NULL,NULL),(9,NULL,NULL,NULL);
/*!40000 ALTER TABLE `membershiptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Content` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `CustomerPersonID` int(10) NOT NULL,
  `State` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKNotificati866813` (`CustomerPersonID`),
  CONSTRAINT `FKNotificati866813` FOREIGN KEY (`CustomerPersonID`) REFERENCES `customer` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onlinebill`
--

DROP TABLE IF EXISTS `onlinebill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlinebill` (
  `PaymentState` varchar(255) DEFAULT NULL,
  `BillID` int(10) NOT NULL,
  `OnSiteOrderOrderID` int(10) NOT NULL,
  PRIMARY KEY (`BillID`),
  KEY `FKOnlineBill863548` (`OnSiteOrderOrderID`),
  CONSTRAINT `FKOnlineBill156969` FOREIGN KEY (`BillID`) REFERENCES `bill` (`ID`),
  CONSTRAINT `FKOnlineBill863548` FOREIGN KEY (`OnSiteOrderOrderID`) REFERENCES `onsiteorder` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlinebill`
--

LOCK TABLES `onlinebill` WRITE;
/*!40000 ALTER TABLE `onlinebill` DISABLE KEYS */;
/*!40000 ALTER TABLE `onlinebill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onlineorder`
--

DROP TABLE IF EXISTS `onlineorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlineorder` (
  `State` varchar(255) DEFAULT NULL,
  `CustomerID` int(10) NOT NULL,
  `OrderID` int(10) NOT NULL AUTO_INCREMENT,
  `ShippingID` int(10) DEFAULT NULL,
  `VoucherID` int(10) NOT NULL,
  `ShippingAddressID` int(10) NOT NULL,
  `paymentmethod` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FKOnlineOrde587314` (`VoucherID`),
  KEY `FKOnlineOrde876609` (`ShippingAddressID`),
  CONSTRAINT `FKOnlineOrde587314` FOREIGN KEY (`VoucherID`) REFERENCES `voucher` (`ID`),
  CONSTRAINT `FKOnlineOrde876609` FOREIGN KEY (`ShippingAddressID`) REFERENCES `shippingaddress` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlineorder`
--

LOCK TABLES `onlineorder` WRITE;
/*!40000 ALTER TABLE `onlineorder` DISABLE KEYS */;
INSERT INTO `onlineorder` VALUES ('On Delivery',1,1,NULL,1,1,'Cash On Delivery');
/*!40000 ALTER TABLE `onlineorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onlineseller`
--

DROP TABLE IF EXISTS `onlineseller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlineseller` (
  `PersonID` int(10) NOT NULL,
  `OnlineOrderOrderID` int(10) NOT NULL,
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `FKOnlineSell386151` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlineseller`
--

LOCK TABLES `onlineseller` WRITE;
/*!40000 ALTER TABLE `onlineseller` DISABLE KEYS */;
/*!40000 ALTER TABLE `onlineseller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onsitebill`
--

DROP TABLE IF EXISTS `onsitebill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onsitebill` (
  `BillID` int(10) NOT NULL,
  `OnSiteOrderOrderID` int(10) NOT NULL,
  PRIMARY KEY (`BillID`),
  KEY `FKOnSiteBill52591` (`OnSiteOrderOrderID`),
  CONSTRAINT `FKOnSiteBill52591` FOREIGN KEY (`OnSiteOrderOrderID`) REFERENCES `onsiteorder` (`OrderID`),
  CONSTRAINT `FKOnSiteBill967926` FOREIGN KEY (`BillID`) REFERENCES `bill` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onsitebill`
--

LOCK TABLES `onsitebill` WRITE;
/*!40000 ALTER TABLE `onsitebill` DISABLE KEYS */;
/*!40000 ALTER TABLE `onsitebill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onsiteorder`
--

DROP TABLE IF EXISTS `onsiteorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onsiteorder` (
  `OrderID` int(10) NOT NULL,
  `OnSiteSellerPersonID` int(10) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FKOnSiteOrde323732` (`OnSiteSellerPersonID`),
  CONSTRAINT `FKOnSiteOrde323732` FOREIGN KEY (`OnSiteSellerPersonID`) REFERENCES `onsiteseller` (`PersonID`),
  CONSTRAINT `FKOnSiteOrde951024` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onsiteorder`
--

LOCK TABLES `onsiteorder` WRITE;
/*!40000 ALTER TABLE `onsiteorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `onsiteorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `onsiteseller`
--

DROP TABLE IF EXISTS `onsiteseller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onsiteseller` (
  `PersonID` int(10) NOT NULL,
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `FKOnSiteSell557510` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onsiteseller`
--

LOCK TABLES `onsiteseller` WRITE;
/*!40000 ALTER TABLE `onsiteseller` DISABLE KEYS */;
/*!40000 ALTER TABLE `onsiteseller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PaymentID` int(10) NOT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKOrder92191` (`PaymentID`),
  CONSTRAINT `FKOrder92191` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderline` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `OrderID` int(10) NOT NULL,
  `ItemID` int(10) NOT NULL,
  `Quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKOrderLine353730` (`ItemID`),
  KEY `FKOrderLine92473_idx` (`OrderID`),
  CONSTRAINT `FKOrderLine353730` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ID`),
  CONSTRAINT `FKOrderLine92473` FOREIGN KEY (`OrderID`) REFERENCES `onlineorder` (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (1,1,7,NULL),(2,1,3,NULL);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Amount` bigint(19) DEFAULT NULL,
  `Method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `DateOfBirth` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `IdCard` varchar(255) DEFAULT NULL,
  `AccountID` int(10) NOT NULL,
  `FullNameID` int(10) NOT NULL,
  `ContactInforID` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKPerson575894` (`AccountID`),
  KEY `FKPerson905904` (`FullNameID`),
  KEY `FKPerson823352` (`ContactInforID`),
  CONSTRAINT `FKPerson575894` FOREIGN KEY (`AccountID`) REFERENCES `account` (`ID`),
  CONSTRAINT `FKPerson823352` FOREIGN KEY (`ContactInforID`) REFERENCES `contactinfor` (`ID`),
  CONSTRAINT `FKPerson905904` FOREIGN KEY (`FullNameID`) REFERENCES `fullname` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'2019-04-18','Female','21342342134',1,1,1),(2,'2019-11-04','Male','241215432563245',3,2,2);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CustomerCareStaffPersonID` int(10) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `AuthorName` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKPost325065` (`CustomerCareStaffPersonID`),
  CONSTRAINT `FKPost325065` FOREIGN KEY (`CustomerCareStaffPersonID`) REFERENCES `customercarestaff` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ItemID` int(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Percent` double DEFAULT NULL,
  `ExpiredDate` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKPromotion748376` (`ItemID`),
  CONSTRAINT `FKPromotion748376` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,NULL,NULL),(2,NULL,NULL);
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrcode`
--

DROP TABLE IF EXISTS `qrcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrcode` (
  `PaymentID` int(10) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  CONSTRAINT `FKQRCode252273` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrcode`
--

LOCK TABLES `qrcode` WRITE;
/*!40000 ALTER TABLE `qrcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `PersonID` int(10) NOT NULL,
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `FKSeller781231` FOREIGN KEY (`PersonID`) REFERENCES `person` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Region` varchar(255) DEFAULT NULL,
  `Cost` varchar(255) DEFAULT NULL,
  `DelayDate` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippingaddress`
--

DROP TABLE IF EXISTS `shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippingaddress` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Note` varchar(255) DEFAULT NULL,
  `addressID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `shipping_address_idx` (`addressID`),
  CONSTRAINT `shipping_address` FOREIGN KEY (`addressID`) REFERENCES `address` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippingaddress`
--

LOCK TABLES `shippingaddress` WRITE;
/*!40000 ALTER TABLE `shippingaddress` DISABLE KEYS */;
INSERT INTO `shippingaddress` VALUES (1,'8h - 16h',33);
/*!40000 ALTER TABLE `shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer`
--

DROP TABLE IF EXISTS `transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer` (
  `PaymentID` int(10) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  CONSTRAINT `FKTransfer17805` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer`
--

LOCK TABLES `transfer` WRITE;
/*!40000 ALTER TABLE `transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `DiscountPercent` double NOT NULL,
  `DiscountAmount` bigint(19) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES (1,'0',0,0,'0');
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Books` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,NULL),(2,NULL);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist_book`
--

DROP TABLE IF EXISTS `wishlist_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist_book` (
  `WishlistID` int(10) NOT NULL,
  `BookID` int(10) NOT NULL,
  PRIMARY KEY (`WishlistID`,`BookID`),
  KEY `FKWishlist_B23781` (`BookID`),
  CONSTRAINT `FKWishlist_B23781` FOREIGN KEY (`BookID`) REFERENCES `book` (`ID`),
  CONSTRAINT `FKWishlist_B254017` FOREIGN KEY (`WishlistID`) REFERENCES `wishlist` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist_book`
--

LOCK TABLES `wishlist_book` WRITE;
/*!40000 ALTER TABLE `wishlist_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workschedule`
--

DROP TABLE IF EXISTS `workschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workschedule` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Month` varchar(255) DEFAULT NULL,
  `Year` varchar(255) DEFAULT NULL,
  `Employee_WorkSchedules` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workschedule`
--

LOCK TABLES `workschedule` WRITE;
/*!40000 ALTER TABLE `workschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `workschedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-07 11:20:57
