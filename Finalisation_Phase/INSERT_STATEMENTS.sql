-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airbnb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Dumping data for table `access_level`
--

-- Lock tables access_level for writing and disable keys
LOCK TABLES `access_level` WRITE;
/*!40000 ALTER TABLE `access_level` DISABLE KEYS */;

-- Insert data into access_level table
INSERT INTO `access_level` VALUES (1,'Admin');
INSERT INTO `access_level` VALUES (2,'Moderator');
INSERT INTO `access_level` VALUES (3,'User');
INSERT INTO `access_level` VALUES (4,'Guest');
INSERT INTO `access_level` VALUES (5,'Manager');
INSERT INTO `access_level` VALUES (6,'Editor');
INSERT INTO `access_level` VALUES (7,'Analyst');
INSERT INTO `access_level` VALUES (8,'Developer');
INSERT INTO `access_level` VALUES (9,'Tester');
INSERT INTO `access_level` VALUES (10,'Auditor');
INSERT INTO `access_level` VALUES (11,'Supervisor');
INSERT INTO `access_level` VALUES (12,'Coordinator');
INSERT INTO `access_level` VALUES (13,'Consultant');
INSERT INTO `access_level` VALUES (14,'Assistant');
INSERT INTO `access_level` VALUES (15,'Designer');
INSERT INTO `access_level` VALUES (16,'Agent');
INSERT INTO `access_level` VALUES (17,'Specialist');
INSERT INTO `access_level` VALUES (18,'Executive');
INSERT INTO `access_level` VALUES (19,'Investigator');
INSERT INTO `access_level` VALUES (20,'Operator');

/*!40000 ALTER TABLE `access_level` ENABLE KEYS */;

-- Unlock tables access_level
UNLOCK TABLES;

-- Lock tables access_level_operations for writing and disable keys
LOCK TABLES `access_level_operations` WRITE;
/*!40000 ALTER TABLE `access_level_operations` DISABLE KEYS */;

-- Insert data into access_level_operations table
INSERT INTO `access_level_operations` VALUES (1,1,1);
INSERT INTO `access_level_operations` VALUES (2,2,1);
INSERT INTO `access_level_operations` VALUES (3,3,2);
INSERT INTO `access_level_operations` VALUES (4,4,2);
INSERT INTO `access_level_operations` VALUES (5,5,3);
INSERT INTO `access_level_operations` VALUES (6,6,3);
INSERT INTO `access_level_operations` VALUES (7,7,4);
INSERT INTO `access_level_operations` VALUES (8,8,4);
INSERT INTO `access_level_operations` VALUES (9,9,5);
INSERT INTO `access_level_operations` VALUES (10,10,5);
INSERT INTO `access_level_operations` VALUES (11,11,5);
INSERT INTO `access_level_operations` VALUES (12,12,6);
INSERT INTO `access_level_operations` VALUES (13,13,6);
INSERT INTO `access_level_operations` VALUES (14,14,6);
INSERT INTO `access_level_operations` VALUES (15,15,7);
INSERT INTO `access_level_operations` VALUES (16,16,7);
INSERT INTO `access_level_operations` VALUES (17,17,8);
INSERT INTO `access_level_operations` VALUES (18,18,9);
INSERT INTO `access_level_operations` VALUES (19,19,10);
INSERT INTO `access_level_operations` VALUES (20,20,11);
INSERT INTO `access_level_operations` VALUES (21,21,12);
INSERT INTO `access_level_operations` VALUES (22,22,13);
INSERT INTO `access_level_operations` VALUES (23,23,14);
INSERT INTO `access_level_operations` VALUES (24,24,15);
INSERT INTO `access_level_operations` VALUES (25,25,16);
INSERT INTO `access_level_operations` VALUES (26,26,17);
INSERT INTO `access_level_operations` VALUES (27,27,18);
INSERT INTO `access_level_operations` VALUES (28,28,19);
INSERT INTO `access_level_operations` VALUES (29,28,20);

/*!40000 ALTER TABLE `access_level_operations` ENABLE KEYS */;

-- Unlock tables access_level_operations
UNLOCK TABLES;

-- Lock tables address for writing and disable keys
LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;

-- Insert data into address table
INSERT INTO `address` VALUES (30,11,11,'400020','321 Marine Drive','N/A');
INSERT INTO `address` VALUES (31,15,15,'06164','987 Gangnam-gu','N/A');
INSERT INTO `address` VALUES (32,24,24,'10310','101 Thamrin Street','N/A');
INSERT INTO `address` VALUES (33,3,3,'SW1W 9SJ','123 Buckingham Palace Road','Floor 3');
INSERT INTO `address` VALUES (34,3,3,'W1B 4HZ','987 Regent Street','N/A');
INSERT INTO `address` VALUES (35,20,20,'1160','567 Strøget Street','N/A');
INSERT INTO `address` VALUES (36,6,6,'75008','890 Avenue des Champs-Élysées','N/A');
INSERT INTO `address` VALUES (37,1,1,'94085','123 Main Street','Suite 100');
INSERT INTO `address` VALUES (38,1,1,'94085','456 Elm Avenue','Building A, Unit 101');
INSERT INTO `address` VALUES (39,4,4,'2000','987 George Street','Suite 500');
INSERT INTO `address` VALUES (40,2,2,'M5J 2T3','789 Bay Street','Floor 10, Suite 1001');
INSERT INTO `address` VALUES (41,9,9,'104-0061','234 Ginza Street','N/A');
INSERT INTO `address` VALUES (42,21,21,'238841','123 Orchard Road','N/A');
INSERT INTO `address` VALUES (43,12,12,'01310-100','456 Avenida Paulista','N/A');
INSERT INTO `address` VALUES (44,25,25,'2196','234 Sandton City','N/A');
INSERT INTO `address` VALUES (45,25,25,'2196','567 Rosebank Road','Building C, Unit 501');
INSERT INTO `address` VALUES (46,25,25,'2196','789 Midrand Avenue','Suite 1002');
INSERT INTO `address` VALUES (47,23,23,'10110','456 Sukhumvit Road','N/A');
INSERT INTO `address` VALUES (48,8,8,'08007','789 Passeig de Gràcia','N/A');
INSERT INTO `address` VALUES (49,22,22,'55100','789 Bukit Bintang Road','N/A');
INSERT INTO `address` VALUES (50,14,14,'125009','753 Tverskaya Street','Building 2, Apartment 5');
INSERT INTO `address` VALUES (51,17,17,'8001','456 Bahnhofstrasse','N/A');
INSERT INTO `address` VALUES (52,17,17,'8050','789 Oerlikon Road','N/A');
INSERT INTO `address` VALUES (53,5,5,'80331','345 Marienplatz','Building 2, Floor 3');
INSERT INTO `address` VALUES (54,5,5,'80331','567 Sendlinger Strasse','N/A');
INSERT INTO `address` VALUES (55,5,5,'80331','789 Odeonsplatz','Unit 201');
INSERT INTO `address` VALUES (56,18,18,'111 43','987 Drottninggatan','N/A');
INSERT INTO `address` VALUES (57,7,7,'00186','456 Via del Corso','N/A');
INSERT INTO `address` VALUES (58,16,16,'1012JS','123 Dam Square','N/A');

/*!40000 ALTER TABLE `address` ENABLE KEYS */;

-- Unlock tables address
UNLOCK TABLES;

-- Lock tables admin for writing and disable keys
LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;

-- Insert data into admin table
INSERT INTO `admin` VALUES (1,116,3);
INSERT INTO `admin` VALUES (2,116,4);
INSERT INTO `admin` VALUES (3,116,5);
INSERT INTO `admin` VALUES (4,116,20);
INSERT INTO `admin` VALUES (5,117,3);
INSERT INTO `admin` VALUES (6,117,4);
INSERT INTO `admin` VALUES (7,117,5);
INSERT INTO `admin` VALUES (8,118,3);
INSERT INTO `admin` VALUES (9,118,4);
INSERT INTO `admin` VALUES (10,118,11);
INSERT INTO `admin` VALUES (11,119,3);
INSERT INTO `admin` VALUES (12,119,4);
INSERT INTO `admin` VALUES (13,119,5);
INSERT INTO `admin` VALUES (14,120,3);
INSERT INTO `admin` VALUES (15,120,4);
INSERT INTO `admin` VALUES (16,120,5);
INSERT INTO `admin` VALUES (17,121,3);
INSERT INTO `admin` VALUES (18,121,4);
INSERT INTO `admin` VALUES (19,121,5);
INSERT INTO `admin` VALUES (20,122,3);
INSERT INTO `admin` VALUES (21,122,4);
INSERT INTO `admin` VALUES (22,122,5);
INSERT INTO `admin` VALUES (23,123,3);
INSERT INTO `admin` VALUES (24,123,4);
INSERT INTO `admin` VALUES (25,123,5);
INSERT INTO `admin` VALUES (26,124,3);
INSERT INTO `admin` VALUES (27,124,4);
INSERT INTO `admin` VALUES (28,124,5);
INSERT INTO `admin` VALUES (29,125,3);
INSERT INTO `admin` VALUES (30,125,4);
INSERT INTO `admin` VALUES (31,125,5);
INSERT INTO `admin` VALUES (32,126,3);
INSERT INTO `admin` VALUES (33,126,4);
INSERT INTO `admin` VALUES (34,126,5);
INSERT INTO `admin` VALUES (35,127,3);
INSERT INTO `admin` VALUES (36,127,4);
INSERT INTO `admin` VALUES (37,127,15);
INSERT INTO `admin` VALUES (38,128,3);
INSERT INTO `admin` VALUES (39,128,4);
INSERT INTO `admin` VALUES (40,128,1);
INSERT INTO `admin` VALUES (41,129,3);
INSERT INTO `admin` VALUES (42,129,4);
INSERT INTO `admin` VALUES (43,129,1);
INSERT INTO `admin` VALUES (44,129,11);
INSERT INTO `admin` VALUES (45,130,3);
INSERT INTO `admin` VALUES (46,130,4);
INSERT INTO `admin` VALUES (47,130,1);
INSERT INTO `admin` VALUES (48,130,12);
INSERT INTO `admin` VALUES (49,131,3);
INSERT INTO `admin` VALUES (50,131,4);
INSERT INTO `admin` VALUES (51,131,13);
INSERT INTO `admin` VALUES (52,132,3);
INSERT INTO `admin` VALUES (53,132,4);
INSERT INTO `admin` VALUES (54,132,5);
INSERT INTO `admin` VALUES (55,133,3);
INSERT INTO `admin` VALUES (56,133,4);
INSERT INTO `admin` VALUES (57,133,14);
INSERT INTO `admin` VALUES (58,134,3);
INSERT INTO `admin` VALUES (59,134,4);
INSERT INTO `admin` VALUES (60,134,16);
INSERT INTO `admin` VALUES (61,135,3);
INSERT INTO `admin` VALUES (62,135,4);
INSERT INTO `admin` VALUES (63,135,17);
INSERT INTO `admin` VALUES (64,136,3);
INSERT INTO `admin` VALUES (65,136,4);
INSERT INTO `admin` VALUES (66,136,18);
INSERT INTO `admin` VALUES (67,136,10);
INSERT INTO `admin` VALUES (68,137,3);
INSERT INTO `admin` VALUES (69,137,4);
INSERT INTO `admin` VALUES (70,137,9);
INSERT INTO `admin` VALUES (71,137,7);
INSERT INTO `admin` VALUES (72,138,3);
INSERT INTO `admin` VALUES (73,138,4);
INSERT INTO `admin` VALUES (74,138,5);
INSERT INTO `admin` VALUES (75,138,11);
INSERT INTO `admin` VALUES (76,139,3);
INSERT INTO `admin` VALUES (77,139,4);
INSERT INTO `admin` VALUES (78,139,8);
INSERT INTO `admin` VALUES (79,140,3);
INSERT INTO `admin` VALUES (80,140,4);
INSERT INTO `admin` VALUES (81,140,6);
INSERT INTO `admin` VALUES (82,140,16);
INSERT INTO `admin` VALUES (83,141,3);
INSERT INTO `admin` VALUES (84,141,4);
INSERT INTO `admin` VALUES (85,141,1);
INSERT INTO `admin` VALUES (86,142,3);
INSERT INTO `admin` VALUES (87,142,4);
INSERT INTO `admin` VALUES (88,142,1);
INSERT INTO `admin` VALUES (89,142,20);
INSERT INTO `admin` VALUES (90,143,3);
INSERT INTO `admin` VALUES (91,143,4);
INSERT INTO `admin` VALUES (92,143,1);
INSERT INTO `admin` VALUES (93,143,12);
INSERT INTO `admin` VALUES (94,144,3);
INSERT INTO `admin` VALUES (95,144,4);
INSERT INTO `admin` VALUES (96,144,19);
INSERT INTO `admin` VALUES (97,144,9);
INSERT INTO `admin` VALUES (98,145,3);
INSERT INTO `admin` VALUES (99,145,4);
INSERT INTO `admin` VALUES (100,145,11);
INSERT INTO `admin` VALUES (101,145,6);
INSERT INTO `admin` VALUES (102,146,3);
INSERT INTO `admin` VALUES (103,146,4);
INSERT INTO `admin` VALUES (104,146,11);
INSERT INTO `admin` VALUES (105,146,7);
INSERT INTO `admin` VALUES (106,147,3);
INSERT INTO `admin` VALUES (107,147,4);
INSERT INTO `admin` VALUES (108,147,9);
INSERT INTO `admin` VALUES (109,147,8);
INSERT INTO `admin` VALUES (110,148,3);
INSERT INTO `admin` VALUES (111,148,4);
INSERT INTO `admin` VALUES (112,148,11);
INSERT INTO `admin` VALUES (113,148,8);
INSERT INTO `admin` VALUES (114,149,3);
INSERT INTO `admin` VALUES (115,149,4);
INSERT INTO `admin` VALUES (116,149,11);
INSERT INTO `admin` VALUES (117,149,6);
INSERT INTO `admin` VALUES (118,150,3);
INSERT INTO `admin` VALUES (119,150,4);
INSERT INTO `admin` VALUES (120,150,20);
INSERT INTO `admin` VALUES (121,150,14);
INSERT INTO `admin` VALUES (122,151,3);
INSERT INTO `admin` VALUES (123,151,4);
INSERT INTO `admin` VALUES (124,151,11);
INSERT INTO `admin` VALUES (125,152,3);
INSERT INTO `admin` VALUES (126,152,4);
INSERT INTO `admin` VALUES (127,152,19);
INSERT INTO `admin` VALUES (128,153,3);
INSERT INTO `admin` VALUES (129,153,4);
INSERT INTO `admin` VALUES (130,153,5);
INSERT INTO `admin` VALUES (131,154,3);
INSERT INTO `admin` VALUES (132,154,4);
INSERT INTO `admin` VALUES (133,154,5);
INSERT INTO `admin` VALUES (134,155,3);
INSERT INTO `admin` VALUES (135,155,4);
INSERT INTO `admin` VALUES (136,155,1);
INSERT INTO `admin` VALUES (137,156,3);
INSERT INTO `admin` VALUES (138,156,4);
INSERT INTO `admin` VALUES (139,156,5);

