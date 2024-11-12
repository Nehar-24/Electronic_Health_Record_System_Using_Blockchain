-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 11:46 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `health_care_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE IF NOT EXISTS `tbladmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblblockchain`
--

CREATE TABLE IF NOT EXISTS `tblblockchain` (
  `TransactionID` int(10) NOT NULL AUTO_INCREMENT,
  `Hospital_Email_ID` longtext,
  `BlocKData` longtext,
  `Current_Times` longtext,
  PRIMARY KEY (`TransactionID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tblblockchain`
--

INSERT INTO `tblblockchain` (`TransactionID`, `Hospital_Email_ID`, `BlocKData`, `Current_Times`) VALUES
(22, 'h1@gmail.com', '34506a154fd2e202204b5d8a32515f5dacf498edc3bf0002106f4ec3340d75c2', '2021-05-27 00:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbldealer`
--

CREATE TABLE IF NOT EXISTS `tbldealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `pswd` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbldealer`
--

INSERT INTO `tbldealer` (`id`, `firstname`, `lastname`, `email`, `dob`, `gender`, `mobile`, `pswd`, `status`) VALUES
(1, 'Ramesh', 'Kumar', 'ramesh@gmail.com', '1996-05-05', 'Male', '9876543456', '123', 'Active'),
(2, 'JK', 'Courier', 'jk@gmail.com', '1998-08-05', 'Male', '8790875784', '123', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblhospital`
--

CREATE TABLE IF NOT EXISTS `tblhospital` (
  `ID_Patient` int(10) NOT NULL AUTO_INCREMENT,
  `Name` text,
  `Email_IDs` text,
  `Mobile_No` text,
  `Passwords` text,
  `Address` text,
  `Gender` text,
  PRIMARY KEY (`ID_Patient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tblhospital`
--

INSERT INTO `tblhospital` (`ID_Patient`, `Name`, `Email_IDs`, `Mobile_No`, `Passwords`, `Address`, `Gender`) VALUES
(1, 'h1', 'h1@gmail.com', '8605067524', '123', '8605067524', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `tblinfohospital`
--

CREATE TABLE IF NOT EXISTS `tblinfohospital` (
  `I_IDs` int(10) NOT NULL AUTO_INCREMENT,
  `PatientEmail` text,
  `Insurance_Company` text,
  `Police_Name` text,
  `Months` text,
  `Coverage_Msg` text,
  `Hospital_Email_ID` text,
  KEY `I_IDs` (`I_IDs`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tblinfohospital`
--

INSERT INTO `tblinfohospital` (`I_IDs`, `PatientEmail`, `Insurance_Company`, `Police_Name`, `Months`, `Coverage_Msg`, `Hospital_Email_ID`) VALUES
(22, 'raj@gmail.com', 'ICICI', 'ICICI', '10', 'Up to 2 Member', 'h1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblinfoinsurance`
--

CREATE TABLE IF NOT EXISTS `tblinfoinsurance` (
  `T_ID` int(10) NOT NULL AUTO_INCREMENT,
  `PatientName` text,
  `PatientEmail` text,
  `Company_Name` text,
  `Mobile_Number` text,
  `Web_Site` text,
  `Address` text,
  `Policy_No` text,
  `Policy_Name` text,
  `Policy_Tenue` text,
  `Base_Premium` text,
  `Coverage_Info` text,
  `Policy_Amount` text,
  `Email_IDs` text,
  PRIMARY KEY (`T_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tblinfoinsurance`
--

INSERT INTO `tblinfoinsurance` (`T_ID`, `PatientName`, `PatientEmail`, `Company_Name`, `Mobile_Number`, `Web_Site`, `Address`, `Policy_No`, `Policy_Name`, `Policy_Tenue`, `Base_Premium`, `Coverage_Info`, `Policy_Amount`, `Email_IDs`) VALUES
(5, 'abc', 'abc@gmail.com', 'a', '88889233612', 'www.pp.com', 'pune', '10101010', 'health care', '1', '10000', 'up to 4 member family', '5 Lac', 'tata@gmail.com'),
(9, 'Raj', 'raj@gmail.com', 'ICICI', '9876543211', 'icici.com', 'Pune', 'AC12345', 'ICICI', '10', '5500', 'Up to 2 Member', '5Lac', 'tata@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblinfoinsuranceo`
--

CREATE TABLE IF NOT EXISTS `tblinfoinsuranceo` (
  `I_IDs` int(10) NOT NULL AUTO_INCREMENT,
  `PatientName` text,
  `PatientEmail` text,
  `Insurance_Company` text,
  `Police_Name` text,
  `Months` text,
  `Coverage_Msg` text,
  KEY `I_IDs` (`I_IDs`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblinfoinsuranceo`
--

INSERT INTO `tblinfoinsuranceo` (`I_IDs`, `PatientName`, `PatientEmail`, `Insurance_Company`, `Police_Name`, `Months`, `Coverage_Msg`) VALUES
(1, 'abc', 'abc@gmail.com', 'tata', 'health care', '15', '4 family member'),
(2, 'Raj', 'raj@gmail.com', 'ICICI', 'ICICI', '10', 'Up to 2 Member');

-- --------------------------------------------------------

--
-- Table structure for table `tblinsurance`
--

CREATE TABLE IF NOT EXISTS `tblinsurance` (
  `ID_Patient` int(10) NOT NULL AUTO_INCREMENT,
  `Name` text,
  `Email_IDs` text,
  `Mobile_No` text,
  `Passwords` text,
  `Address` text,
  `Gender` text,
  PRIMARY KEY (`ID_Patient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblinsurance`
--

INSERT INTO `tblinsurance` (`ID_Patient`, `Name`, `Email_IDs`, `Mobile_No`, `Passwords`, `Address`, `Gender`) VALUES
(1, 'tata', 'tata@gmail.com', '88888896', '123', '88888896', 'Male'),
(2, 'a', 'a@gmail.com', '2346541324984613249865', '12', '2346541324984613249865', 'Select Gender');

-- --------------------------------------------------------

--
-- Table structure for table `tblinsurance_details`
--

CREATE TABLE IF NOT EXISTS `tblinsurance_details` (
  `T_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Email_IDs` text,
  `Company_Name` text,
  `Mobile_Number` text,
  `Web_Site` text,
  `Address` text,
  `Policy_No` text,
  `Policy_Name` text,
  `Policy_Tenue` text,
  `Base_Premium` text,
  `Coverage_Info` text,
  `Policy_Amount` text,
  PRIMARY KEY (`T_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblinsurance_details`
--

INSERT INTO `tblinsurance_details` (`T_ID`, `Email_IDs`, `Company_Name`, `Mobile_Number`, `Web_Site`, `Address`, `Policy_No`, `Policy_Name`, `Policy_Tenue`, `Base_Premium`, `Coverage_Info`, `Policy_Amount`) VALUES
(1, 'tata@gmail.com', 'a', '88889233612', 'www.pp.com', 'pune', '10101010', 'health care', '1', '10000', 'up to 4 member family', '5 Lac'),
(2, 'tata@gmail.com', 'ICICI', '9876543211', 'icici.com', 'Pune', 'AC12345', 'ICICI', '10', '5500', 'Up to 2 Member', '5Lac');

-- --------------------------------------------------------

--
-- Table structure for table `tblmaster`
--

CREATE TABLE IF NOT EXISTS `tblmaster` (
  `Trans_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Transcation_Hash` text,
  `FromName` text,
  `ToName` text,
  `NonceData` text,
  `PreViewHash` text,
  `DiseaseFirst` text,
  `DiseaseSecond` text,
  `DiseaseThrees` text,
  `DiseaseFour` text,
  `DiseaseFive` text,
  `DiseaseSix` text,
  PRIMARY KEY (`Trans_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tblmaster`
--

INSERT INTO `tblmaster` (`Trans_ID`, `Transcation_Hash`, `FromName`, `ToName`, `NonceData`, `PreViewHash`, `DiseaseFirst`, `DiseaseSecond`, `DiseaseThrees`, `DiseaseFour`, `DiseaseFive`, `DiseaseSix`) VALUES
(3, '00000a9ad915c7c622de08f4f3052489c5d95e1987486fb1a185b1da9c078d0e', 'h1@gmail.com', 'om@gmail.com', '9345834', '000002c2b63ecc0e5d104054cc67bdee0af7288293d734c6810089beb3106a7c', 'jkdbfk', 'kjsdbfk', 'bdkjlb', 'kjbdvk', 'kjbvkdb', 'kjbvdkj'),
(4, '000008b3725149d8429ab25735dcccfb47999360c8ac04698654eecd163c9aab', 'h1@gmail.com', 'abc@gmail.com', '3829846', '0000087dd16f687d94f6dc73a4b45e72ad795b1350837f0d55082213665ca2fe', 'f', 's', 's', 'ss', 's', 's'),
(21, '34506a154fd2e202204b5d8a32515f5dacf498edc3bf0002106f4ec3340d75c2', 'h1@gmail.com', 'raj@gmail.com', '32', '0', 'Headache', 'Pain', 'Feavor', 'No', 'No', 'No'),
(22, '34506a154fd2e202204b5d8a32515f5dacf498edc3bf0002106f4ec3340d75c2', 'h1@gmail.com', 'raj@gmail.com', '32', '0', 'Headache', 'Pain', 'Feavor', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tblmasterpatient`
--

CREATE TABLE IF NOT EXISTS `tblmasterpatient` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` text,
  `Middle_Name` text,
  `Last_Name` text,
  `Birth_Of_Date` text,
  `Email_ID` text,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblmasterpatient`
--

INSERT INTO `tblmasterpatient` (`P_ID`, `First_Name`, `Middle_Name`, `Last_Name`, `Birth_Of_Date`, `Email_ID`) VALUES
(4, 'abc', 'ab', 'abb', '2000/1/2', 'abc@gmail.com'),
(8, '0', '0', '0', '0', 'aa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblmasterpatientnew`
--

CREATE TABLE IF NOT EXISTS `tblmasterpatientnew` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` text,
  `Middle_Name` text,
  `Last_Name` text,
  `Birth_Of_Date` text,
  `DiseaseFirst` text,
  `DiseaseSecond` text,
  `DiseaseThrees` text,
  `DiseaseFour` text,
  `DiseaseFive` text,
  `DiseaseSix` text,
  `Email_ID` text,
  `DateShow` text,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tblmasterpatientnew`
--

INSERT INTO `tblmasterpatientnew` (`P_ID`, `First_Name`, `Middle_Name`, `Last_Name`, `Birth_Of_Date`, `DiseaseFirst`, `DiseaseSecond`, `DiseaseThrees`, `DiseaseFour`, `DiseaseFive`, `DiseaseSix`, `Email_ID`, `DateShow`) VALUES
(6, 'om', 'aa', 'okn', '1990/2/15', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'om@gmail.com', '2020-03-13 14:55:25'),
(22, 'Raj', 'Kumar', 'Patil', '2012-05-05', 'Headache', 'Pain', 'Feavor', 'No', 'No', 'No', 'raj@gmail.com', '2021-05-27 00:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicine`
--

CREATE TABLE IF NOT EXISTS `tblmedicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderId` varchar(255) NOT NULL,
  `Email_ID` varchar(255) NOT NULL,
  `hospital` varchar(200) NOT NULL,
  `medname` varchar(255) NOT NULL,
  `submedname` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `createdate` varchar(255) NOT NULL,
  `createtime` varchar(255) NOT NULL,
  `cost` varchar(200) NOT NULL DEFAULT '0',
  `TrackingId` varchar(200) NOT NULL DEFAULT 'Not Assign',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tblmedicine`
--

INSERT INTO `tblmedicine` (`id`, `OrderId`, `Email_ID`, `hospital`, `medname`, `submedname`, `company`, `quantity`, `createdate`, `createtime`, `cost`, `TrackingId`) VALUES
(2, 'CH2020212', 'raj@gmail.com', 'h1@gmail.com', 'Remdesivir', '100mg/vial', 'COVIFOR', '5', '2021/05/27', '00:49:47', '1000', 'CH2020214'),
(4, 'CH2020213', 'raj@gmail.com', 'h1@gmail.com', 'Admisor', 'Divis', 'Shipla', '10', '2021/05/27', '14:28:40', '800', 'CH2020214'),
(5, 'OD2020215', 'raj@gmail.com', 'h1@gmail.com', 'Fevasor', '250mg', 'Somp', '12', '2021/05/28', '12:44:47', '10500', 'CH20202116');

-- --------------------------------------------------------

--
-- Table structure for table `tblregister`
--

CREATE TABLE IF NOT EXISTS `tblregister` (
  `ID_Patient` int(10) NOT NULL AUTO_INCREMENT,
  `Name` text,
  `Email_IDs` text,
  `Mobile_No` text,
  `Passwords` text,
  `Address` text,
  `Gender` text,
  `Hospital_Name` text,
  PRIMARY KEY (`ID_Patient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tblregister`
--

INSERT INTO `tblregister` (`ID_Patient`, `Name`, `Email_IDs`, `Mobile_No`, `Passwords`, `Address`, `Gender`, `Hospital_Name`) VALUES
(4, 'abc', 'abc@gmail.com', '8888888888', '123', '8888888888', 'Male', 'h1@gmail.com'),
(6, 'xyz', 'xyz@gmail.com', '8888923361', '123', '8888923361', 'Male', 'h1@gmail.com'),
(7, 'Raj', 'raj@gmail.com', '9876543456', '1234', '9876543456', 'Male', 'h1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblshipproduct`
--

CREATE TABLE IF NOT EXISTS `tblshipproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TrackingId` varchar(200) NOT NULL,
  `Email_ID` varchar(200) NOT NULL,
  `hospitalname` varchar(200) NOT NULL,
  `total_product` varchar(200) NOT NULL,
  `cost` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Not Assign',
  `dealername` varchar(200) NOT NULL DEFAULT '0',
  `otp` varchar(255) NOT NULL DEFAULT '0',
  `payment` varchar(200) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tblshipproduct`
--

INSERT INTO `tblshipproduct` (`id`, `TrackingId`, `Email_ID`, `hospitalname`, `total_product`, `cost`, `status`, `dealername`, `otp`, `payment`) VALUES
(3, 'CH2020213', 'raj@gmail.com', 'h1@gmail.com', '1', '600', 'Delivered', 'Ramesh Kumar', '5834', 'Done'),
(14, 'CH2020214', 'raj@gmail.com', 'h1@gmail.com', '1', '2500', 'Not Assign', '0', '0', 'Pending'),
(15, 'CH20202115', 'raj@gmail.com', 'h1@gmail.com', '2', '5200', 'Delivered', 'JK Courier', '6046', 'Done'),
(16, 'CH20202116', 'raj@gmail.com', 'h1@gmail.com', '12', '10500', 'Assign', 'JK Courier', '0', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE IF NOT EXISTS `tbltracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TrackingId` varchar(200) NOT NULL,
  `dealername` varchar(200) NOT NULL,
  `total_product` varchar(200) NOT NULL,
  `cdate` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`id`, `TrackingId`, `dealername`, `total_product`, `cdate`, `time`, `status`) VALUES
(1, 'CH2020213', 'aa aa', '1', '2021/05/27', '20:16:41', 'Delivered'),
(5, 'CH20202115', 'JK Courier', '2', '2021/05/28', '13:35:05', 'Delivered'),
(6, 'CH20202116', 'JK Courier', '12', '2021/05/28', '13:53:07', 'In Transit');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
