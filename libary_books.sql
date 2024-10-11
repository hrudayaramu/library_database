-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: libary
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `AuthorID` int DEFAULT NULL,
  `PublisherID` int DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `ISBN` varchar(13) DEFAULT NULL,
  `PublishYear` int DEFAULT NULL,
  `CopiesAvailable` int DEFAULT '0',
  PRIMARY KEY (`BookID`),
  UNIQUE KEY `ISBN` (`ISBN`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `CategoryID` (`CategoryID`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `authors` (`AuthorID`),
  CONSTRAINT `books_ibfk_2` FOREIGN KEY (`PublisherID`) REFERENCES `publishers` (`PublisherID`),
  CONSTRAINT `books_ibfk_3` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (41,'Harry Potter and the Philosopher\'s Stone',1,1,3,'9780747532699',1997,5),(42,'1984',2,2,2,'9780451524935',1949,3),(43,'The Great Gatsby',3,3,1,'9780743273565',1925,4),(44,'To Kill a Mockingbird',4,4,1,'9780061120084',1960,6),(45,'The Hobbit',5,5,3,'9780547928227',1937,7),(46,'Murder on the Orient Express',6,6,4,'9780062693662',1934,8),(47,'Pride and Prejudice',7,7,1,'9780679783268',1995,5),(48,'Adventures of Huckleberry Finn',8,8,1,'9780486280615',1884,6),(49,'A Tale of Two Cities',9,9,5,'9780486406510',1859,9),(50,'War and Peace',10,10,5,'9780199232765',1869,2),(51,'Harry Potter and the Chamber of Secrets',1,1,3,'9780747538486',1998,6),(52,'Animal Farm',2,2,2,'9780451526342',1945,5),(53,'The Catcher in the Rye',3,3,1,'9780316769488',1951,3),(54,'The Lord of the Rings',5,5,3,'9780544003415',1954,4),(55,'The Mysterious Affair at Styles',6,6,4,'9780062073944',1920,5),(56,'Emma',7,7,1,'9780141439587',2002,7),(57,'Great Expectations',9,9,1,'9780141439563',1861,3),(58,'Anna Karenina',10,10,5,'9780140449174',1878,4),(59,'Harry Potter and the Prisoner of Azkaban',1,1,3,'9780747542155',1999,8),(60,'Harry Potter and the Goblet of Fire',1,1,3,'9780747546245',2000,10);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-11  7:55:52