/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Unlock tables admin
UNLOCK TABLES;

--
-- Dumping data for table `allowed_operations`
--

LOCK TABLES `allowed_operations` WRITE;
/*!40000 ALTER TABLE `allowed_operations` DISABLE KEYS */;
INSERT INTO `allowed_operations` VALUES (1,'CRUD','Allows full access to create, read, update, and delete operations across all system functionalities and settings.');
INSERT INTO `allowed_operations` VALUES (2,'Manage Users','Allows the admin to manage user accounts, permissions, and roles within the system.');
INSERT INTO `allowed_operations` VALUES (3,'Moderate Content','Allows the moderator to review, approve, or reject user-generated content to ensure quality and compliance.');
INSERT INTO `allowed_operations` VALUES (4,'Report Violations','Allows the moderator to report and handle violations or inappropriate content according to platform guidelines.');
INSERT INTO `allowed_operations` VALUES (5,'View Content','Allows users to view or access content and functionalities within the system.');
INSERT INTO `allowed_operations` VALUES (6,'Update Profile','Allows users to update their profile information and settings.');
INSERT INTO `allowed_operations` VALUES (7,'Browse','Allows guests to browse content and view information without requiring account login.');
INSERT INTO `allowed_operations` VALUES (8,'Search Listings','Allows guests to search and view listings or available items/services.');
INSERT INTO `allowed_operations` VALUES (9,'Manage Teams','Allows the manager to create, modify, or delete teams and assign tasks within the team.');
INSERT INTO `allowed_operations` VALUES (10,'Generate Reports','Allows the manager to generate and analyze reports for performance tracking and decision-making.');
INSERT INTO `allowed_operations` VALUES (11,'Approve Requests','Allows the manager to approve or deny requests from team members or other users.');
INSERT INTO `allowed_operations` VALUES (12,'Edit Content','Allows the editor to create, edit, and publish content such as articles, posts, or documents.');
INSERT INTO `allowed_operations` VALUES (13,'Review Edits','Allows the editor to review and approve edits made by other users before publication.');
INSERT INTO `allowed_operations` VALUES (14,'Manage Drafts','Allows the editor to manage drafts and content in progress.');
INSERT INTO `allowed_operations` VALUES (15,'Analyze Data','Allows the analyst to analyze and interpret data using data analysis tools and techniques.');
INSERT INTO `allowed_operations` VALUES (16,'Generate Insights','Allows the analyst to generate insights and recommendations based on data analysis.');
INSERT INTO `allowed_operations` VALUES (17,'Develop Features','Allows the developer to create, test, and implement new features or functionalities within the system.');
INSERT INTO `allowed_operations` VALUES (18,'Test Functionality','Allows the tester to perform testing operations to ensure functionality, usability, and quality of the system.');
INSERT INTO `allowed_operations` VALUES (19,'Supervise Projects','Allows the supervisor to oversee and manage specific projects, tasks, or teams within the system.');
INSERT INTO `allowed_operations` VALUES (20,'Coordinate Tasks','Allows the coordinator to assign, track, and manage tasks or activities within the system.');
INSERT INTO `allowed_operations` VALUES (21,'Consult Clients','Allows the consultant to provide consultation, advice, or support to clients or users within the system.');
INSERT INTO `allowed_operations` VALUES (22,'Manage Calendar','Allows the assistant to manage calendars, schedules, or appointments.');
INSERT INTO `allowed_operations` VALUES (23,'Design Interfaces','Allows the designer to create, design, and customize user interfaces or visual elements within the system.');
INSERT INTO `allowed_operations` VALUES (24,'Manage Clients','Allows the agent to manage client relationships, communications, and interactions within the system.');
INSERT INTO `allowed_operations` VALUES (25,'Specialized Tasks','Allows the specialist to perform specialized tasks or operations within the system.');
INSERT INTO `allowed_operations` VALUES (26,'Executive Decisions','Allows the executive to make decisions, review reports, and oversee strategic initiatives within the system.');
INSERT INTO `allowed_operations` VALUES (27,'Investigate Incidents','Allows the investigator to investigate and analyze incidents, issues, or data within the system.');
INSERT INTO `allowed_operations` VALUES (28,'Operate Systems','Allows the operator to perform operational tasks and manage system operations.');
/*!40000 ALTER TABLE `allowed_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `amenity`
--

LOCK TABLES `amenity` WRITE;
/*!40000 ALTER TABLE `amenity` DISABLE KEYS */;
INSERT INTO `amenity` VALUES (1,1,'High-Speed WiFi','High-speed internet access for seamless browsing and streaming.');
INSERT INTO `amenity` VALUES (2,2,'Central Air Conditioning','Central air conditioning system for optimal climate control.');
INSERT INTO `amenity` VALUES (3,3,'Central Heating','Central heating system to keep the space comfortably warm.');
INSERT INTO `amenity` VALUES (4,4,'Fully Equipped Kitchen','Kitchen equipped with modern appliances and cookware for meal preparation.');
INSERT INTO `amenity` VALUES (5,5,'Free Parking','Complimentary parking available on the premises.');
INSERT INTO `amenity` VALUES (6,6,'Private Pool','Private pool for exclusive use by guests.');
INSERT INTO `amenity` VALUES (7,7,'Hot Tub','Relaxing hot tub for guests to unwind and rejuvenate.');
INSERT INTO `amenity` VALUES (8,8,'Fitness Center','On-site fitness center equipped with exercise machines.');
INSERT INTO `amenity` VALUES (9,9,'Continental Breakfast','Complimentary continental breakfast served daily.');
INSERT INTO `amenity` VALUES (10,10,'Pet-Friendly Accommodations','Pet-friendly accommodations allowing guests to bring their pets.');
INSERT INTO `amenity` VALUES (11,11,'Smoking Allowed','Designated areas where smoking is permitted.');
INSERT INTO `amenity` VALUES (12,12,'Essential Amenities','Basic amenities such as towels, bed sheets, soap, and toilet paper provided.');
INSERT INTO `amenity` VALUES (13,13,'Hair Dryer','Hair dryer available for guest use.');
INSERT INTO `amenity` VALUES (14,14,'Washing Machine','Washing machine provided for guest laundry needs.');
INSERT INTO `amenity` VALUES (15,15,'Dryer','Dryer available for guest use.');
INSERT INTO `amenity` VALUES (16,16,'Smart TV','Smart TV with streaming capabilities for entertainment.');
INSERT INTO `amenity` VALUES (17,17,'Cable TV','Cable television channels available for guest viewing.');
INSERT INTO `amenity` VALUES (18,18,'Fireplace','Cozy fireplace for warmth and ambiance.');
INSERT INTO `amenity` VALUES (19,19,'Elevator','Elevator access for convenience and accessibility.');
INSERT INTO `amenity` VALUES (20,20,'Outdoor Grill','Outdoor grill for barbecue and outdoor cooking.');
INSERT INTO `amenity` VALUES (21,1,'Private Balcony','Private balcony with scenic views.');
INSERT INTO `amenity` VALUES (22,2,'Ceiling Fans','Ceiling fans for added comfort and air circulation.');
INSERT INTO `amenity` VALUES (23,3,'Radiant Floor Heating','Radiant floor heating for cozy floors.');
INSERT INTO `amenity` VALUES (24,4,'Dishwasher','Dishwasher for easy cleanup after meals.');
INSERT INTO `amenity` VALUES (25,5,'Valet Parking','Valet parking services for guest vehicles.');
/*!40000 ALTER TABLE `amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `amenity_category`
--

LOCK TABLES `amenity_category` WRITE;
/*!40000 ALTER TABLE `amenity_category` DISABLE KEYS */;
INSERT INTO `amenity_category` VALUES (1,'WiFi');
INSERT INTO `amenity_category` VALUES (2,'Air Conditioning');
INSERT INTO `amenity_category` VALUES (3,'Heating');
INSERT INTO `amenity_category` VALUES (4,'Kitchen');
INSERT INTO `amenity_category` VALUES (5,'Free Parking on Premises');
INSERT INTO `amenity_category` VALUES (6,'Pool');
INSERT INTO `amenity_category` VALUES (7,'Hot Tub');
INSERT INTO `amenity_category` VALUES (8,'Gym');
INSERT INTO `amenity_category` VALUES (9,'Breakfast');
INSERT INTO `amenity_category` VALUES (10,'Pet Friendly');
INSERT INTO `amenity_category` VALUES (11,'Smoking Allowed');
INSERT INTO `amenity_category` VALUES (12,'Essentials (Towels, Bed Sheets, Soap, Toilet Paper)');
INSERT INTO `amenity_category` VALUES (13,'Hair Dryer');
INSERT INTO `amenity_category` VALUES (14,'Washer');
INSERT INTO `amenity_category` VALUES (15,'Dryer');
INSERT INTO `amenity_category` VALUES (16,'TV');
INSERT INTO `amenity_category` VALUES (17,'Cable TV');
INSERT INTO `amenity_category` VALUES (18,'Fireplace');
INSERT INTO `amenity_category` VALUES (19,'Elevator');
INSERT INTO `amenity_category` VALUES (20,'Indoor Fireplace');
/*!40000 ALTER TABLE `amenity_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'United States','US');
INSERT INTO `country` VALUES (2,'Canada','CA');
INSERT INTO `country` VALUES (3,'United Kingdom','UK');
INSERT INTO `country` VALUES (4,'Australia','AU');
INSERT INTO `country` VALUES (5,'Germany','DE');
INSERT INTO `country` VALUES (6,'France','FR');
INSERT INTO `country` VALUES (7,'Italy','IT');
INSERT INTO `country` VALUES (8,'Spain','ES');
INSERT INTO `country` VALUES (9,'Japan','JP');
INSERT INTO `country` VALUES (10,'China','CN');
INSERT INTO `country` VALUES (11,'India','IN');
INSERT INTO `country` VALUES (12,'Brazil','BR');
INSERT INTO `country` VALUES (13,'Mexico','MX');
INSERT INTO `country` VALUES (14,'Russia','RU');
INSERT INTO `country` VALUES (15,'South Korea','KR');
INSERT INTO `country` VALUES (16,'Netherlands','NL');
INSERT INTO `country` VALUES (17,'Switzerland','CH');
INSERT INTO `country` VALUES (18,'Sweden','SE');
INSERT INTO `country` VALUES (19,'Norway','NO');
INSERT INTO `country` VALUES (20,'Denmark','DK');
INSERT INTO `country` VALUES (21,'Singapore','SG');
INSERT INTO `country` VALUES (22,'Malaysia','MY');
INSERT INTO `country` VALUES (23,'Thailand','TH');
INSERT INTO `country` VALUES (24,'Indonesia','ID');
INSERT INTO `country` VALUES (25,'South Africa','ZA');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,1,'Silicon Valley',9,8,3000000);
INSERT INTO `district` VALUES (2,2,'Greater Toronto Area',7,9,6000000);
INSERT INTO `district` VALUES (3,3,'Greater London',8,7,8000000);
INSERT INTO `district` VALUES (4,4,'Greater Sydney',7,8,5000000);
INSERT INTO `district` VALUES (5,5,'Munich Metropolitan Region',8,8,3000000);
INSERT INTO `district` VALUES (6,6,'Greater Paris',9,7,12000000);
INSERT INTO `district` VALUES (7,7,'Rome Metropolitan Area',7,8,4000000);
INSERT INTO `district` VALUES (8,8,'Barcelona Metropolitan Area',8,9,5000000);
INSERT INTO `district` VALUES (9,9,'Greater Tokyo',9,8,14000000);
INSERT INTO `district` VALUES (10,10,'Beijing Metropolitan Area',8,7,20000000);
INSERT INTO `district` VALUES (11,11,'Mumbai Metropolitan Region',7,8,18000000);
INSERT INTO `district` VALUES (12,12,'São Paulo Metropolitan Region',8,9,20000000);
INSERT INTO `district` VALUES (13,13,'Mexico City Metropolitan Area',7,8,12000000);
INSERT INTO `district` VALUES (14,14,'Moscow Metropolitan Area',8,7,22000000);
INSERT INTO `district` VALUES (15,15,'Seoul Metropolitan Area',9,8,17000000);
INSERT INTO `district` VALUES (16,16,'Randstad',8,8,25000000);
INSERT INTO `district` VALUES (17,17,'Zurich Metropolitan Area',9,9,8000000);
INSERT INTO `district` VALUES (18,18,'Stockholm Metropolitan Area',7,9,2000000);
INSERT INTO `district` VALUES (19,19,'Oslo Metropolitan Area',8,8,2000000);
INSERT INTO `district` VALUES (20,20,'Copenhagen Metropolitan Area',9,9,1000000);
INSERT INTO `district` VALUES (21,21,'Central Area',8,8,2000000);
INSERT INTO `district` VALUES (22,22,'Kuala Lumpur Metropolitan Area',7,7,1000000);
INSERT INTO `district` VALUES (23,23,'Bangkok Metropolitan Region',8,8,8000000);
INSERT INTO `district` VALUES (24,24,'Jakarta Metropolitan Area',7,7,1000000);
INSERT INTO `district` VALUES (25,25,'Gauteng City-Region',8,9,30000000);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,116,1);
INSERT INTO `guest` VALUES (2,117,1);
INSERT INTO `guest` VALUES (3,118,1);
INSERT INTO `guest` VALUES (4,119,2);
INSERT INTO `guest` VALUES (5,120,2);
INSERT INTO `guest` VALUES (6,121,2);
INSERT INTO `guest` VALUES (7,122,3);
INSERT INTO `guest` VALUES (8,123,3);
INSERT INTO `guest` VALUES (9,124,4);
INSERT INTO `guest` VALUES (10,125,4);
INSERT INTO `guest` VALUES (11,126,5);
INSERT INTO `guest` VALUES (12,127,5);
INSERT INTO `guest` VALUES (13,128,6);
INSERT INTO `guest` VALUES (14,129,6);
INSERT INTO `guest` VALUES (15,130,7);
INSERT INTO `guest` VALUES (16,131,7);
INSERT INTO `guest` VALUES (17,132,8);
INSERT INTO `guest` VALUES (18,133,8);
INSERT INTO `guest` VALUES (19,134,9);
INSERT INTO `guest` VALUES (20,135,9);
INSERT INTO `guest` VALUES (21,136,10);
INSERT INTO `guest` VALUES (22,137,10);
INSERT INTO `guest` VALUES (23,138,11);
INSERT INTO `guest` VALUES (24,139,11);
INSERT INTO `guest` VALUES (25,140,12);
INSERT INTO `guest` VALUES (26,141,12);
INSERT INTO `guest` VALUES (27,142,13);
INSERT INTO `guest` VALUES (28,143,13);
INSERT INTO `guest` VALUES (29,144,14);
INSERT INTO `guest` VALUES (30,145,14);
INSERT INTO `guest` VALUES (31,146,15);
INSERT INTO `guest` VALUES (32,147,15);
INSERT INTO `guest` VALUES (33,148,16);
INSERT INTO `guest` VALUES (34,149,16);
INSERT INTO `guest` VALUES (35,150,17);
INSERT INTO `guest` VALUES (36,151,17);
INSERT INTO `guest` VALUES (37,152,18);
INSERT INTO `guest` VALUES (38,153,18);
INSERT INTO `guest` VALUES (39,154,19);
INSERT INTO `guest` VALUES (40,155,19);
INSERT INTO `guest` VALUES (41,156,20);
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `guest_reservations`
--

LOCK TABLES `guest_reservations` WRITE;
/*!40000 ALTER TABLE `guest_reservations` DISABLE KEYS */;
INSERT INTO `guest_reservations` VALUES (1,1,1,1);
INSERT INTO `guest_reservations` VALUES (2,2,2,2);
INSERT INTO `guest_reservations` VALUES (3,3,3,3);
INSERT INTO `guest_reservations` VALUES (4,4,4,4);
INSERT INTO `guest_reservations` VALUES (5,5,5,4);
INSERT INTO `guest_reservations` VALUES (6,6,6,2);
INSERT INTO `guest_reservations` VALUES (7,7,7,1);
INSERT INTO `guest_reservations` VALUES (8,8,8,1);
INSERT INTO `guest_reservations` VALUES (9,9,9,2);
INSERT INTO `guest_reservations` VALUES (10,10,10,2);
INSERT INTO `guest_reservations` VALUES (11,11,11,1);
INSERT INTO `guest_reservations` VALUES (12,12,12,1);
INSERT INTO `guest_reservations` VALUES (13,13,13,2);
INSERT INTO `guest_reservations` VALUES (14,14,14,3);
INSERT INTO `guest_reservations` VALUES (15,15,15,3);
INSERT INTO `guest_reservations` VALUES (16,16,16,1);
INSERT INTO `guest_reservations` VALUES (17,17,17,2);
INSERT INTO `guest_reservations` VALUES (18,18,18,2);
INSERT INTO `guest_reservations` VALUES (19,19,19,2);
INSERT INTO `guest_reservations` VALUES (20,20,20,1);
INSERT INTO `guest_reservations` VALUES (21,21,1,1);
INSERT INTO `guest_reservations` VALUES (22,22,2,2);
INSERT INTO `guest_reservations` VALUES (23,23,3,4);
INSERT INTO `guest_reservations` VALUES (24,24,4,6);
INSERT INTO `guest_reservations` VALUES (25,3,5,5);
INSERT INTO `guest_reservations` VALUES (26,23,6,1);
/*!40000 ALTER TABLE `guest_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `guest_types`
--

LOCK TABLES `guest_types` WRITE;
/*!40000 ALTER TABLE `guest_types` DISABLE KEYS */;
INSERT INTO `guest_types` VALUES (1,'Solo traveler');
INSERT INTO `guest_types` VALUES (2,'Couple');
INSERT INTO `guest_types` VALUES (3,'Family with young children');
INSERT INTO `guest_types` VALUES (4,'Family with teenagers');
INSERT INTO `guest_types` VALUES (5,'Group of friends');
INSERT INTO `guest_types` VALUES (6,'Business traveler');
INSERT INTO `guest_types` VALUES (7,'Backpacker');
INSERT INTO `guest_types` VALUES (8,'Adventurer');
INSERT INTO `guest_types` VALUES (9,'Honeymooner');
INSERT INTO `guest_types` VALUES (10,'Retiree');
INSERT INTO `guest_types` VALUES (11,'Academic visitor');
INSERT INTO `guest_types` VALUES (12,'Medical tourist');
INSERT INTO `guest_types` VALUES (13,'Sports enthusiast');
INSERT INTO `guest_types` VALUES (14,'Art and culture aficionado');
INSERT INTO `guest_types` VALUES (15,'Food and wine lover');
INSERT INTO `guest_types` VALUES (16,'Eco-conscious traveler');
INSERT INTO `guest_types` VALUES (17,'Luxury seeker');
INSERT INTO `guest_types` VALUES (18,'Budget-conscious traveler');
INSERT INTO `guest_types` VALUES (19,'Pet owner');
INSERT INTO `guest_types` VALUES (20,'Digital nomad');
/*!40000 ALTER TABLE `guest_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,116,'2024-01-01',1);
INSERT INTO `host` VALUES (2,117,'2024-02-15',0);
INSERT INTO `host` VALUES (3,118,'2024-03-20',1);
INSERT INTO `host` VALUES (4,119,'2024-04-05',0);
INSERT INTO `host` VALUES (5,120,'2024-05-10',0);
INSERT INTO `host` VALUES (6,121,'2024-06-20',0);
INSERT INTO `host` VALUES (7,122,'2024-07-30',1);
INSERT INTO `host` VALUES (8,123,'2024-08-15',1);
INSERT INTO `host` VALUES (9,124,'2024-09-25',0);
INSERT INTO `host` VALUES (10,125,'2024-10-10',0);
INSERT INTO `host` VALUES (11,126,'2024-11-20',1);
INSERT INTO `host` VALUES (12,127,'2024-12-25',0);
INSERT INTO `host` VALUES (13,132,'2024-01-05',1);
INSERT INTO `host` VALUES (14,136,'2024-02-20',1);
INSERT INTO `host` VALUES (15,138,'2024-03-25',0);
INSERT INTO `host` VALUES (16,141,'2024-04-10',1);
INSERT INTO `host` VALUES (17,142,'2024-05-15',0);
INSERT INTO `host` VALUES (18,143,'2024-06-25',0);
INSERT INTO `host` VALUES (19,145,'2024-07-10',1);
INSERT INTO `host` VALUES (20,146,'2024-08-15',0);
INSERT INTO `host` VALUES (21,148,'2024-09-20',0);
INSERT INTO `host` VALUES (22,149,'2024-10-05',1);
INSERT INTO `host` VALUES (23,151,'2024-12-15',0);
INSERT INTO `host` VALUES (24,153,'2024-01-20',1);
INSERT INTO `host` VALUES (25,154,'2024-02-25',0);
INSERT INTO `host` VALUES (26,156,'2024-04-01',0);
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'English');
INSERT INTO `language` VALUES (2,'Spanish');
INSERT INTO `language` VALUES (3,'French');
INSERT INTO `language` VALUES (4,'German');
INSERT INTO `language` VALUES (5,'Chinese');
INSERT INTO `language` VALUES (6,'Japanese');
INSERT INTO `language` VALUES (7,'Russian');
INSERT INTO `language` VALUES (8,'Portuguese');
INSERT INTO `language` VALUES (9,'Arabic');
INSERT INTO `language` VALUES (10,'Hindi');
INSERT INTO `language` VALUES (11,'Bengali');
INSERT INTO `language` VALUES (12,'Punjabi');
INSERT INTO `language` VALUES (13,'Urdu');
INSERT INTO `language` VALUES (14,'Italian');
INSERT INTO `language` VALUES (15,'Dutch');
INSERT INTO `language` VALUES (16,'Korean');
INSERT INTO `language` VALUES (17,'Turkish');
INSERT INTO `language` VALUES (18,'Polish');
INSERT INTO `language` VALUES (19,'Vietnamese');
INSERT INTO `language` VALUES (20,'Zulu');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,128,116,'Hi, I’m interested in booking your property. Can you tell me if it’s available next week?','2024-04-01 07:15:17');
INSERT INTO `messages` VALUES (2,129,117,'Hello, I’d like to inquire about your property. Can you provide more details?','2024-04-02 07:16:52');
INSERT INTO `messages` VALUES (3,130,118,'Good day, I’m looking to make a reservation. When is your property available?','2024-04-03 08:29:47');
INSERT INTO `messages` VALUES (4,131,119,'Hi, I’m interested in staying at your place. Can you let me know the rates?','2024-04-04 08:32:14');
INSERT INTO `messages` VALUES (5,133,120,'Hello, I’m considering booking your property. Can you share more information about the amenities?','2024-04-05 09:40:12');
INSERT INTO `messages` VALUES (6,134,121,'Hi, I’m planning a trip and your property looks great. Is it available on these dates?','2024-04-06 09:42:49');
INSERT INTO `messages` VALUES (7,135,122,'Good afternoon, I’m interested in your property. Could you confirm if pets are allowed?','2024-04-07 10:55:27');
INSERT INTO `messages` VALUES (8,137,123,'Hello, I’m looking to make a reservation. Can you provide more information about the check-in process?','2024-04-08 11:45:18');
INSERT INTO `messages` VALUES (9,139,124,'Hi there, I’m considering booking your property. Are there any special offers available?','2024-04-09 12:27:59');
INSERT INTO `messages` VALUES (10,140,125,'Hello, I’m interested in staying at your place. Can you provide details about nearby attractions?','2024-04-10 12:58:33');
INSERT INTO `messages` VALUES (11,144,126,'Good evening, I’m looking to book your property for an upcoming event. Can you assist with availability?','2024-04-11 13:35:49');
INSERT INTO `messages` VALUES (12,147,127,'Hello, I’m interested in your property. Could you share more about the amenities and nearby restaurants?','2024-04-12 14:20:07');
INSERT INTO `messages` VALUES (13,152,132,'Hi, I’m planning a trip and your property caught my eye. Can you provide details about the check-out process?','2024-04-13 15:05:14');
INSERT INTO `messages` VALUES (14,155,136,'Good evening, I’m considering booking your property. Can you let me know if it’s available for the weekend?','2024-04-14 15:40:21');
INSERT INTO `messages` VALUES (15,128,138,'Hi, I’m interested in booking your property. Can you provide information about parking availability?','2024-04-15 16:25:33');
INSERT INTO `messages` VALUES (16,129,139,'Hello, I’m considering your property for an upcoming trip. Can you confirm the number of bedrooms?','2024-04-16 17:10:45');
INSERT INTO `messages` VALUES (17,130,141,'Good evening, I’m looking to book your property. Can you share details about nearby transportation options?','2024-04-17 17:55:58');
INSERT INTO `messages` VALUES (18,131,142,'Hello, I’m interested in staying at your place. Can you provide information about the kitchen facilities?','2024-04-18 18:40:17');
INSERT INTO `messages` VALUES (19,133,143,'Hi, I’m planning a trip and your property looks perfect. Can you confirm if there’s Wi-Fi available?','2024-04-19 19:25:29');
INSERT INTO `messages` VALUES (20,134,145,'Hello, I’m considering your property. Can you let me know if it’s child-friendly?','2024-04-20 20:10:42');
INSERT INTO `messages` VALUES (21,135,146,'Hi, I’m interested in staying at your place. Can you provide details about the nearby shopping options?','2024-04-21 20:55:54');
INSERT INTO `messages` VALUES (22,137,148,'Hello, I’m looking to book your property. Can you provide information about early check-in options?','2024-04-21 22:00:01');
INSERT INTO `messages` VALUES (23,139,149,'Good morning, I’m considering your property for a short stay. Can you confirm the distance to the nearest beach?','2024-04-22 23:05:10');
INSERT INTO `messages` VALUES (24,140,151,'Hello, I’m interested in staying at your place. Can you provide details about pet policies?','2024-04-24 00:10:25');
INSERT INTO `messages` VALUES (25,144,153,'Hi, I’m planning a trip and your property caught my eye. Can you provide information about the gym facilities?','2024-04-25 01:15:37');
INSERT INTO `messages` VALUES (26,147,154,'Hello, I’m interested in booking your property. Can you share information about nearby hiking trails?','2024-04-26 02:20:46');
INSERT INTO `messages` VALUES (27,152,156,'Hi, I’m planning a trip and your property looks great. Can you provide details about the security measures?','2024-04-27 03:25:55');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,5,'PayPal','2024-04-20',15.75,200.50,25.00,50.00,291.25,0.00,'2024-04-22 10:30:15','2024-04-19 14:20:18');
INSERT INTO `payment` VALUES (2,2,2,'Credit Card','2024-04-20',12.50,180.75,20.00,45.00,252.25,15.00,'2024-04-22 11:45:25','2024-04-19 15:30:20');
INSERT INTO `payment` VALUES (3,3,7,'Bank Transfer','2024-04-20',18.00,250.00,30.00,60.00,358.00,0.00,'2024-04-22 12:40:35','2024-04-19 16:45:22');
INSERT INTO `payment` VALUES (4,4,NULL,'PayPal','2024-04-20',10.25,150.25,15.00,40.00,215.50,0.00,'2024-04-22 13:55:40','2024-04-19 17:55:35');
INSERT INTO `payment` VALUES (5,5,9,'Credit Card','2024-04-20',14.50,220.00,22.50,55.00,312.00,5.00,'2024-04-22 14:25:55','2024-04-19 18:30:45');
INSERT INTO `payment` VALUES (6,6,6,'Bank Transfer','2024-04-20',16.75,280.75,35.00,70.00,402.50,25.00,'2024-04-22 15:40:30','2024-04-19 19:45:40');
INSERT INTO `payment` VALUES (7,7,NULL,'PayPal','2024-04-20',20.00,300.00,40.00,80.00,440.00,30.00,'2024-04-22 16:55:45','2024-04-19 20:55:55');
INSERT INTO `payment` VALUES (8,8,13,'Credit Card','2024-04-20',22.50,350.50,45.00,90.00,508.00,40.00,'2024-04-22 17:50:10','2024-04-19 21:50:20');
INSERT INTO `payment` VALUES (9,9,8,'Bank Transfer','2024-04-20',25.00,400.25,50.00,100.00,575.25,50.00,'2024-04-22 18:45:30','2024-04-19 22:55:40');
INSERT INTO `payment` VALUES (10,10,10,'PayPal','2024-04-20',28.50,450.00,55.00,110.00,643.50,60.00,'2024-04-22 19:55:45','2024-04-19 23:45:55');
INSERT INTO `payment` VALUES (11,11,12,'Credit Card','2024-04-21',30.00,500.75,60.00,120.00,733.75,70.00,'2024-04-22 20:45:10','2024-04-21 00:15:40');
INSERT INTO `payment` VALUES (12,12,15,'Bank Transfer','2024-04-21',32.50,550.50,70.00,130.00,803.00,80.00,'2024-04-22 21:35:25','2024-04-21 01:25:55');
INSERT INTO `payment` VALUES (13,13,16,'PayPal','2024-04-21',35.00,600.00,80.00,140.00,875.00,90.00,'2024-04-22 22:50:40','2024-04-21 02:40:10');
INSERT INTO `payment` VALUES (14,14,1,'Credit Card','2024-04-21',37.50,650.25,90.00,150.00,950.75,0.00,'2024-04-22 23:55:10','2024-04-21 03:55:25');
INSERT INTO `payment` VALUES (15,15,18,'Bank Transfer','2024-04-21',40.00,700.50,100.00,160.00,1030.50,110.00,'2024-04-23 01:05:30','2024-04-21 04:45:40');
INSERT INTO `payment` VALUES (16,16,19,'PayPal','2024-04-21',42.50,750.75,110.00,170.00,1115.25,0.00,'2024-04-23 02:15:50','2024-04-21 05:30:55');
INSERT INTO `payment` VALUES (17,17,20,'Credit Card','2024-04-21',45.00,800.00,120.00,180.00,1200.00,0.00,'2024-04-23 03:25:10','2024-04-21 06:25:10');
INSERT INTO `payment` VALUES (18,18,18,'Bank Transfer','2024-04-21',47.50,850.25,130.00,190.00,1280.75,140.00,'2024-04-23 04:35:20','2024-04-21 07:10:25');
INSERT INTO `payment` VALUES (19,19,NULL,'PayPal','2024-04-21',50.00,900.50,140.00,200.00,1350.50,0.00,'2024-04-23 05:45:30','2024-04-21 08:05:40');
INSERT INTO `payment` VALUES (20,20,7,'Credit Card','2024-04-21',52.50,950.75,150.00,210.00,1423.25,160.00,'2024-04-23 06:55:40','2024-04-21 09:20:55');
INSERT INTO `payment` VALUES (21,21,10,'Bank Transfer','2024-04-21',55.00,1000.00,160.00,220.00,1490.00,170.00,'2024-04-23 08:05:50','2024-04-21 10:35:10');
INSERT INTO `payment` VALUES (22,22,11,'PayPal','2024-04-21',57.50,1050.25,170.00,230.00,1560.75,180.00,'2024-04-23 09:15:40','2024-04-21 11:20:25');
INSERT INTO `payment` VALUES (23,23,12,'Credit Card','2024-04-21',60.00,1100.50,180.00,240.00,1633.50,190.00,'2024-04-23 10:25:55','2024-04-21 12:05:40');
INSERT INTO `payment` VALUES (24,24,13,'Bank Transfer','2024-04-21',62.50,1150.75,190.00,250.00,1708.25,0.00,'2024-04-23 11:35:10','2024-04-21 13:10:55');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,12,7,1,30,'Lakeside Retreat','This is a cozy lakeside retreat perfect for relaxation',4,2,1,2,1,2,1,0,'-75.1652','39.9526',150);
INSERT INTO `property` VALUES (2,4,1,2,31,'Mountain View Cabin','A charming cabin nestled in the mountains with breathtaking views',6,3,2,3,2,3,1,1,'-118.2437','34.0522',200);
INSERT INTO `property` VALUES (3,13,2,3,32,'Urban Loft','Modern loft space in the heart of the city, ideal for city explorers',2,1,1,1,1,1,1,0,'-84.388','33.749',100);
INSERT INTO `property` VALUES (4,1,4,4,33,'Seaside Villa','Luxurious villa by the sea offering stunning ocean views',8,4,3,4,2,3,1,1,'-118.2437','34.0522',300);
INSERT INTO `property` VALUES (5,5,18,5,34,'Riverside Retreat','Tranquil retreat along the riverbank, perfect for nature lovers',6,3,2,3,2,3,1,0,'-3.7038','40.4168',180);
INSERT INTO `property` VALUES (6,11,11,6,35,'Forest Cabin Escape','Cozy cabin nestled in the forest, ideal for a peaceful getaway',7,3,2,4,2,3,1,0,'-95.3698','29.7604',180);
INSERT INTO `property` VALUES (7,3,17,7,36,'City View Condo','Modern condo with panoramic city views, perfect for urban living',9,4,3,5,3,4,1,1,'-118.2437','34.0522',220);
INSERT INTO `property` VALUES (8,10,16,8,37,'Coastal Bungalow','Quaint bungalow by the coast offering a relaxing seaside experience',5,2,1,3,1,2,0,0,'12.4964','41.9028',120);
INSERT INTO `property` VALUES (9,2,14,9,38,'Downtown Loft','Chic loft located in the bustling downtown area, great for city life enthusiasts',8,3,2,4,2,3,1,1,'-0.1276','51.5074',200);
INSERT INTO `property` VALUES (10,9,13,10,39,'Beachfront Villa','Luxurious villa right by the beach, offering direct access to the sand',10,4,3,5,3,4,1,0,'-3.7038','40.4168',250);
INSERT INTO `property` VALUES (11,14,3,11,40,'Country Cottage','Charming cottage nestled in the countryside, perfect for a quiet retreat',6,2,1,3,1,2,1,0,'-74.0059','40.7128',150);
INSERT INTO `property` VALUES (12,15,10,12,41,'Mountain Chalet','Cosy chalet nestled in the mountains, offering picturesque views',7,3,2,4,2,3,1,1,'126.978','37.5665',180);
INSERT INTO `property` VALUES (13,17,13,13,42,'Lakefront Lodge','Serene lodge located by the lake, ideal for nature enthusiasts',8,3,2,4,2,3,0,1,'2.3522','48.8566',200);
INSERT INTO `property` VALUES (14,3,1,14,43,'City Center Apartment','Modern apartment in the heart of the city, perfect for urban living',4,1,1,1,1,1,1,0,'-74.0059','40.7128',120);
INSERT INTO `property` VALUES (15,8,9,15,44,'Lakeview Cabin','Charming cabin with views of the lake, great for a peaceful getaway',5,2,1,3,1,2,1,1,'139.6917','35.6895',150);
INSERT INTO `property` VALUES (16,16,16,16,45,'Riverfront Retreat','Tranquil retreat by the riverbank, perfect for relaxation',6,2,1,3,1,2,1,0,'-95.3698','29.7604',180);
INSERT INTO `property` VALUES (17,18,12,17,46,'Rural Farmhouse','Traditional farmhouse in a peaceful rural setting',7,3,2,4,2,3,1,1,'-95.3698','29.7604',180);
INSERT INTO `property` VALUES (18,20,6,18,47,'Beachside Bungalow','Relaxing bungalow by the beach with stunning ocean views',5,2,1,3,1,2,0,0,'12.4964','41.9028',100);
INSERT INTO `property` VALUES (19,4,8,19,48,'Urban Oasis','Modern oasis in the city offering comfort and convenience',6,2,1,3,1,2,1,1,'-0.1276','51.5074',150);
INSERT INTO `property` VALUES (20,5,18,20,49,'Riverfront Cottage','Charming cottage by the river, perfect for a peaceful retreat',7,3,2,3,2,3,1,1,'-3.7038','40.4168',180);
INSERT INTO `property` VALUES (21,17,14,21,50,'Downtown Penthouse','Luxurious penthouse in the bustling downtown area, offering stunning city views',4,2,1,2,1,1,1,0,'2.3522','48.8566',250);
INSERT INTO `property` VALUES (22,15,8,22,51,'City Skyline View Apartment','Stylish apartment with panoramic views of the city skyline',5,2,1,2,1,1,1,0,'139.6917','35.6895',200);
INSERT INTO `property` VALUES (23,19,19,23,52,'Rural Retreat','Tranquil retreat in a serene rural setting, perfect for relaxation',6,2,1,3,1,2,1,1,'9.5018','56.2639',150);
INSERT INTO `property` VALUES (24,6,5,24,53,'Hillside Hideaway','Cozy hideaway nestled in the hills, offering scenic views',4,1,1,1,1,1,1,0,'-3.7038','40.4168',120);
INSERT INTO `property` VALUES (25,8,15,25,54,'Coastal Cottage','Quaint cottage by the coast, offering a peaceful seaside escape',5,2,1,2,1,1,1,0,'139.6917','35.6895',150);
INSERT INTO `property` VALUES (26,18,20,26,55,'Oceanfront Retreat','Serene retreat right by the ocean, perfect for relaxation',6,3,2,3,2,3,1,1,'-95.3698','29.7604',180);
INSERT INTO `property` VALUES (27,20,7,26,56,'Lakeview Lodge','Cosy lodge with views of the lake, great for a nature retreat',5,2,1,2,1,1,0,0,'12.4964','41.9028',120);
INSERT INTO `property` VALUES (28,1,1,3,57,'Urban View Studio','Modern studio with urban views, perfect for city dwellers',2,1,1,1,1,1,1,0,'-74.0059','40.7128',80);
INSERT INTO `property` VALUES (29,7,19,7,58,'New Property','Description of the new property',5,2,1,3,1,1,1,0,'-74.0059','40.7128',120);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `property_amenity`
--

LOCK TABLES `property_amenity` WRITE;
/*!40000 ALTER TABLE `property_amenity` DISABLE KEYS */;
INSERT INTO `property_amenity` VALUES (1,1,25,'High-speed WiFi available throughout the property for seamless connectivity.');
INSERT INTO `property_amenity` VALUES (2,2,24,'Central air conditioning ensuring a comfortable stay even during hot weather.');
INSERT INTO `property_amenity` VALUES (3,3,23,'Central heating provided to keep guests cozy during colder seasons.');
INSERT INTO `property_amenity` VALUES (4,4,22,'Fully equipped kitchen with modern appliances for convenient meal preparation.');
INSERT INTO `property_amenity` VALUES (5,5,21,'Ample free parking space available for guests’ vehicles.');
INSERT INTO `property_amenity` VALUES (6,6,20,'Private pool exclusively for guests to enjoy a refreshing swim.');
INSERT INTO `property_amenity` VALUES (7,7,19,'Invigorating hot tub for relaxation and rejuvenation.');
INSERT INTO `property_amenity` VALUES (8,8,18,'Well-equipped fitness center on-site for guests’ workout routines.');
INSERT INTO `property_amenity` VALUES (9,9,17,'Complimentary continental breakfast served daily for a great start.');
INSERT INTO `property_amenity` VALUES (10,10,16,'Pet-friendly accommodations welcoming furry companions.');
INSERT INTO `property_amenity` VALUES (11,11,15,'Designated smoking areas provided for guests’ convenience.');
INSERT INTO `property_amenity` VALUES (12,12,14,'Essential amenities offered to ensure guest comfort and satisfaction.');
INSERT INTO `property_amenity` VALUES (13,13,13,'Hair dryer available in the room for guest convenience.');
INSERT INTO `property_amenity` VALUES (14,14,12,'Washing machine provided for guest laundry needs during the stay.');
INSERT INTO `property_amenity` VALUES (15,15,11,'Dryer available for guest use to handle laundry efficiently.');
INSERT INTO `property_amenity` VALUES (16,16,10,'Smart TV with streaming options for entertainment and relaxation.');
INSERT INTO `property_amenity` VALUES (17,17,9,'Cable TV channels available for guests’ viewing pleasure.');
INSERT INTO `property_amenity` VALUES (18,18,8,'Cozy fireplace in the living area for warmth and ambiance.');
INSERT INTO `property_amenity` VALUES (19,19,7,'Elevator access provided for convenience and easy mobility.');
INSERT INTO `property_amenity` VALUES (20,20,6,'Outdoor grill available for barbecue and outdoor cooking experiences.');
INSERT INTO `property_amenity` VALUES (21,21,5,'High-speed WiFi available throughout the property for seamless browsing.');
INSERT INTO `property_amenity` VALUES (22,22,4,'Central air conditioning ensuring a comfortable stay throughout the property.');
INSERT INTO `property_amenity` VALUES (23,23,3,'Central heating provided to maintain warmth and comfort during colder seasons.');
INSERT INTO `property_amenity` VALUES (24,24,2,'Fully equipped kitchen with modern appliances for guest convenience.');
INSERT INTO `property_amenity` VALUES (25,25,1,'Free parking space available for guests’ vehicles during their stay.');
INSERT INTO `property_amenity` VALUES (26,26,25,'High-speed WiFi available for seamless connectivity.');
INSERT INTO `property_amenity` VALUES (27,27,24,'Central air conditioning for guest comfort.');
INSERT INTO `property_amenity` VALUES (28,28,23,'Central heating for a cozy stay.');
INSERT INTO `property_amenity` VALUES (29,29,22,'Fully equipped kitchen for convenient meal preparation.');
INSERT INTO `property_amenity` VALUES (30,1,1,'Spacious living room with comfortable seating.');
INSERT INTO `property_amenity` VALUES (31,2,2,'Private balcony overlooking scenic views.');
INSERT INTO `property_amenity` VALUES (32,3,3,'Cozy fireplace for a warm ambiance during colder seasons.');
/*!40000 ALTER TABLE `property_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `property_availability`
--

LOCK TABLES `property_availability` WRITE;
/*!40000 ALTER TABLE `property_availability` DISABLE KEYS */;
INSERT INTO `property_availability` VALUES (1,1,'2024-04-24 09:00:00','available',120.00);
INSERT INTO `property_availability` VALUES (2,2,'2024-04-25 10:00:00','booked',180.00);
INSERT INTO `property_availability` VALUES (3,3,'2024-04-26 11:00:00','available',150.00);
INSERT INTO `property_availability` VALUES (4,4,'2024-04-27 12:00:00','available',300.00);
INSERT INTO `property_availability` VALUES (5,5,'2024-04-28 13:00:00','booked',200.00);
INSERT INTO `property_availability` VALUES (6,6,'2024-04-29 14:00:00','available',180.00);
INSERT INTO `property_availability` VALUES (7,7,'2024-04-30 15:00:00','available',220.00);
INSERT INTO `property_availability` VALUES (8,8,'2024-05-01 16:00:00','booked',120.00);
INSERT INTO `property_availability` VALUES (9,9,'2024-05-02 17:00:00','available',200.00);
INSERT INTO `property_availability` VALUES (10,10,'2024-05-03 18:00:00','available',250.00);
INSERT INTO `property_availability` VALUES (11,11,'2024-05-04 19:00:00','booked',150.00);
INSERT INTO `property_availability` VALUES (12,12,'2024-05-05 20:00:00','available',180.00);
INSERT INTO `property_availability` VALUES (13,13,'2024-05-06 21:00:00','available',200.00);
INSERT INTO `property_availability` VALUES (14,14,'2024-05-07 22:00:00','booked',120.00);
INSERT INTO `property_availability` VALUES (15,15,'2024-05-08 23:00:00','available',150.00);
INSERT INTO `property_availability` VALUES (16,16,'2024-05-09 09:00:00','available',180.00);
INSERT INTO `property_availability` VALUES (17,17,'2024-05-10 10:00:00','booked',180.00);
INSERT INTO `property_availability` VALUES (18,18,'2024-05-11 11:00:00','available',100.00);
INSERT INTO `property_availability` VALUES (19,19,'2024-05-12 12:00:00','available',150.00);
INSERT INTO `property_availability` VALUES (20,20,'2024-05-13 13:00:00','booked',180.00);
INSERT INTO `property_availability` VALUES (21,21,'2024-05-14 14:00:00','available',250.00);
INSERT INTO `property_availability` VALUES (22,22,'2024-05-15 15:00:00','available',200.00);
INSERT INTO `property_availability` VALUES (23,23,'2024-05-16 16:00:00','booked',150.00);
INSERT INTO `property_availability` VALUES (24,24,'2024-05-17 17:00:00','available',120.00);
INSERT INTO `property_availability` VALUES (25,25,'2024-05-18 18:00:00','available',150.00);
INSERT INTO `property_availability` VALUES (26,26,'2024-05-19 19:00:00','booked',180.00);
INSERT INTO `property_availability` VALUES (27,27,'2024-05-20 20:00:00','available',120.00);
INSERT INTO `property_availability` VALUES (28,28,'2024-05-21 21:00:00','available',80.00);
INSERT INTO `property_availability` VALUES (29,29,'2024-05-22 22:00:00','booked',150.00);
/*!40000 ALTER TABLE `property_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `property_category`
--

LOCK TABLES `property_category` WRITE;
/*!40000 ALTER TABLE `property_category` DISABLE KEYS */;
INSERT INTO `property_category` VALUES (1,7,'Secluded retreat','Provides a secluded and peaceful environment.');
INSERT INTO `property_category` VALUES (2,1,'Pet-friendly','Allows pets on the property.');
INSERT INTO `property_category` VALUES (3,2,'Spacious','Offers ample living space.');
INSERT INTO `property_category` VALUES (4,4,'Private pool','Features a private swimming pool.');
INSERT INTO `property_category` VALUES (5,18,'Adventure retreat','Ideal for adventurous stays amidst nature.');
INSERT INTO `property_category` VALUES (6,11,'Compact living','Ideal for individuals or couples seeking a compact living space.');
INSERT INTO `property_category` VALUES (7,17,'Nomadic lifestyle','Provides a unique nomadic lifestyle experience.');
INSERT INTO `property_category` VALUES (8,16,'Grandeur','Represents grandeur and luxury.');
INSERT INTO `property_category` VALUES (9,14,'Historic charm','Embraces historical charm and architectural significance.');
INSERT INTO `property_category` VALUES (10,13,'Countryside charm','Offers a charming countryside setting.');
INSERT INTO `property_category` VALUES (11,3,'Modern amenities','Includes modern facilities and conveniences.');
INSERT INTO `property_category` VALUES (12,10,'Single-story','Designed as a single-story residence.');
INSERT INTO `property_category` VALUES (13,4,'Luxury amenities','Offers luxurious amenities and services.');
INSERT INTO `property_category` VALUES (14,1,'Family-friendly','Suitable for families with children.');
INSERT INTO `property_category` VALUES (15,9,'Urban living','Offers a modern urban living experience.');
INSERT INTO `property_category` VALUES (16,16,'Estate living','Offers an estate-style living experience.');
INSERT INTO `property_category` VALUES (17,12,'Panoramic views','Provides stunning panoramic views of the surroundings.');
INSERT INTO `property_category` VALUES (18,6,'Rustic charm','Embraces a rustic and traditional aesthetic.');
INSERT INTO `property_category` VALUES (19,8,'Dual living','Designed for dual occupancy with separate living areas.');
INSERT INTO `property_category` VALUES (20,18,'Nature immersion','Immerses guests in a natural and tree-top environment.');
INSERT INTO `property_category` VALUES (21,14,'Royal treatment','Offers a royal and luxurious experience.');
INSERT INTO `property_category` VALUES (22,8,'Shared garden','Includes a shared garden space.');
INSERT INTO `property_category` VALUES (23,19,'Waterfront living','Offers a unique waterfront living experience.');
INSERT INTO `property_category` VALUES (24,5,'Cozy atmosphere','Provides a cozy and inviting ambiance.');
INSERT INTO `property_category` VALUES (25,15,'Alpine experience','Provides an authentic alpine living experience.');
INSERT INTO `property_category` VALUES (26,20,'Minimalist living','Designed for minimalist and compact living.');
/*!40000 ALTER TABLE `property_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `property_images`
--

LOCK TABLES `property_images` WRITE;
/*!40000 ALTER TABLE `property_images` DISABLE KEYS */;
INSERT INTO `property_images` VALUES (1,1,'https://example.com/image1.jpg','Living room view');
INSERT INTO `property_images` VALUES (2,2,'https://example.com/image2.jpg','Mountain view');
INSERT INTO `property_images` VALUES (3,3,'https://example.com/image3.jpg','City skyline');
INSERT INTO `property_images` VALUES (4,4,'https://example.com/image4.jpg','Ocean view');
INSERT INTO `property_images` VALUES (5,5,'https://example.com/image5.jpg','Riverfront');
INSERT INTO `property_images` VALUES (6,6,'https://example.com/image6.jpg','Forest cabin exterior');
INSERT INTO `property_images` VALUES (7,7,'https://example.com/image7.jpg','City view from condo');
INSERT INTO `property_images` VALUES (8,8,'https://example.com/image8.jpg','Bungalow exterior');
INSERT INTO `property_images` VALUES (9,9,'https://example.com/image9.jpg','Downtown loft interior');
INSERT INTO `property_images` VALUES (10,10,'https://example.com/image10.jpg','Beachfront villa view');
INSERT INTO `property_images` VALUES (11,11,'https://example.com/image11.jpg','Countryside cottage');
INSERT INTO `property_images` VALUES (12,12,'https://example.com/image12.jpg','Mountain chalet exterior');
INSERT INTO `property_images` VALUES (13,13,'https://example.com/image13.jpg','Lakefront lodge view');
INSERT INTO `property_images` VALUES (14,14,'https://example.com/image14.jpg','City center apartment');
INSERT INTO `property_images` VALUES (15,15,'https://example.com/image15.jpg','Lakeview cabin exterior');
INSERT INTO `property_images` VALUES (16,16,'https://example.com/image16.jpg','Riverfront retreat');
INSERT INTO `property_images` VALUES (17,17,'https://example.com/image17.jpg','Rural farmhouse view');
INSERT INTO `property_images` VALUES (18,18,'https://example.com/image18.jpg','Beachside bungalow');
INSERT INTO `property_images` VALUES (19,19,'https://example.com/image19.jpg','Urban oasis');
INSERT INTO `property_images` VALUES (20,20,'https://example.com/image20.jpg','Riverfront cottage exterior');
INSERT INTO `property_images` VALUES (21,21,'https://example.com/image21.jpg','Downtown penthouse view');
INSERT INTO `property_images` VALUES (22,22,'https://example.com/image22.jpg','City skyline apartment');
INSERT INTO `property_images` VALUES (23,23,'https://example.com/image23.jpg','Rural retreat');
INSERT INTO `property_images` VALUES (24,24,'https://example.com/image24.jpg','Hillside hideaway');
INSERT INTO `property_images` VALUES (25,25,'https://example.com/image25.jpg','Coastal cottage');
INSERT INTO `property_images` VALUES (26,26,'https://example.com/image26.jpg','Oceanfront retreat');
INSERT INTO `property_images` VALUES (27,27,'https://example.com/image27.jpg','Lakeview lodge');
INSERT INTO `property_images` VALUES (28,28,'https://example.com/image28.jpg','Urban view studio');
INSERT INTO `property_images` VALUES (29,29,'https://example.com/image29.jpg','Property entrance');
INSERT INTO `property_images` VALUES (30,1,'https://example.com/image30.jpg','Bedroom view');
INSERT INTO `property_images` VALUES (31,2,'https://example.com/image31.jpg','Bathroom interior');
INSERT INTO `property_images` VALUES (32,3,'https://example.com/image32.jpg','Dining area');
INSERT INTO `property_images` VALUES (33,4,'https://example.com/image33.jpg','Luxury bedroom');
INSERT INTO `property_images` VALUES (34,5,'https://example.com/image34.jpg','Riverfront sunset');
INSERT INTO `property_images` VALUES (35,6,'https://example.com/image35.jpg','Forest cabin interior');
/*!40000 ALTER TABLE `property_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `property_review`
--

LOCK TABLES `property_review` WRITE;
/*!40000 ALTER TABLE `property_review` DISABLE KEYS */;
INSERT INTO `property_review` VALUES (1,2,1);
INSERT INTO `property_review` VALUES (2,18,2);
INSERT INTO `property_review` VALUES (3,6,3);
INSERT INTO `property_review` VALUES (4,9,4);
INSERT INTO `property_review` VALUES (5,12,5);
INSERT INTO `property_review` VALUES (6,19,6);
INSERT INTO `property_review` VALUES (7,1,7);
INSERT INTO `property_review` VALUES (8,23,8);
INSERT INTO `property_review` VALUES (9,4,9);
INSERT INTO `property_review` VALUES (10,13,10);
INSERT INTO `property_review` VALUES (11,22,11);
INSERT INTO `property_review` VALUES (12,5,12);
INSERT INTO `property_review` VALUES (13,16,13);
INSERT INTO `property_review` VALUES (14,2,14);
INSERT INTO `property_review` VALUES (15,28,15);
INSERT INTO `property_review` VALUES (16,15,16);
INSERT INTO `property_review` VALUES (17,8,17);
INSERT INTO `property_review` VALUES (18,3,18);
INSERT INTO `property_review` VALUES (19,9,2);
INSERT INTO `property_review` VALUES (20,20,3);
INSERT INTO `property_review` VALUES (21,11,6);
INSERT INTO `property_review` VALUES (22,26,12);
INSERT INTO `property_review` VALUES (23,14,18);
INSERT INTO `property_review` VALUES (24,25,2);
INSERT INTO `property_review` VALUES (25,21,3);
/*!40000 ALTER TABLE `property_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `property_type`
--

LOCK TABLES `property_type` WRITE;
/*!40000 ALTER TABLE `property_type` DISABLE KEYS */;
INSERT INTO `property_type` VALUES (1,'Apartment','A self-contained housing unit within a larger building or complex.');
INSERT INTO `property_type` VALUES (2,'House','A standalone dwelling typically designed for residential occupancy.');
INSERT INTO `property_type` VALUES (3,'Condominium','A privately owned residential unit within a multi-unit building or complex.');
INSERT INTO `property_type` VALUES (4,'Villa','A luxurious, often detached residence, usually located in a scenic or exclusive area.');
INSERT INTO `property_type` VALUES (5,'Townhouse','A multi-level residential unit that shares walls with adjacent units.');
INSERT INTO `property_type` VALUES (6,'Cottage','A small, cozy dwelling, often located in a rural or scenic area.');
INSERT INTO `property_type` VALUES (7,'Cabin','A rustic, typically small house or shelter, often used as a vacation retreat.');
INSERT INTO `property_type` VALUES (8,'Duplex','A residential building with two separate units sharing a common wall.');
INSERT INTO `property_type` VALUES (9,'Loft','A spacious, open-concept residential unit, typically converted from a commercial space.');
INSERT INTO `property_type` VALUES (10,'Bungalow','A single-story house, often with a veranda or porch, popular for its simplicity and accessibility.');
INSERT INTO `property_type` VALUES (11,'Studio','A small, self-contained living space with combined living, sleeping, and dining areas.');
INSERT INTO `property_type` VALUES (12,'Penthouse','A luxurious apartment or residence located on the top floor of a building, offering panoramic views.');
INSERT INTO `property_type` VALUES (13,'Farmhouse','A house located on a farm, often with agricultural elements and a rural ambiance.');
INSERT INTO `property_type` VALUES (14,'Castle','A large, fortified residence often associated with historical significance and grandeur.');
INSERT INTO `property_type` VALUES (15,'Chalet','A cozy, alpine-style house or lodge, popular in mountainous regions for vacation stays.');
INSERT INTO `property_type` VALUES (16,'Mansion','A large, impressive residence, typically associated with wealth and luxury.');
INSERT INTO `property_type` VALUES (17,'Yurt','A traditional, portable dwelling used by nomadic communities, often circular in shape.');
INSERT INTO `property_type` VALUES (18,'Treehouse','A structure built among trees, often used as a unique and adventurous accommodation.');
INSERT INTO `property_type` VALUES (19,'Houseboat','A dwelling designed to float on water, offering a unique living experience on rivers or lakes.');
INSERT INTO `property_type` VALUES (20,'Tiny House','A compact, minimalist dwelling designed for simplicity and efficient use of space.');
/*!40000 ALTER TABLE `property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,1,'California');
INSERT INTO `region` VALUES (2,2,'Ontario');
INSERT INTO `region` VALUES (3,3,'England');
INSERT INTO `region` VALUES (4,4,'New South Wales');
INSERT INTO `region` VALUES (5,5,'Bavaria');
INSERT INTO `region` VALUES (6,6,'Île-de-France');
INSERT INTO `region` VALUES (7,7,'Lazio');
INSERT INTO `region` VALUES (8,8,'Catalonia');
INSERT INTO `region` VALUES (9,9,'Tokyo');
INSERT INTO `region` VALUES (10,10,'Beijing');
INSERT INTO `region` VALUES (11,11,'Maharashtra');
INSERT INTO `region` VALUES (12,12,'São Paulo');
INSERT INTO `region` VALUES (13,13,'Mexico City');
INSERT INTO `region` VALUES (14,14,'Moscow Oblast');
INSERT INTO `region` VALUES (15,15,'Seoul');
INSERT INTO `region` VALUES (16,16,'North Holland');
INSERT INTO `region` VALUES (17,17,'Zurich');
INSERT INTO `region` VALUES (18,18,'Stockholm County');
INSERT INTO `region` VALUES (19,19,'Oslo');
INSERT INTO `region` VALUES (20,20,'Capital Region of Denmark');
INSERT INTO `region` VALUES (21,21,'Central Region');
INSERT INTO `region` VALUES (22,22,'Kuala Lumpur');
INSERT INTO `region` VALUES (23,23,'Bangkok');
INSERT INTO `region` VALUES (24,24,'Jakarta');
INSERT INTO `region` VALUES (25,25,'Gauteng');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,1,145,4,200,4,0,'2024-04-01 07:30:18','2024-04-05 14:00:00','2024-04-09 14:00:00','2024-03-06 12:40:55','2024-04-10 00:00:00');
INSERT INTO `reservations` VALUES (2,2,145,3,180,3,0,'2024-04-05 08:20:30','2024-04-08 13:00:00','2024-04-11 13:00:00','2024-03-10 14:50:10','2024-04-12 00:00:00');
INSERT INTO `reservations` VALUES (3,3,139,5,220,5,0,'2024-04-10 06:15:45','2024-04-15 11:00:00','2024-04-20 11:00:00','2024-03-15 10:35:20','2024-04-21 00:00:00');
INSERT INTO `reservations` VALUES (4,4,135,6,190,6,0,'2024-04-15 09:30:00','2024-04-21 15:00:00','2024-04-27 15:00:00','2024-03-20 16:10:00','2024-04-28 00:00:00');
INSERT INTO `reservations` VALUES (5,5,156,7,250,7,0,'2024-04-20 12:00:00','2024-04-27 18:00:00','2024-05-04 18:00:00','2024-03-25 17:40:00','2024-05-05 00:00:00');
INSERT INTO `reservations` VALUES (6,6,120,4,160,4,0,'2024-04-03 07:30:18','2024-04-07 14:00:00','2024-04-11 14:00:00','2024-03-08 12:40:55','2024-04-12 00:00:00');
INSERT INTO `reservations` VALUES (7,7,120,3,200,3,0,'2024-04-18 10:55:22','2024-04-22 10:30:00','2024-04-25 10:30:00','2024-03-23 15:20:37','2024-04-26 00:00:00');
INSERT INTO `reservations` VALUES (8,8,128,5,180,5,0,'2024-04-14 13:40:29','2024-04-20 12:00:00','2024-04-25 12:00:00','2024-03-20 09:55:46','2024-04-26 00:00:00');
INSERT INTO `reservations` VALUES (9,9,121,2,120,2,0,'2024-04-05 06:10:14','2024-04-07 15:00:00','2024-04-09 15:00:00','2024-03-10 17:30:21','2024-04-10 00:00:00');
INSERT INTO `reservations` VALUES (10,10,116,6,150,6,0,'2024-04-22 14:25:35','2024-04-28 10:00:00','2024-05-04 10:00:00','2024-03-28 11:45:09','2024-05-05 00:00:00');
INSERT INTO `reservations` VALUES (11,11,119,3,180,3,0,'2024-04-07 07:50:41','2024-04-10 11:30:00','2024-04-13 11:30:00','2024-03-12 14:20:58','2024-04-14 00:00:00');
INSERT INTO `reservations` VALUES (12,11,119,5,190,5,0,'2024-04-10 13:35:26','2024-04-15 09:00:00','2024-04-20 09:00:00','2024-03-15 12:10:47','2024-04-21 00:00:00');
INSERT INTO `reservations` VALUES (13,12,121,3,220,3,0,'2024-04-12 15:20:38','2024-04-15 13:00:00','2024-04-18 13:00:00','2024-03-17 10:50:16','2024-04-19 00:00:00');
INSERT INTO `reservations` VALUES (14,13,131,5,200,5,0,'2024-04-16 11:35:12','2024-04-21 08:00:00','2024-04-26 08:00:00','2024-03-26 10:15:27','2024-04-27 00:00:00');
INSERT INTO `reservations` VALUES (15,14,139,4,160,4,0,'2024-04-01 09:20:54','2024-04-05 09:30:00','2024-04-09 09:30:00','2024-03-06 16:50:43','2024-04-10 00:00:00');
INSERT INTO `reservations` VALUES (16,15,127,7,140,7,0,'2024-04-19 12:45:28','2024-04-26 12:00:00','2024-05-03 12:00:00','2024-03-24 08:30:57','2024-05-04 00:00:00');
INSERT INTO `reservations` VALUES (17,16,118,3,100,3,0,'2024-04-04 06:55:49','2024-04-08 14:30:00','2024-04-11 14:30:00','2024-03-09 10:40:15','2024-04-12 00:00:00');
INSERT INTO `reservations` VALUES (18,17,123,6,130,6,0,'2024-04-13 08:40:35','2024-04-17 10:00:00','2024-04-22 10:00:00','2024-03-18 11:25:44','2024-04-23 00:00:00');
INSERT INTO `reservations` VALUES (19,18,126,2,110,2,0,'2024-04-22 10:15:24','2024-04-24 11:30:00','2024-04-26 11:30:00','2024-03-28 13:25:22','2024-04-27 00:00:00');
INSERT INTO `reservations` VALUES (20,19,153,4,140,4,0,'2024-04-07 12:45:28','2024-04-11 12:00:00','2024-04-15 12:00:00','2024-03-12 08:30:57','2024-04-16 00:00:00');
INSERT INTO `reservations` VALUES (21,19,151,3,160,3,0,'2024-04-16 07:55:49','2024-04-19 14:30:00','2024-04-22 14:30:00','2024-03-21 11:40:15','2024-04-23 00:00:00');
INSERT INTO `reservations` VALUES (22,20,155,6,180,6,0,'2024-04-21 09:40:35','2024-04-27 11:00:00','2024-05-03 11:00:00','2024-03-26 14:25:44','2024-05-04 00:00:00');
INSERT INTO `reservations` VALUES (23,20,155,4,150,4,0,'2024-04-05 14:10:20','2024-04-09 12:30:00','2024-04-13 12:30:00','2024-03-10 18:45:37','2024-04-14 00:00:00');
INSERT INTO `reservations` VALUES (24,21,138,7,200,7,0,'2024-04-10 15:20:38','2024-04-17 09:00:00','2024-04-24 09:00:00','2024-03-15 10:50:16','2024-04-25 00:00:00');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,14,'The internet connection was good.',1,3.5,'2024-05-07 09:23:15');
INSERT INTO `review` VALUES (2,2,2,'Excellent communication.',0,5,'2024-06-15 16:42:09');
INSERT INTO `review` VALUES (3,3,12,'Good accessibility.',0,4,'2024-06-28 11:17:33');
INSERT INTO `review` VALUES (4,4,13,'Satisfactory guest interaction.',0,3,'2024-07-03 18:55:21');
INSERT INTO `review` VALUES (5,5,16,'Average bed comfort.',1,3.5,'2024-07-17 14:39:47');
INSERT INTO `review` VALUES (6,6,14,'The internet connection was good.',0,4,'2024-08-09 08:27:55');
INSERT INTO `review` VALUES (7,7,9,'Safety was satisfactory.',0,4,'2024-08-20 19:12:36');
INSERT INTO `review` VALUES (8,8,9,'Safety was satisfactory.',0,4.5,'2024-08-24 10:08:42');
INSERT INTO `review` VALUES (9,9,5,'Location was good.',0,4,'2024-09-03 12:30:18');
INSERT INTO `review` VALUES (10,10,9,'Safety was satisfactory.',0,4,'2024-09-11 15:20:59');
INSERT INTO `review` VALUES (11,11,10,'Privacy was good.',0,4.5,'2024-09-15 07:59:04');
INSERT INTO `review` VALUES (12,12,4,'Check-in experience was good.',0,4,'2024-09-22 22:45:37');
INSERT INTO `review` VALUES (13,13,2,'The cleanliness was satisfactory.',0,3.5,'2024-05-22 17:18:56');
INSERT INTO `review` VALUES (14,14,14,'The internet connection was good.',0,4,'2024-06-04 14:37:28');
INSERT INTO `review` VALUES (15,15,7,'The amenities were satisfactory.',0,3.5,'2024-06-30 09:54:11');
INSERT INTO `review` VALUES (16,16,6,'Value for money was decent.',0,4,'2024-07-13 08:21:49');
INSERT INTO `review` VALUES (17,17,11,'Noise levels were acceptable.',0,4,'2024-07-29 13:45:03');
INSERT INTO `review` VALUES (18,18,20,'Overall experience was average.',0,3.5,'2024-08-05 16:38:27');
INSERT INTO `review` VALUES (19,19,9,'Safety was satisfactory.',0,4,'2024-08-19 10:07:59');
INSERT INTO `review` VALUES (20,20,8,'Comfort was good.',1,4.5,'2024-09-02 07:23:41');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `review_type`
--

LOCK TABLES `review_type` WRITE;
/*!40000 ALTER TABLE `review_type` DISABLE KEYS */;
INSERT INTO `review_type` VALUES (1,'Rating','Numeric rating based on guest feedback');
INSERT INTO `review_type` VALUES (2,'Cleanliness','Assessment of the property’s cleanliness');
INSERT INTO `review_type` VALUES (3,'Communication','Evaluation of host communication');
INSERT INTO `review_type` VALUES (4,'Check-in Experience','Feedback on the check-in process');
INSERT INTO `review_type` VALUES (5,'Location','Assessment of the property’s location');
INSERT INTO `review_type` VALUES (6,'Value for Money','Opinion on the value provided for the price');
INSERT INTO `review_type` VALUES (7,'Amenities','Feedback on available amenities');
INSERT INTO `review_type` VALUES (8,'Comfort','Evaluation of overall comfort level');
INSERT INTO `review_type` VALUES (9,'Safety','Assessment of safety measures');
INSERT INTO `review_type` VALUES (10,'Privacy','Opinion on privacy options');
INSERT INTO `review_type` VALUES (11,'Noise Levels','Feedback on the level of noise');
INSERT INTO `review_type` VALUES (12,'Accessibility','Assessment of accessibility features');
INSERT INTO `review_type` VALUES (13,'Guest Interaction','Evaluation of host-guest interactions');
INSERT INTO `review_type` VALUES (14,'Internet/Wi-Fi','Feedback on internet/Wi-Fi quality');
INSERT INTO `review_type` VALUES (15,'Bathroom Quality','Assessment of bathroom condition');
INSERT INTO `review_type` VALUES (16,'Bed Comfort','Opinion on the comfort of beds');
INSERT INTO `review_type` VALUES (17,'Scenic Views','Evaluation of scenic views');
INSERT INTO `review_type` VALUES (18,'Outdoor Area','Feedback on outdoor spaces');
INSERT INTO `review_type` VALUES (19,'Listing Accuracy','Assessment of listing accuracy');
INSERT INTO `review_type` VALUES (20,'Overall Experience','Opinion on the overall guest experience');
/*!40000 ALTER TABLE `review_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media`
--

LOCK TABLES `social_media` WRITE;
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
INSERT INTO `social_media` VALUES (1,116,'LinkedIn','www.linkedin.com/sophiajones');
INSERT INTO `social_media` VALUES (2,116,'TikTok','www.tiktok.com/sophiajones');
INSERT INTO `social_media` VALUES (3,117,'LinkedIn','www.linkedin.com/miataylor');
INSERT INTO `social_media` VALUES (4,117,'YouTube','www.youtube.com/miataylor');
INSERT INTO `social_media` VALUES (5,118,'LinkedIn','www.linkedin.com/ethanparker');
INSERT INTO `social_media` VALUES (6,118,'YouTube','www.youtube.com/ethanparker');
INSERT INTO `social_media` VALUES (7,119,'LinkedIn','www.linkedin.com/jamesnelson');
INSERT INTO `social_media` VALUES (8,119,'YouTube','www.youtube.com/jamesnelson');
INSERT INTO `social_media` VALUES (9,120,'LinkedIn','www.linkedin.com/emiliamoore');
INSERT INTO `social_media` VALUES (10,120,'TikTok','www.tiktok.com/emiliamoore');
INSERT INTO `social_media` VALUES (11,121,'LinkedIn','www.linkedin.com/oliviawilliams');
INSERT INTO `social_media` VALUES (12,121,'TikTok','www.tiktok.com/oliviawilliams');
INSERT INTO `social_media` VALUES (13,122,'LinkedIn','www.linkedin.com/williamwalker');
INSERT INTO `social_media` VALUES (14,122,'TikTok','www.tiktok.com/williamwalker');
INSERT INTO `social_media` VALUES (15,123,'LinkedIn','www.linkedin.com/avawhite');
INSERT INTO `social_media` VALUES (16,123,'TikTok','www.tiktok.com/avawhite');
INSERT INTO `social_media` VALUES (17,124,'LinkedIn','www.linkedin.com/noahmartinez');
INSERT INTO `social_media` VALUES (18,124,'TikTok','www.tiktok.com/noahmartinez');
INSERT INTO `social_media` VALUES (19,125,'LinkedIn','www.linkedin.com/harperscott');
INSERT INTO `social_media` VALUES (20,125,'TikTok','www.tiktok.com/harperscott');
INSERT INTO `social_media` VALUES (21,126,'LinkedIn','www.linkedin.com/jacobmartinez');
INSERT INTO `social_media` VALUES (22,126,'TikTok','www.tiktok.com/jacobmartinez');
INSERT INTO `social_media` VALUES (23,127,'LinkedIn','www.linkedin.com/chloeturner');
INSERT INTO `social_media` VALUES (24,127,'TikTok','www.tiktok.com/chloeturner');
INSERT INTO `social_media` VALUES (25,128,'LinkedIn','www.linkedin.com/oliviaschmidt');
INSERT INTO `social_media` VALUES (26,128,'TikTok','www.tiktok.com/oliviaschmidt');
INSERT INTO `social_media` VALUES (27,129,'LinkedIn','www.linkedin.com/sophiafernandez');
INSERT INTO `social_media` VALUES (28,129,'TikTok','www.tiktok.com/sophiafernandez');
INSERT INTO `social_media` VALUES (29,130,'LinkedIn','www.linkedin.com/ryankim');
INSERT INTO `social_media` VALUES (30,130,'TikTok','www.tiktok.com/ryankim');
INSERT INTO `social_media` VALUES (31,131,'LinkedIn','www.linkedin.com/isabellacosta');
INSERT INTO `social_media` VALUES (32,131,'TikTok','www.tiktok.com/isabellacosta');
INSERT INTO `social_media` VALUES (33,132,'LinkedIn','www.linkedin.com/ethantsaisingh');
INSERT INTO `social_media` VALUES (34,132,'TikTok','www.tiktok.com/ethantsaisingh');
INSERT INTO `social_media` VALUES (35,133,'LinkedIn','www.linkedin.com/mialopes');
INSERT INTO `social_media` VALUES (36,133,'TikTok','www.tiktok.com/mialopes');
INSERT INTO `social_media` VALUES (37,134,'LinkedIn','www.linkedin.com/alexanderpetrov');
INSERT INTO `social_media` VALUES (38,134,'TikTok','www.tiktok.com/alexanderpetrov');
INSERT INTO `social_media` VALUES (39,135,'LinkedIn','www.linkedin.com/emiliakim');
INSERT INTO `social_media` VALUES (40,135,'TikTok','www.tiktok.com/emiliakim');
INSERT INTO `social_media` VALUES (41,136,'LinkedIn','www.linkedin.com/liamjohnson');
INSERT INTO `social_media` VALUES (42,136,'TikTok','www.tiktok.com/liamjohnson');
INSERT INTO `social_media` VALUES (43,137,'LinkedIn','www.linkedin.com/emmamoller');
INSERT INTO `social_media` VALUES (44,137,'TikTok','www.tiktok.com/emmamoller');
INSERT INTO `social_media` VALUES (45,138,'LinkedIn','www.linkedin.com/horishitanaka');
INSERT INTO `social_media` VALUES (46,138,'TikTok','www.tiktok.com/horishitanaka');
INSERT INTO `social_media` VALUES (47,139,'LinkedIn','www.linkedin.com/freyasmith');
INSERT INTO `social_media` VALUES (48,139,'TikTok','www.tiktok.com/freyasmith');
INSERT INTO `social_media` VALUES (49,140,'LinkedIn','www.linkedin.com/olivianielsen');
INSERT INTO `social_media` VALUES (50,140,'TikTok','www.tiktok.com/olivianielsen');
INSERT INTO `social_media` VALUES (51,141,'LinkedIn','www.linkedin.com/yukisuzuki');
INSERT INTO `social_media` VALUES (52,141,'TikTok','www.tiktok.com/yukisuzuki');
INSERT INTO `social_media` VALUES (53,142,'LinkedIn','www.linkedin.com/edenanderson');
INSERT INTO `social_media` VALUES (54,142,'TikTok','www.tiktok.com/edenanderson');
INSERT INTO `social_media` VALUES (55,143,'LinkedIn','www.linkedin.com/miajensen');
INSERT INTO `social_media` VALUES (56,143,'TikTok','www.tiktok.com/miajensen');
INSERT INTO `social_media` VALUES (57,144,'LinkedIn','www.linkedin.com/harutoyamamoto');
INSERT INTO `social_media` VALUES (58,144,'TikTok','www.tiktok.com/harutoyamamoto');
INSERT INTO `social_media` VALUES (59,145,'LinkedIn','www.linkedin.com/avaolsen');
INSERT INTO `social_media` VALUES (60,145,'TikTok','www.tiktok.com/avaolsen');
INSERT INTO `social_media` VALUES (61,146,'LinkedIn','www.linkedin.com/liamthompson');
INSERT INTO `social_media` VALUES (62,146,'TikTok','www.tiktok.com/liamthompson');
INSERT INTO `social_media` VALUES (63,147,'LinkedIn','www.linkedin.com/ellachristensen');
INSERT INTO `social_media` VALUES (64,147,'TikTok','www.tiktok.com/ellachristensen');
INSERT INTO `social_media` VALUES (65,148,'LinkedIn','www.linkedin.com/yuzowatanabe');
INSERT INTO `social_media` VALUES (66,148,'TikTok','www.tiktok.com/yuzowatanabe');
INSERT INTO `social_media` VALUES (67,149,'LinkedIn','www.linkedin.com/emilyhansen');
INSERT INTO `social_media` VALUES (68,149,'TikTok','www.tiktok.com/emilyhansen');
INSERT INTO `social_media` VALUES (69,150,'LinkedIn','www.linkedin.com/hugopatterson');
INSERT INTO `social_media` VALUES (70,150,'TikTok','www.tiktok.com/hugopatterson');
INSERT INTO `social_media` VALUES (71,151,'LinkedIn','www.linkedin.com/arialassen');
INSERT INTO `social_media` VALUES (72,151,'TikTok','www.tiktok.com/arialassen');
INSERT INTO `social_media` VALUES (73,152,'LinkedIn','www.linkedin.com/kaitokobayashi');
INSERT INTO `social_media` VALUES (74,153,'LinkedIn','www.linkedin.com/avajogenson');
INSERT INTO `social_media` VALUES (75,154,NULL,NULL);
INSERT INTO `social_media` VALUES (76,155,NULL,NULL);
INSERT INTO `social_media` VALUES (77,156,NULL,NULL);
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (116,'Sophia','Jones','Female','1995-05-30','sophia.jones@example.com','sophia95','+81 123-456-7890','SophiaJones#95',1,'2024-04-16 03:14:00','Hosting with warmth and hospitality.');
INSERT INTO `user` VALUES (117,'Mia','Taylor','Female','1984-11-20','mia.taylor@example.com','mia84','+1 345-678-9012','MiaTaylor84$',1,'2024-04-10 03:15:00','Providing comfortable stays with personalized experiences.');
INSERT INTO `user` VALUES (118,'Ethan','Parker','Male','1985-12-01','ethan.parker@example.com','ethan85','+1 987-654-3210','EthanParker85#',1,'2024-04-05 03:16:00','Hosting with a focus on comfort and hospitality.');
INSERT INTO `user` VALUES (119,'James','Nelson','Male','1990-07-10','james.nelson@example.com','james90','+86 765 4321 0987','JamesNelson90*',1,'2024-04-07 03:17:00','Hosting travelers and sharing local insights.');
INSERT INTO `user` VALUES (120,'Amelia','Moore','Female','1987-09-15','amelia.moore@example.com','amelia87','+81 876-543-2109','AmeliaMoore87@',1,'2024-04-06 03:18:00','Providing a cozy stay experience for guests.');
INSERT INTO `user` VALUES (121,'Olivia','Williams','Female','1992-11-10','olivia.williams@example.com','olivia92','+61 1234 5678','Olivia#1992',1,'2024-04-18 03:19:00','Welcoming guests with a friendly atmosphere.');
INSERT INTO `user` VALUES (122,'William','Walker','Male','1996-01-15','william.walker@example.com','william96','+44 8765 4321','WilliamWalker96%',1,'2024-04-09 03:20:00','Sharing local tips and recommendations with guests.');
INSERT INTO `user` VALUES (123,'Ava','White','Female','1991-06-18','ava.white@example.com','ava91','+86 987 6543 2109','AvaWhite91!',1,'2024-04-12 03:21:00','Hospitality enthusiast and travel lover.');
INSERT INTO `user` VALUES (124,'Noah','Martinez','Male','1991-11-30','noah.martinez@example.com','noah91','+81 234-567-8901','NoahMartinez91@',1,'2024-04-02 03:22:00','Hosting with a passion for cultural exchange.');
INSERT INTO `user` VALUES (125,'Harper','Scott','Female','1990-02-10','harper.scott@example.com','harper90','+86 234 5678 9012','HarperScott90!',1,'2024-03-28 03:23:00','Offering a comfortable and relaxing stay for guests.');
INSERT INTO `user` VALUES (126,'Jacob','Martinez','Male','1987-09-05','jacob.martinez@example.com','jacob87','+1 234-567-8901','JacobMartinez87!',1,'2024-04-15 03:24:00','Creating memorable stays with personalized experiences.');
INSERT INTO `user` VALUES (127,'Chloe','Turner','Female','1993-08-20','chloe.turner@example.com','chloe93','+1 567-890-1234','ChloeTurner93@',1,'2024-04-19 03:25:00','Enjoys exploring new cuisines and cultures.');
INSERT INTO `user` VALUES (128,'Oliver','Schmidt','Male','1988-05-15','oliver.schmidt@example.com','oliver88','+49 1234 567890','OliverSchmidt88#',0,'2024-04-18 03:26:00','Loves outdoor adventures and hiking.');
INSERT INTO `user` VALUES (129,'Sofia','Fernandez','Female','1991-11-25','sofia.fernandez@example.com','sofia91','+34 678 901234','SofiaFernandez91!',0,'2024-04-17 03:27:00','Enjoys photography and art.');
INSERT INTO `user` VALUES (130,'Ryan','Kim','Male','1995-04-30','ryan.kim@example.com','ryan95','+82 123-456-7890','RyanKim95@',0,'2024-04-16 03:28:00','Passionate about technology and gaming.');
INSERT INTO `user` VALUES (131,'Isabella','Costa','Female','1990-12-10','isabella.costa@example.com','isabella90','+55 1234 567890','IsabellaCosta90#',0,'2024-04-15 03:29:00','Enjoys reading and writing poetry.');
INSERT INTO `user` VALUES (132,'Ethan','Singh','Male','1987-09-05','ethan.singh@example.com','ethan87','+91 98765 43210','EthanSingh87!',1,'2024-04-14 03:30:00','Enthusiastic about fitness and wellness.');
INSERT INTO `user` VALUES (133,'Mia','Lopes','Female','1986-02-28','mia.lopes@example.com','mia86','+52 123 456 7890','MiaLopes86$',0,'2024-04-13 03:31:00','Enjoys gardening and outdoor activities.');
INSERT INTO `user` VALUES (134,'Alexander','Petrov','Male','1993-07-20','alexander.petrov@example.com','alexander93','+7 987 654-32-10','AlexanderPetrov93%',0,'2024-04-12 03:32:00','Avid traveler and history enthusiast.');
INSERT INTO `user` VALUES (135,'Amelia','Kim','Female','1989-10-15','amelia.kim@example.com','amelia89','+82 345-678-9012','AmeliaKim89@',0,'2024-04-11 03:33:00','Enjoys cooking and trying new recipes.');
INSERT INTO `user` VALUES (136,'Liam','Johnson','Male','1988-09-20','liam.johnson@example.com','liam88','+27 21 123 4567','LiamJohnson88@',1,'2024-04-23 03:34:00','Passionate about wildlife photography.');
INSERT INTO `user` VALUES (137,'Emma','Møller','Female','1993-04-15','emma.moller@example.com','emma93','+45 12 345 678','EmmaMoller93#',0,'2024-04-23 03:35:00','Enjoys outdoor activities and hiking.');
INSERT INTO `user` VALUES (138,'Hiroshi','Tanaka','Male','1990-08-25','hiroshi.tanaka@example.com','hiroshi90','+81 3-4567-8901','HiroshiTanaka90@',1,'2024-04-23 03:36:00','Loves exploring local cuisines and traditions.');
INSERT INTO `user` VALUES (139,'Freya','Smith','Female','1987-12-10','freya.smith@example.com','freya87','+44 20 9876 5432','FreyaSmith87$',0,'2024-04-23 03:37:00','Enjoys painting and visiting art galleries.');
INSERT INTO `user` VALUES (140,'Oliver','Nielsen','Male','1994-06-28','oliver.nielsen@example.com','oliver94','+45 23 456 789','OliverNielsen94@',0,'2024-04-23 03:38:00','Passionate about playing musical instruments.');
INSERT INTO `user` VALUES (141,'Yuki','Suzuki','Female','1991-03-18','yuki.suzuki@example.com','yuki91','+81 80-1234-5678','YukiSuzuki91!',1,'2024-04-23 03:39:00','Enjoys photography and exploring nature.');
INSERT INTO `user` VALUES (142,'Ethan','Andersen','Male','1989-10-05','ethan.andersen@example.com','ethan89','+45 45 678 901','EthanAndersen89#',1,'2024-04-23 03:40:00','Loves outdoor adventures and camping.');
INSERT INTO `user` VALUES (143,'Mia','Jensen','Female','1992-07-22','mia.jensen@example.com','mia92','+45 34 567 890','MiaJensen92@',1,'2024-04-23 03:41:00','Enjoys trying new foods and cooking.');
INSERT INTO `user` VALUES (144,'Haruto','Yamamoto','Male','1993-11-15','haruto.yamamoto@example.com','haruto93','+81 90-2345-6789','HarutoYamamoto93%',0,'2024-04-23 03:42:00','Passionate about technology and gaming.');
INSERT INTO `user` VALUES (145,'Ava','Olsen','Female','1986-05-30','ava.olsen@example.com','ava86','+45 56 789 012','AvaOlsen86@',1,'2024-04-23 03:43:00','Enjoys exploring new cultures and traditions.');
INSERT INTO `user` VALUES (146,'Liam','Thompson','Male','1990-02-18','liam.thompson@example.com','liam90','+44 20 1234 5678','LiamThompson90@',1,'2024-04-23 03:44:00','Enjoys outdoor activities and hiking.');
INSERT INTO `user` VALUES (147,'Ella','Christensen','Female','1994-09-10','ella.christensen@example.com','ella94','+45 67 890 123','EllaChristensen94#',0,'2024-04-23 03:45:00','Passionate about painting and art.');
INSERT INTO `user` VALUES (148,'Yuto','Watanabe','Male','1988-06-25','yuto.watanabe@example.com','yuto88','+81 50-1234-5678','YutoWatanabe88$',1,'2024-04-23 03:46:00','Enjoys cooking and trying new recipes.');
INSERT INTO `user` VALUES (149,'Emily','Hansen','Female','1993-12-05','emily.hansen@example.com','emily93','+45 78 901 234','EmilyHansen93@',1,'2024-04-23 03:47:00','Passionate about photography and traveling.');
INSERT INTO `user` VALUES (150,'Hugo','Pedersen','Male','1987-08-15','hugo.pedersen@example.com','hugo87','+45 89 012 345','HugoPedersen87!',0,'2024-04-23 03:48:00','Enjoys hiking and exploring nature.');
INSERT INTO `user` VALUES (151,'Aria','Larsen','Female','1990-04-20','aria.larsen@example.com','aria90','+45 90 123 456','AriaLarsen90@',1,'2024-04-23 03:49:00','Enjoys reading and writing poetry.');
INSERT INTO `user` VALUES (152,'Kaito','Kobayashi','Male','1991-10-08','kaito.kobayashi@example.com','kaito91','+81 70-2345-6789','KaitoKobayashi91#',0,'2024-04-23 03:50:00','Passionate about music and playing guitar.');
INSERT INTO `user` VALUES (153,'Eva','Jørgensen','Female','1989-03-28','eva.jorgensen@example.com','eva89','+45 32 456 789','EvaJorgensen89@',1,'2024-04-23 03:51:00','Enjoys cooking and experimenting with new recipes.');
INSERT INTO `user` VALUES (154,'Sora','Takahashi','Male','1995-01-12','sora.takahashi@example.com','sora95','+81 80-3456-7890','SoraTakahashi95@',1,'2024-04-23 03:52:00','Passionate about technology and gaming.');
INSERT INTO `user` VALUES (155,'Emma','Madsen','Female','1986-07-18','emma.madsen@example.com','emma86','+45 78 901 234','EmmaMadsen86#',0,'2024-04-23 03:53:00','Enjoys painting and exploring art galleries.');
INSERT INTO `user` VALUES (156,'Yui','Ito','Female','1988-12-30','yui.ito@example.com','yui88','+81 90-1234-5678','YuiIto88@',1,'2024-04-23 03:54:00','Passionate about cooking and trying new recipes.');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_language`
--

LOCK TABLES `user_language` WRITE;
/*!40000 ALTER TABLE `user_language` DISABLE KEYS */;
INSERT INTO `user_language` VALUES (1,116,1);
INSERT INTO `user_language` VALUES (2,116,2);
INSERT INTO `user_language` VALUES (3,116,4);
INSERT INTO `user_language` VALUES (4,117,1);
INSERT INTO `user_language` VALUES (5,117,11);
INSERT INTO `user_language` VALUES (6,117,12);
INSERT INTO `user_language` VALUES (7,118,1);
INSERT INTO `user_language` VALUES (8,118,18);
INSERT INTO `user_language` VALUES (9,118,19);
INSERT INTO `user_language` VALUES (10,119,1);
INSERT INTO `user_language` VALUES (11,119,3);
INSERT INTO `user_language` VALUES (12,119,5);
INSERT INTO `user_language` VALUES (13,120,1);
INSERT INTO `user_language` VALUES (14,120,13);
INSERT INTO `user_language` VALUES (15,120,14);
INSERT INTO `user_language` VALUES (16,121,1);
INSERT INTO `user_language` VALUES (17,121,6);
INSERT INTO `user_language` VALUES (18,121,7);
INSERT INTO `user_language` VALUES (19,122,1);
INSERT INTO `user_language` VALUES (20,122,15);
INSERT INTO `user_language` VALUES (21,122,16);
INSERT INTO `user_language` VALUES (22,123,1);
INSERT INTO `user_language` VALUES (23,123,8);
INSERT INTO `user_language` VALUES (24,123,9);
INSERT INTO `user_language` VALUES (25,124,1);
INSERT INTO `user_language` VALUES (26,124,17);
INSERT INTO `user_language` VALUES (27,124,20);
INSERT INTO `user_language` VALUES (28,125,1);
INSERT INTO `user_language` VALUES (29,125,2);
INSERT INTO `user_language` VALUES (30,125,4);
INSERT INTO `user_language` VALUES (31,126,1);
INSERT INTO `user_language` VALUES (32,126,11);
INSERT INTO `user_language` VALUES (33,126,12);
INSERT INTO `user_language` VALUES (34,127,1);
INSERT INTO `user_language` VALUES (35,127,18);
INSERT INTO `user_language` VALUES (36,127,19);
INSERT INTO `user_language` VALUES (37,128,1);
INSERT INTO `user_language` VALUES (38,128,3);
INSERT INTO `user_language` VALUES (39,128,10);
INSERT INTO `user_language` VALUES (40,129,1);
INSERT INTO `user_language` VALUES (41,129,13);
INSERT INTO `user_language` VALUES (42,129,14);
INSERT INTO `user_language` VALUES (43,130,1);
INSERT INTO `user_language` VALUES (44,130,6);
INSERT INTO `user_language` VALUES (45,130,7);
INSERT INTO `user_language` VALUES (46,131,1);
INSERT INTO `user_language` VALUES (47,131,15);
INSERT INTO `user_language` VALUES (48,131,16);
INSERT INTO `user_language` VALUES (49,132,1);
INSERT INTO `user_language` VALUES (50,132,8);
INSERT INTO `user_language` VALUES (51,132,9);
INSERT INTO `user_language` VALUES (52,133,1);
INSERT INTO `user_language` VALUES (53,133,17);
INSERT INTO `user_language` VALUES (54,133,20);
INSERT INTO `user_language` VALUES (55,134,1);
INSERT INTO `user_language` VALUES (56,134,2);
INSERT INTO `user_language` VALUES (57,134,4);
INSERT INTO `user_language` VALUES (58,135,1);
INSERT INTO `user_language` VALUES (59,135,11);
INSERT INTO `user_language` VALUES (60,135,12);
INSERT INTO `user_language` VALUES (61,136,1);
INSERT INTO `user_language` VALUES (62,136,18);
INSERT INTO `user_language` VALUES (63,136,19);
INSERT INTO `user_language` VALUES (64,137,1);
INSERT INTO `user_language` VALUES (65,137,3);
INSERT INTO `user_language` VALUES (66,137,5);
INSERT INTO `user_language` VALUES (67,138,1);
INSERT INTO `user_language` VALUES (68,138,13);
INSERT INTO `user_language` VALUES (69,138,14);
INSERT INTO `user_language` VALUES (70,139,1);
INSERT INTO `user_language` VALUES (71,139,6);
INSERT INTO `user_language` VALUES (72,139,7);
INSERT INTO `user_language` VALUES (73,140,1);
INSERT INTO `user_language` VALUES (74,140,15);
INSERT INTO `user_language` VALUES (75,140,16);
INSERT INTO `user_language` VALUES (76,141,1);
INSERT INTO `user_language` VALUES (77,141,8);
INSERT INTO `user_language` VALUES (78,141,9);
INSERT INTO `user_language` VALUES (79,142,1);
INSERT INTO `user_language` VALUES (80,142,17);
INSERT INTO `user_language` VALUES (81,142,20);
INSERT INTO `user_language` VALUES (82,143,1);
INSERT INTO `user_language` VALUES (83,143,2);
INSERT INTO `user_language` VALUES (84,143,4);
INSERT INTO `user_language` VALUES (85,144,1);
INSERT INTO `user_language` VALUES (86,144,11);
INSERT INTO `user_language` VALUES (87,144,12);
INSERT INTO `user_language` VALUES (88,145,1);
INSERT INTO `user_language` VALUES (89,145,18);
INSERT INTO `user_language` VALUES (90,145,19);
INSERT INTO `user_language` VALUES (91,146,1);
INSERT INTO `user_language` VALUES (92,146,3);
INSERT INTO `user_language` VALUES (93,146,5);
INSERT INTO `user_language` VALUES (94,147,1);
INSERT INTO `user_language` VALUES (95,147,13);
INSERT INTO `user_language` VALUES (96,147,14);
INSERT INTO `user_language` VALUES (97,148,1);
INSERT INTO `user_language` VALUES (98,148,6);
INSERT INTO `user_language` VALUES (99,148,7);
INSERT INTO `user_language` VALUES (100,149,1);
INSERT INTO `user_language` VALUES (101,149,15);
INSERT INTO `user_language` VALUES (102,149,16);
INSERT INTO `user_language` VALUES (103,150,1);
INSERT INTO `user_language` VALUES (104,150,8);
INSERT INTO `user_language` VALUES (105,150,9);
INSERT INTO `user_language` VALUES (106,151,1);
INSERT INTO `user_language` VALUES (107,151,17);
INSERT INTO `user_language` VALUES (108,151,20);
INSERT INTO `user_language` VALUES (109,152,1);
INSERT INTO `user_language` VALUES (110,152,2);
INSERT INTO `user_language` VALUES (111,152,4);
INSERT INTO `user_language` VALUES (112,153,1);
INSERT INTO `user_language` VALUES (113,153,11);
INSERT INTO `user_language` VALUES (114,153,12);
INSERT INTO `user_language` VALUES (115,154,1);
INSERT INTO `user_language` VALUES (116,154,18);
INSERT INTO `user_language` VALUES (117,154,19);
INSERT INTO `user_language` VALUES (118,155,1);
INSERT INTO `user_language` VALUES (119,155,3);
INSERT INTO `user_language` VALUES (120,155,5);
INSERT INTO `user_language` VALUES (121,156,1);
INSERT INTO `user_language` VALUES (122,156,13);
INSERT INTO `user_language` VALUES (123,156,14);
/*!40000 ALTER TABLE `user_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_preferred_guest_type`
--

LOCK TABLES `user_preferred_guest_type` WRITE;
/*!40000 ALTER TABLE `user_preferred_guest_type` DISABLE KEYS */;
INSERT INTO `user_preferred_guest_type` VALUES (42,116,1,1);
INSERT INTO `user_preferred_guest_type` VALUES (43,117,2,2);
INSERT INTO `user_preferred_guest_type` VALUES (44,118,3,5);
INSERT INTO `user_preferred_guest_type` VALUES (45,119,4,6);
INSERT INTO `user_preferred_guest_type` VALUES (46,120,5,5);
INSERT INTO `user_preferred_guest_type` VALUES (47,121,6,1);
INSERT INTO `user_preferred_guest_type` VALUES (48,122,7,1);
INSERT INTO `user_preferred_guest_type` VALUES (49,123,8,1);
INSERT INTO `user_preferred_guest_type` VALUES (50,124,9,2);
INSERT INTO `user_preferred_guest_type` VALUES (51,125,10,4);
INSERT INTO `user_preferred_guest_type` VALUES (52,126,11,1);
INSERT INTO `user_preferred_guest_type` VALUES (53,127,12,1);
INSERT INTO `user_preferred_guest_type` VALUES (54,128,13,5);
INSERT INTO `user_preferred_guest_type` VALUES (55,129,14,5);
INSERT INTO `user_preferred_guest_type` VALUES (56,130,15,2);
INSERT INTO `user_preferred_guest_type` VALUES (57,131,16,1);
INSERT INTO `user_preferred_guest_type` VALUES (58,132,17,1);
INSERT INTO `user_preferred_guest_type` VALUES (59,133,18,2);
INSERT INTO `user_preferred_guest_type` VALUES (60,134,19,3);
INSERT INTO `user_preferred_guest_type` VALUES (61,135,20,1);
INSERT INTO `user_preferred_guest_type` VALUES (62,136,1,1);
INSERT INTO `user_preferred_guest_type` VALUES (63,137,2,2);
INSERT INTO `user_preferred_guest_type` VALUES (64,138,3,5);
INSERT INTO `user_preferred_guest_type` VALUES (65,139,4,6);
INSERT INTO `user_preferred_guest_type` VALUES (66,140,5,5);
INSERT INTO `user_preferred_guest_type` VALUES (67,141,6,1);
INSERT INTO `user_preferred_guest_type` VALUES (68,142,7,1);
INSERT INTO `user_preferred_guest_type` VALUES (69,143,8,1);
INSERT INTO `user_preferred_guest_type` VALUES (70,144,9,2);
INSERT INTO `user_preferred_guest_type` VALUES (71,145,10,4);
INSERT INTO `user_preferred_guest_type` VALUES (72,146,11,1);
INSERT INTO `user_preferred_guest_type` VALUES (73,147,12,1);
INSERT INTO `user_preferred_guest_type` VALUES (74,148,13,5);
INSERT INTO `user_preferred_guest_type` VALUES (75,149,14,5);
INSERT INTO `user_preferred_guest_type` VALUES (76,150,15,2);
INSERT INTO `user_preferred_guest_type` VALUES (77,151,16,NULL);
INSERT INTO `user_preferred_guest_type` VALUES (78,152,17,NULL);
INSERT INTO `user_preferred_guest_type` VALUES (79,153,NULL,NULL);
INSERT INTO `user_preferred_guest_type` VALUES (80,154,NULL,NULL);
INSERT INTO `user_preferred_guest_type` VALUES (81,155,NULL,NULL);
INSERT INTO `user_preferred_guest_type` VALUES (82,156,NULL,NULL);
/*!40000 ALTER TABLE `user_preferred_guest_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES (1,'Welcome Discount','WELCOME2024',15.00,500.00,'2024-06-30','2024-02-15');
INSERT INTO `voucher` VALUES (2,'Spring Sale','SPRINGSALE22',20.00,800.00,'2024-04-30','2024-03-10');
INSERT INTO `voucher` VALUES (3,'Family Vacation Discount','FAMILYVACAY',10.00,1000.00,'2024-07-31','2024-03-25');
INSERT INTO `voucher` VALUES (4,'Summer Special','SUMMERSALE24',25.00,700.00,'2024-09-30','2024-04-05');
INSERT INTO `voucher` VALUES (5,'Last Minute Deal','LASTCHANCE24',30.00,400.00,'2024-05-15','2024-04-10');
INSERT INTO `voucher` VALUES (6,'Anniversary Celebration','ANNIVERSARY2024',20.00,1000.00,'2024-08-31','2024-04-20');
INSERT INTO `voucher` VALUES (7,'Winter Escape','WINTERGETAWAY',15.00,600.00,'2024-11-29','2024-04-25');
INSERT INTO `voucher` VALUES (8,'Student Discount','STUDENTDEAL24',10.00,300.00,'2024-06-15','2024-05-01');
INSERT INTO `voucher` VALUES (9,'Weekend Retreat','WEEKENDBLISS24',20.00,900.00,'2024-10-31','2024-05-10');
INSERT INTO `voucher` VALUES (10,'Birthday Bash Discount','BDAYDISC24',25.00,1200.00,'2024-07-15','2024-05-15');
INSERT INTO `voucher` VALUES (11,'Holiday Bonanza','HOLIDAYFUN',30.00,1500.00,'2024-12-15','2024-05-20');
INSERT INTO `voucher` VALUES (12,'Family Reunion Discount','FAMILYREUNION',15.00,800.00,'2024-08-15','2024-06-01');
INSERT INTO `voucher` VALUES (13,'Back to School Savings','BACKTOSCHOOL24',10.00,500.00,'2024-09-15','2024-06-10');
INSERT INTO `voucher` VALUES (14,'Romantic Getaway Discount','ROMANTICBLISS24',20.00,700.00,'2024-10-15','2024-06-15');
INSERT INTO `voucher` VALUES (15,'Adventure Seekers Deal','ADVENTURE2024',25.00,1000.00,'2024-11-15','2024-06-20');
INSERT INTO `voucher` VALUES (16,'Business Travel Discount','BIZTRIP24',15.00,400.00,'2024-12-30','2024-07-01');
INSERT INTO `voucher` VALUES (17,'Wellness Retreat Offer','WELLNESSBLISS24',20.00,800.00,'2024-09-30','2024-07-05');
INSERT INTO `voucher` VALUES (18,'Pet-Friendly Stay Discount','PETLOVERS2024',15.00,600.00,'2024-10-30','2024-07-10');
INSERT INTO `voucher` VALUES (19,'Summer Vacation Deal','SUMMERFUN24',25.00,900.00,'2024-11-30','2024-07-15');
INSERT INTO `voucher` VALUES (20,'Exclusive Member Discount','MEMBERVIP24',30.00,1000.00,'2024-12-30','2024-03-27');
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'airbnb'
--

--
-- Dumping routines for database 'airbnb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 23:03:10
