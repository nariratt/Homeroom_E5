-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2022 at 09:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectrfid65`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(11) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'รหัสประจำตัวนักเรียน',
  `RFIDCARD` varchar(8) COLLATE utf8_thai_520_w2 NOT NULL,
  `prefix` varchar(15) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'คำนำหน้า',
  `std_name` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'ชื่อนักเรียน',
  `std_lastname` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'นามสกุลนักเรียน',
  `gender` enum('ช','ญ') COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'เพศ',
  `village` varchar(30) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'หมู่บ้าน',
  `Add_number` varchar(6) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'บ้านเลขที่',
  `swine` int(5) DEFAULT NULL COMMENT 'หมู่',
  `district` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'อำเภอ',
  `sub_distric` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'ตำบล',
  `Roard` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ถนน',
  `street` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ซอย',
  `province` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'จังหวัด',
  `postal_code` varchar(5) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'รหัสไปรษณีย์',
  `std_phone` varchar(10) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'หมายเลขโทรศัพท์นักเรียน',
  `std_Mail` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'อีเมล์นักเรียน',
  `std_line` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ไลน์ไอดี',
  `std_level` varchar(10) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'ระดับชั้น',
  `subject_type` varchar(20) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'ประเภทวิชา',
  `std_status` varchar(15) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'สถานะ normal, retile, drop',
  `parental_status` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'สถานภาพผู้ปกครอง',
  `prefix_dad` varchar(15) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'คำนำหน้าชื่อบิดา',
  `dad_name` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ชื่อบิดา',
  `dad_lname` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'นามสกุลบิดา',
  `village_dad` varchar(30) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'หมู่บ้านบิดา',
  `Add_number_dad` varchar(6) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'บ้านเลขที่บิดา',
  `group_dad` int(5) DEFAULT NULL COMMENT 'หมู่บิดา',
  `district_dad` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'อำเภอบิดา',
  `sub_distric_dad` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ตำบลบิดา',
  `Roard_dad` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ถนนบิดา',
  `street_dad` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ซอยบิดา',
  `province_dad` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'จังหวัดบิดา',
  `postal_code_dad` varchar(5) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'รหัสไปรษณีย์บิดา',
  `dad_tel` varchar(10) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'เบอร์โทรศัพท์บิดา',
  `living_dad` varchar(15) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'การคงชีวิตของบิดา',
  `Disability_dad` varchar(15) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ความพิการของบิดา',
  `occupation_dad` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'อาชีพบิดา',
  `dad_salary` int(5) DEFAULT NULL COMMENT 'เงินเดือนบิดา',
  `prefix_mum` varchar(15) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'คำนำหน้ามารดา',
  `mum_name` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ชื่อมารดา',
  `mum_lname` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'นามสกุลมารดา',
  `village_mum` varchar(30) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'หมู่บ้านมารดา',
  `Add_number_mum` varchar(6) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'บ้านเลขที่มารดา',
  `group_mum` int(5) DEFAULT NULL COMMENT 'หมู่มารดา',
  `district_mum` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'อำเภอมารดา',
  `sub_distric_mum` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ตำบลมารดา',
  `Roard_mum` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ถนนมารดา',
  `street_mum` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ซอยมารดา',
  `province_mum` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'จังหวัดมารดา',
  `postal_code_mum` varchar(5) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'รหัสไปรษณีย์มารดา',
  `living_mum` varchar(15) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'การคงชีวิตของมารดา',
  `Disability_mum` varchar(15) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ความพิการของมารดา',
  `occupation_mum` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'อาชีพมารดา',
  `mum_salary` int(5) DEFAULT NULL COMMENT 'เงินเดือนมารดา',
  `mum_tel` varchar(10) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'เบอร์โทรศัพท์มารดา',
  `prefix_parents` varchar(15) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'คำนำหน้าผู้ปกครอง',
  `parents_name` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ชื่อผู้ปกครอง',
  `parents_lname` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'นามสกุลผู้ปกครอง',
  `village_parents` varchar(30) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'หมู่บ้านผู้ปกครอง',
  `Add_number_parents` varchar(6) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'บ้านเลขที่ผู้ปกครอง',
  `group_parents` int(5) DEFAULT NULL COMMENT 'หมู่ผู้ปกครอง',
  `district_parents` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'อำเภอผู้ปกครอง',
  `sub_distric_parents` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ตำบลผู้ปกครอง',
  `Roard_parents` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ถนนผู้ปกครอง',
  `street_parents` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ซอยผู้ปกครอง',
  `province_parents` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'จังหวัดผู้ปกครอง',
  `postal_code_parents` varchar(5) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'รหัสไปรษณีย์ผู้ปกครอง',
  `occupation_parents` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'อาชีพผู้ปกครอง',
  `parents_salary` int(5) DEFAULT NULL COMMENT 'เงินเดือนผู้ปกครอง',
  `parents_tel` varchar(10) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'เบอร์โทรศัพท์ผู้ปกครอง',
  `village_Caddress` varchar(30) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'หมู่บ้านปัจจุบัน/หอพัก',
  `Add_number_Caddress` varchar(6) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'บ้านเลขที่ปัจจุบัน/หอพัก',
  `group_Caddress` int(5) DEFAULT NULL COMMENT 'หมู่ปัจจุบัน/หอพัก',
  `district_Caddress` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'อำเภอปัจจุบัน/หอพัก',
  `sub_distric_Caddress` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ตำบลปัจจุบัน/หอพัก',
  `Roard_Caddress` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ถนนปัจจุบัน/หอพัก',
  `street_Caddress` varchar(50) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'ซอยปัจจุบัน/หอพัก',
  `province_Caddress` varchar(20) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'จังหวัดปัจจุบัน/หอพัก',
  `postal_code_Caddress` varchar(5) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'รหัสไปรษณีย์ปัจจุบัน/หอพัก',
  `tel_Caddress` varchar(10) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'เบอร์โทรศัพท์ที่อยู่ปัจจุบัน/หอพัก',
  `Address_location` varchar(30) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'พิกัดบ้านตามทะเบียนบ้าน/ติดต่อได้',
  `Cur_Address_location` varchar(30) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'พิกัดบ้านพัก/หอพัก',
  `std_pass` varchar(15) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'รหัสผ่านเข้าสู่ระบบ',
  `major_id` varchar(10) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'รหัสสาขาวิชา',
  `minor_id` varchar(7) COLLATE utf8_thai_520_w2 DEFAULT NULL COMMENT 'รหัสสาขางาน',
  `user_id` varchar(13) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'รหัสประจำตัวผู้ใช้งานระบบ',
  `group_id` varchar(11) COLLATE utf8_thai_520_w2 NOT NULL COMMENT 'รหัสกลุ่มเรียน'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_thai_520_w2;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `RFIDCARD`, `prefix`, `std_name`, `std_lastname`, `gender`, `village`, `Add_number`, `swine`, `district`, `sub_distric`, `Roard`, `street`, `province`, `postal_code`, `std_phone`, `std_Mail`, `std_line`, `std_level`, `subject_type`, `std_status`, `parental_status`, `prefix_dad`, `dad_name`, `dad_lname`, `village_dad`, `Add_number_dad`, `group_dad`, `district_dad`, `sub_distric_dad`, `Roard_dad`, `street_dad`, `province_dad`, `postal_code_dad`, `dad_tel`, `living_dad`, `Disability_dad`, `occupation_dad`, `dad_salary`, `prefix_mum`, `mum_name`, `mum_lname`, `village_mum`, `Add_number_mum`, `group_mum`, `district_mum`, `sub_distric_mum`, `Roard_mum`, `street_mum`, `province_mum`, `postal_code_mum`, `living_mum`, `Disability_mum`, `occupation_mum`, `mum_salary`, `mum_tel`, `prefix_parents`, `parents_name`, `parents_lname`, `village_parents`, `Add_number_parents`, `group_parents`, `district_parents`, `sub_distric_parents`, `Roard_parents`, `street_parents`, `province_parents`, `postal_code_parents`, `occupation_parents`, `parents_salary`, `parents_tel`, `village_Caddress`, `Add_number_Caddress`, `group_Caddress`, `district_Caddress`, `sub_distric_Caddress`, `Roard_Caddress`, `street_Caddress`, `province_Caddress`, `postal_code_Caddress`, `tel_Caddress`, `Address_location`, `Cur_Address_location`, `std_pass`, `major_id`, `minor_id`, `user_id`, `group_id`) VALUES
('63309010001', '0', 'นางสาว', 'ณัฐกมล', 'แพงคำดี', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101'),
('63309010002', '0', 'นางสาว', 'สุธีรา', 'ตื่นสาย', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101'),
('63309010005', '0', 'นางสาว', 'สุธาลักษณ์', 'สุนคร', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101'),
('63309010006', '0', 'นาย', 'ปิยวัฒน์', 'วรสุนทร', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101'),
('63309010007', '0', 'นาย', 'ธีร์ธณวัช', 'เพ็ชรศรี', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101'),
('63309010008', '2451E434', 'นาย', 'พันธกานต์', 'มนัสศิล', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010009', '0', 'นาย', 'วรรณรักษ์', 'พิมพันสังข์', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101'),
('63309010011', '0', 'นางสาว', 'ชลิดา', 'รวดเร็ว', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101'),
('63309010013', '0', 'นางสาว', 'สุติกาลณ์', 'พลเรือง', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101'),
('63309010014', '0', 'นางสาว', 'นรีรัตน์', 'คงสตรี', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010015', '0', 'นาย', 'กรณิศ', 'จันทร์มี', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. E', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010016', '0', 'นางสาว', 'ปุณฑริก', 'ศิริชาติ', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010017', '0', 'นางสาว', 'สุภาพร', 'เอสันเทียะ', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010018', '0', 'นางสาว', 'ยุพารัตน์', 'เฉลียวชาติ', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010019', '0', 'นาย', 'อธิวัฒน์', 'ทาวรรณ์', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010020', '0', 'นางสาว', 'จีรวรรณ', 'ละลี', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010022', '0', 'นางสาว', 'ณัฐกมล', 'แพงคำดี', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010023', '0', 'นางสาว', 'ปริมประภา', 'ค้าสุวรรณ', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010024', '0', 'นาย', 'กฤษณะ', 'ยวงทอง', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010025', '0', 'นางสาว', 'สุชาดา', 'แกนยางหวาย', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010027', '0', 'นาย', 'ฐิติศักดิ์', 'เมืองดี', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010028', '0', 'นาย', 'ธารินทร์', 'แซ่โล้ว', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010030', '0', 'นาย', 'ยุทธนา', 'ไตรณรงค์', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010031', '0', 'นางสาว', 'นภาวัล', 'วัฒนาธร', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010032', 'F43E8333', 'นางสาว', 'ณัฐณิชา', 'วีรคม', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010033', '0', 'นาง', 'ณัฐก', 'แพงคำ', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010034', '0', 'นาย', 'ธีรพงษ์', 'เตจาหลวง', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010035', '0', 'นางสาว', 'ปนัสยา', 'จงหมายกลาง', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010036', '0', 'นาย', 'พชรพล', 'อินทร์ขำ', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010037', '0', 'นางสาว', 'ณัฐกานต์', 'สิงหสุรศักดิ์', 'ญ', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090105'),
('63309010038', '0', 'นาย', 'ภัทรนิธิ์', 'มาลาน', 'ช', NULL, '', NULL, '', '', NULL, NULL, '', '', NULL, NULL, NULL, ' ทส. D', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3090', '309010', '7071004', '633090101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
