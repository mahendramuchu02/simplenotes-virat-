-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: viratproject
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `filedata`
--

DROP TABLE IF EXISTS `filedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filedata` (
  `fid` int unsigned NOT NULL AUTO_INCREMENT,
  `fdata` blob,
  `filename` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` int DEFAULT NULL,
  PRIMARY KEY (`fid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `filedata_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filedata`
--

LOCK TABLES `filedata` WRITE;
/*!40000 ALTER TABLE `filedata` DISABLE KEYS */;
INSERT INTO `filedata` VALUES (1,_binary 'from flask import Flask,request,redirect,url_for\r\napp=Flask(__name__)\r\n@app.route(\'/\')\r\ndef home():\r\n    return \"welcome to flask sessions\"\r\n@app.route(\'/second\')\r\ndef second():\r\n    return \"<center>we are in second page</center>\"\r\n@app.route(\'/third\')\r\ndef third():\r\n    return \"we are in third page\"\r\n@app.route(\'/fourth\')\r\ndef fourth():\r\n    return \"<h1>we are in fourth page</h1>\"\r\n# validating marks\r\n@app.route(\'/result\')\r\ndef result():\r\n    print(request.args)\r\n    marks=int(request.args.get(\'marks\'))\r\n   \r\n    if marks>35 and marks<=100:\r\n        return \'passed\'\r\n    elif marks<35 and marks>=0:\r\n        return \"failed\"\r\n    else:\r\n        return \'invalid value\'\r\n@app.route(\'/largenumber\')\r\ndef large():\r\n    a=int(request.args.get(\'a\'))\r\n    b=int(request.args.get(\'b\'))\r\n    c=int(request.args.get(\'c\'))\r\n    if a==b and b==c and c==a:\r\n        return \"all are equal\"\r\n    elif a>=b and a>=c:\r\n        return \'a is bigger\'\r\n    elif b>=a and b>=c:\r\n        return \'b is bigger\'\r\n    elif c>=a and c>=b:\r\n        return \'c is bigger\'\r\n    \r\n    else:\r\n        return \'invalid\'\r\n@app.route(\'/largenum\')\r\ndef largenum():\r\n    if a>b and a>c:\r\n        return f\'{a} is large\'\r\n    elif b>c:\r\n        return f\'{b} is large\'\r\n    elif c>b:\r\n        return f\'{c} is large\'\r\n    elif a==b and a>c:\r\n        return f\'{a},{b} are large\'\r\n    elif b==c and b>a:\r\n        return f\'{b},{c} are large\'\r\n    elif a==c and a>b:\r\n        return f\'{a},{c} are large\'\r\n    elif a==b and b==c:\r\n        return f\'{a},{b},{c} are large\'\r\n    else:\r\n        return \'invalid\'\r\n@app.route(\'/choosemenu\') \r\ndef choosemenu():\r\n    ordtype=request.args.get(\'ordtype\')#veg\r\n    if ordtype==\'nonveg\':\r\n        return redirect(\' http://127.0.0.1:5000/nonveg\') \r\n    elif ordtype==\'veg\':\r\n        return redirect(\' http://127.0.0.1:5000/veg\')  \r\n    else:\r\n        return \'invalid menu\'  \r\n@app.route(\'/nonveg\')\r\ndef nonveg():\r\n    return \'chicken and mutton\'\r\n@app.route(\'/veg\')\r\ndef veg():\r\n    return \'pappu and sambar and appadam\'                      \r\n    \r\n@app.route(\'/prime\')\r\ndef prime():\r\n    num1=int(request.args.get(\'num1\'))\r\n    flag=False\r\n    if num1>1:\r\n        for i in range(2,num1):\r\n            if num1%i==0:\r\n                flag=True\r\n                break\r\n    if flag==True:\r\n        return \" not prime\"\r\n    else:\r\n        return \"prime\" \r\n@app.route(\'/details/<name>\')\r\ndef details(name):\r\n    return name  \r\n@app.route(\'/lib\')          \r\ndef lib(): \r\n    return \"hello rishi\"      \r\napp.run(use_reloader=True,debug=True) ','app.py','2024-12-19 11:51:18',3),(2,_binary 'salt=\'otpconfirmation\'','key.py','2024-12-19 14:28:00',3),(3,_binary 'salt=\'otpconfirmation\'','key.py','2024-12-20 17:31:14',3);
/*!40000 ALTER TABLE `filedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `ndescription` text,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `title` (`title`),
  KEY `userid` (`userid`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Silence','the name of some ones ','2024-12-17 11:53:07',3),(3,'Rishi ','The loyal boy','2024-12-18 12:22:49',3),(4,'lihkith','he is introvert but he is not introvert','2024-12-18 12:24:21',3),(5,'vamsi','he is funny guy','2024-12-18 12:24:37',3),(6,'sai kiran ','the lover boy','2024-12-18 12:24:48',3),(7,'sai kumar','endhukandi veellu','2024-12-18 22:01:36',3),(9,'hi','he;lo','2024-12-20 17:31:06',3);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `password` varbinary(10) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'rishi','muchumahendra764@gmail.com',_binary '123'),(4,'rishi','bindumounikakanneganti@gmail.com',_binary '143');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-23 11:49:17
