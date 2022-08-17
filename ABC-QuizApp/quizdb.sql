/*
 Navicat Premium Data Transfer

 Source Server         : connection
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : quiz

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 14/08/2022 03:49:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `option_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `option_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `option_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `option_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `quiz_id` int(0) NOT NULL,
  `solution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, 'Software', 'Input Device', 'Output Device', 'Memory', 'Identify the device through which data and instructions are entered into a computer', 1, 'B');
INSERT INTO `question` VALUES (2, 'DVU', 'UVD', 'VDU', 'CCTV', 'Computer Monitor is also known as', 1, 'C');
INSERT INTO `question` VALUES (3, 'CD ROM', 'Floppy', 'Blu Ray', 'Red Ray', 'Which one of these stores more data than a DVD?', 1, 'C');
INSERT INTO `question` VALUES (4, 'Compiler', 'Loader', 'Operating system', 'Assembler', 'A computer cannot \"boot\" if it does not have the _____', 1, 'C');
INSERT INTO `question` VALUES (5, 'Mother Board', 'Expansion Board', 'External Drive', 'None', 'Where is RAM located?', 1, 'A');
INSERT INTO `question` VALUES (6, 'site', 'host', 'link', 'browser', 'A _______ is a software program used to view Web pages.', 1, 'D');
INSERT INTO `question` VALUES (7, 'motherboard', 'hard disk drive', 'central processing unit', 'All of the above', 'A computer consists of', 1, 'D');
INSERT INTO `question` VALUES (8, 'CPU and Main Memory', 'Hard Disk and Floppy Drive', 'Control Unit and ALU', 'Operating System and Application', 'The computer\'s processor consists of the following parts', 1, 'C');
INSERT INTO `question` VALUES (9, 'Initialize the system hardware components', 'Update the system', 'Ensure system performance', 'Save the system from crashing', 'The function of BIOS is to', 1, 'A');
INSERT INTO `question` VALUES (10, 'COBOL', 'Java', 'BASIC', 'Assembler', 'Which of the following is a popular programming language for developing multimedia webpages.', 1, 'B');
INSERT INTO `question` VALUES (11, 'Assembly language', 'Machine language', 'Spaghetti code', 'Source code', 'The first computer was programmed using _________', 1, 'B');
INSERT INTO `question` VALUES (12, 'How to display the file', 'How to organise the page', 'How to display message box on page', 'None of the above', 'Markup tags tell the web browser', 1, 'A');
INSERT INTO `question` VALUES (13, 'Database', 'Document Processor', 'Graphic Package', 'Spread Sheet', 'Which of the following software applications would be the most appropriate for performing numerical and statistical calculations?', 1, 'D');
INSERT INTO `question` VALUES (14, 'Authenticating the user.', 'Re-confirming the user.', 'Providing formal access to the user', 'Completing the formality of login-in.', 'Verification of log-in name and password is for', 1, 'A');
INSERT INTO `question` VALUES (15, 'Tertiary', 'Secondary', 'Primary', 'Auxillary', 'USB is which type of storage device?', 1, 'B');
INSERT INTO `question` VALUES (16, 'Logical operation', 'Storage and relative', 'Arithmetic operation', 'All the above', 'The basic operations performed by a computer are', 1, 'D');
INSERT INTO `question` VALUES (17, 'Bit', 'Byte', 'Character', 'Kilobyte', 'The smallest unit in a digital system is a ________', 1, 'A');
INSERT INTO `question` VALUES (18, 'Function', 'Spacebar', 'Arrow', 'Control', 'Which key is used in combination with another key to perform a specific task?', 1, 'D');
INSERT INTO `question` VALUES (19, 'LAN', 'DSL', 'RAM', 'USB', 'Which of the following refers to a small, single-site network ?', 1, 'A');
INSERT INTO `question` VALUES (20, '1000 bytes', '10002 bytes', '10003 bytes', '10004 bytes', 'One Gigabyte = ? (in decimal value)', 1, 'C');

-- ----------------------------
-- Table structure for quiz
-- ----------------------------
DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `difficulty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quiz
-- ----------------------------
INSERT INTO `quiz` VALUES (1, 'English', 'Basic', 'Basic Computer Quiz');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `answer` tinyblob NULL,
  `quiz_id` int(0) NOT NULL,
  `score` double NOT NULL,
  `student_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_gj2fy3dcix7ph7k8684gka40c`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'shaheedabdillah@gmail.com', 'Shaheed', '$2a$10$uidODr5wynVC52ukqwKHfO8PZkCAJQEmWT4a7E9Mkywz3KhazHHzW', 'admin');
INSERT INTO `user` VALUES (2, 'shaheedproxy@gmail.com', 'ShaheedStudent', '$2a$10$1Q7dYWBZz.EouTwWqvYxuevsD9HZjZXTH4TiSxMQHIBoVOoW08XSa', 'student');

SET FOREIGN_KEY_CHECKS = 1;
