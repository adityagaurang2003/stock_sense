-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2024 at 04:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock_sense`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `company_id` int(11) NOT NULL,
  `industryinfo_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `series` varchar(100) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  `isin` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `listingDate` varchar(100) NOT NULL,
  `pdSectorInd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`company_id`, `industryinfo_id`, `company_name`, `series`, `symbol`, `isin`, `status`, `listingDate`, `pdSectorInd`) VALUES
(1, 1, 'ABB India Limited', 'EQ', 'ABB', 'INE117A01022', 'Listed', '08-Feb-1995', 'NIFTY INFRASTRUCTURE                              '),
(2, 2, 'Adani Energy Solutions Limited', 'EQ', 'ADANIENSOL', 'INE931S01010', 'Listed', '31-Jul-2015', NULL),
(3, 3, 'Adani Enterprises Limited', 'EQ', 'ADANIENT', 'INE423A01024', 'Listed', '04-Jun-1997', 'NIFTY 500                                         '),
(4, 4, 'Adani Green Energy Limited', 'EQ', 'ADANIGREEN', 'INE364U01010', 'Listed', '18-Jun-2018', 'NIFTY 500                                         '),
(5, 5, 'Adani Ports and Special Economic Zone Limited', 'EQ', 'ADANIPORTS', 'INE742F01042', 'Listed', '27-Nov-2007', 'NIFTY 500                                         '),
(6, 6, 'Ambuja Cements Limited', 'EQ', 'AMBUJACEM', 'INE079A01024', 'Listed', '18-Feb-1998', 'NIFTY COMMODITIES                                 '),
(7, 7, 'Apollo Hospitals Enterprise Limited', 'EQ', 'APOLLOHOSP', 'INE437A01024', 'Listed', '10-Jan-1996', 'NIFTY PHARMA                                      '),
(8, 8, 'Asian Paints Limited', 'EQ', 'ASIANPAINT', 'INE021A01026', 'Listed', '31-May-1995', 'NIFTY 500                                         '),
(9, 9, 'Adani Total Gas Limited', 'EQ', 'ATGL', 'INE399L01023', 'Listed', '05-Nov-2018', NULL),
(10, 10, 'Adani Wilmar Limited', 'EQ', 'AWL', 'INE699H01024', 'Listed', '08-Feb-2022', NULL),
(11, 11, 'Axis Bank Limited', 'EQ', 'AXISBANK', 'INE238A01034', 'Listed', '16-Nov-1998', 'NIFTY BANK                                        '),
(12, 12, 'Bajaj Auto Limited', 'EQ', 'BAJAJ-AUTO', 'INE917I01010', 'Listed', '26-May-2008', 'NIFTY AUTO                                        '),
(13, 13, 'Bajaj Finserv Limited', 'EQ', 'BAJAJFINSV', 'INE918I01026', 'Listed', '26-May-2008', 'NIFTY FINANCIAL SERVICES                          '),
(14, 13, 'Bajaj Holdings & Investment Limited', 'EQ', 'BAJAJHLDNG', 'INE118A01012', 'Listed', '15-Mar-1995', 'NIFTY FINANCIAL SERVICES                          '),
(15, 15, 'Bajaj Finance Limited', 'EQ', 'BAJFINANCE', 'INE296A01024', 'Listed', '01-Apr-2003', 'NIFTY FINANCIAL SERVICES                          '),
(16, 16, 'Bank of Baroda', 'EQ', 'BANKBARODA', 'INE028A01039', 'Listed', '19-Feb-1997', 'NIFTY BANK                                        '),
(17, 17, 'Bharat Electronics Limited', 'EQ', 'BEL', 'INE263A01024', 'Listed', '19-Jul-2000', 'NIFTY 500                                         '),
(18, 8, 'Berger Paints (I) Limited', 'EQ', 'BERGEPAINT', 'INE463A01038', 'Listed', '24-Nov-1999', 'NIFTY 500                                         '),
(19, 19, 'Bharti Airtel Limited', 'EQ', 'BHARTIARTL', 'INE397D01024', 'Listed', '15-Feb-2002', 'NIFTY 500                                         '),
(20, 20, 'Bosch Limited', 'EQ', 'BOSCHLTD', 'INE323A01026', 'Listed', '12-May-2003', 'NIFTY 500                                         '),
(21, 21, 'Bharat Petroleum Corporation Limited', 'EQ', 'BPCL', 'INE029A01011', 'Listed', '13-Sep-1995', 'NIFTY 500                                         '),
(22, 22, 'Britannia Industries Limited', 'EQ', 'BRITANNIA', 'INE216A01030', 'Listed', '05-Nov-1998', 'NIFTY FMCG                                        '),
(23, 16, 'Canara Bank', 'EQ', 'CANBK', 'INE476A01014', 'Listed', '23-Dec-2002', 'NIFTY BANK                                        '),
(24, 15, 'Cholamandalam Investment and Finance Company Limited', 'EQ', 'CHOLAFIN', 'INE121A01024', 'Listed', '15-May-1996', 'NIFTY FINANCIAL SERVICES                          '),
(25, 25, 'Cipla Limited', 'EQ', 'CIPLA', 'INE059A01026', 'Listed', '08-Feb-1995', 'NIFTY PHARMA                                      '),
(26, 26, 'Coal India Limited', 'EQ', 'COALINDIA', 'INE522F01014', 'Listed', '04-Nov-2010', 'NIFTY 500                                         '),
(27, 27, 'Colgate Palmolive (India) Limited', 'EQ', 'COLPAL', 'INE259A01022', 'Listed', '17-Dec-2007', 'NIFTY FMCG                                        '),
(28, 27, 'Dabur India Limited', 'EQ', 'DABUR', 'INE016A01026', 'Listed', '28-Apr-1999', 'NIFTY FMCG                                        '),
(29, 25, 'Divi\'s Laboratories Limited', 'EQ', 'DIVISLAB', 'INE361B01024', 'Listed', '12-Mar-2003', 'NIFTY PHARMA                                      '),
(30, 30, 'DLF Limited', 'EQ', 'DLF', 'INE271C01023', 'Listed', '05-Jul-2007', 'NIFTY INFRASTRUCTURE                              '),
(31, 31, 'Avenue Supermarts Limited', 'EQ', 'DMART', 'INE192R01011', 'Listed', '21-Mar-2017', 'NIFTY 500                                         '),
(32, 25, 'Dr. Reddy\'s Laboratories Limited', 'EQ', 'DRREDDY', 'INE089A01023', 'Listed', '30-May-2003', 'NIFTY PHARMA                                      '),
(33, 12, 'Eicher Motors Limited', 'EQ', 'EICHERMOT', 'INE066A01021', 'Listed', '07-Sep-2004', 'NIFTY AUTO                                        '),
(34, 34, 'GAIL (India) Limited', 'EQ', 'GAIL', 'INE129A01019', 'Listed', '02-Apr-1997', 'NIFTY 500                                         '),
(35, 27, 'Godrej Consumer Products Limited', 'EQ', 'GODREJCP', 'INE102D01028', 'Listed', '20-Jun-2001', 'NIFTY FMCG                                        '),
(36, 6, 'Grasim Industries Limited', 'EQ', 'GRASIM', 'INE047A01021', 'Listed', '10-May-1995', 'NIFTY 500                                         '),
(37, 17, 'Hindustan Aeronautics Limited', 'EQ', 'HAL', 'INE066F01020', 'Listed', '28-Mar-2018', 'NIFTY 500                                         '),
(38, 38, 'Havells India Limited', 'EQ', 'HAVELLS', 'INE176B01034', 'Listed', '21-Mar-2001', 'NIFTY INDIA CONSUMPTION                           '),
(39, 39, 'HCL Technologies Limited', 'EQ', 'HCLTECH', 'INE860A01027', 'Listed', '06-Jan-2000', 'NIFTY IT                                          '),
(40, 11, 'HDFC Bank Limited', 'EQ', 'HDFCBANK', 'INE040A01034', 'Listed', '08-Nov-1995', 'NIFTY BANK                                        '),
(41, 41, 'HDFC Life Insurance Company Limited', 'EQ', 'HDFCLIFE', 'INE795G01014', 'Listed', '17-Nov-2017', 'NA'),
(42, 12, 'Hero MotoCorp Limited', 'EQ', 'HEROMOTOCO', 'INE158A01026', 'Listed', '11-Apr-2003', 'NIFTY AUTO                                        '),
(43, 43, 'Hindalco Industries Limited', 'EQ', 'HINDALCO', 'INE038A01020', 'Listed', '08-Jan-1997', 'NIFTY 500                                         '),
(44, 44, 'Hindustan Unilever Limited', 'EQ', 'HINDUNILVR', 'INE030A01027', 'Listed', '06-Jul-1995', 'NIFTY FMCG                                        '),
(45, 11, 'ICICI Bank Limited', 'EQ', 'ICICIBANK', 'INE090A01021', 'Listed', '17-Sep-1997', 'NIFTY BANK                                        '),
(46, 46, 'ICICI Lombard General Insurance Company Limited', 'EQ', 'ICICIGI', 'INE765G01017', 'Listed', '27-Sep-2017', 'NA'),
(47, 41, 'ICICI Prudential Life Insurance Company Limited', 'EQ', 'ICICIPRULI', 'INE726G01019', 'Listed', '29-Sep-2016', 'NA'),
(48, 48, 'InterGlobe Aviation Limited', 'EQ', 'INDIGO', 'INE646L01027', 'Listed', '10-Nov-2015', 'NIFTY 500                                         '),
(49, 11, 'IndusInd Bank Limited', 'EQ', 'INDUSINDBK', 'INE095A01012', 'Listed', '28-Jan-1998', 'NIFTY BANK                                        '),
(50, 39, 'Infosys Limited', 'EQ', 'INFY', 'INE009A01021', 'Listed', '08-Feb-1995', 'NIFTY IT                                          '),
(51, 21, 'Indian Oil Corporation Limited', 'EQ', 'IOC', 'INE242A01010', 'Listed', '24-Jul-1996', 'NIFTY 500                                         '),
(52, 52, 'Indian Railway Catering And Tourism Corporation Limited', 'EQ', 'IRCTC', 'INE335Y01020', 'Listed', '14-Oct-2019', NULL),
(53, 44, 'ITC Limited', 'EQ', 'ITC', 'INE154A01025', 'Listed', '23-Aug-1995', 'NIFTY 500                                         '),
(54, 54, 'Jindal Steel & Power Limited', 'EQ', 'JINDALSTEL', 'INE749A01030', 'Listed', '29-Dec-1999', 'NIFTY 500                                         '),
(55, 54, 'JSW Steel Limited', 'EQ', 'JSWSTEEL', 'INE019A01038', 'Listed', '23-Mar-2005', 'NIFTY METAL                                       '),
(56, 11, 'Kotak Mahindra Bank Limited', 'EQ', 'KOTAKBANK', 'INE237A01028', 'Listed', '20-Dec-1995', 'NIFTY BANK                                        '),
(57, 41, 'Life Insurance Corporation Of India', 'EQ', 'LICI', 'INE0J1Y01017', 'Listed', '17-May-2022', 'NA'),
(58, 58, 'Larsen & Toubro Limited', 'EQ', 'LT', 'INE018A01030', 'Listed', '23-Jun-2004', 'NIFTY INFRASTRUCTURE                              '),
(59, 39, 'LTIMindtree Limited', 'EQ', 'LTIM', 'INE214T01019', 'Listed', '21-Jul-2016', NULL),
(60, 60, 'Mahindra & Mahindra Limited', 'EQ', 'M&M', 'INE101A01026', 'Listed', '03-Jan-1996', 'NIFTY AUTO                                        '),
(61, 10, 'Marico Limited', 'EQ', 'MARICO', 'INE196A01026', 'Listed', '01-May-1996', 'NIFTY FMCG                                        '),
(62, 60, 'Maruti Suzuki India Limited', 'EQ', 'MARUTI', 'INE585B01010', 'Listed', '09-Jul-2003', 'NIFTY AUTO                                        '),
(63, 63, 'United Spirits Limited', 'EQ', 'MCDOWELL-N', 'INE854D01024', 'Listed', '27-Sep-2001', 'NIFTY 500                                         '),
(64, 20, 'Samvardhana Motherson International Limited', 'EQ', 'MOTHERSON', 'INE775A01035', 'Listed', '14-Aug-1996', NULL),
(65, 15, 'Muthoot Finance Limited', 'EQ', 'MUTHOOTFIN', 'INE414G01012', 'Listed', '06-May-2011', 'NIFTY FINANCIAL SERVICES                          '),
(66, 66, 'Info Edge (India) Limited', 'EQ', 'NAUKRI', 'INE663F01024', 'Listed', '21-Nov-2006', 'NIFTY IT                                          '),
(67, 22, 'Nestle India Limited', 'EQ', 'NESTLEIND', 'INE239A01024', 'Listed', '01-Aug-2023', 'NA'),
(68, 4, 'NTPC Limited', 'EQ', 'NTPC', 'INE733E01010', 'Listed', '05-Nov-2004', 'NIFTY INFRASTRUCTURE                              '),
(69, 69, 'Oil & Natural Gas Corporation Limited', 'EQ', 'ONGC', 'INE213A01029', 'Listed', '19-Jul-1995', 'NIFTY 500                                         '),
(70, 27, 'Procter & Gamble Hygiene and Health Care Limited', 'EQ', 'PGHH', 'INE179A01014', 'Listed', '07-Jul-2004', 'NIFTY FMCG                                        '),
(71, 71, 'Pidilite Industries Limited', 'EQ', 'PIDILITIND', 'INE318A01026', 'Listed', '29-Mar-1995', 'NIFTY 500                                         '),
(72, 72, 'PI Industries Limited', 'EQ', 'PIIND', 'INE603J01030', 'Listed', '15-Jun-2011', 'NIFTY 500                                         '),
(73, 16, 'Punjab National Bank', 'EQ', 'PNB', 'INE160A01022', 'Listed', '24-Apr-2002', 'NIFTY BANK                                        '),
(74, 2, 'Power Grid Corporation of India Limited', 'EQ', 'POWERGRID', 'INE752E01010', 'Listed', '05-Oct-2007', 'NIFTY 500                                         '),
(75, 21, 'Reliance Industries Limited', 'EQ', 'RELIANCE', 'INE002A01018', 'Listed', '29-Nov-1995', 'NIFTY 500                                         '),
(76, 15, 'SBI Cards and Payment Services Limited', 'EQ', 'SBICARD', 'INE018E01016', 'Listed', '16-Mar-2020', NULL),
(77, 41, 'SBI Life Insurance Company Limited', 'EQ', 'SBILIFE', 'INE123W01016', 'Listed', '03-Oct-2017', 'NA'),
(78, 16, 'State Bank of India', 'EQ', 'SBIN', 'INE062A01020', 'Listed', '01-Mar-1995', 'NIFTY BANK                                        '),
(79, 6, 'SHREE CEMENT LIMITED', 'EQ', 'SHREECEM', 'INE070A01015', 'Listed', '26-Apr-1995', 'NIFTY COMMODITIES                                 '),
(80, 15, 'Shriram Finance Limited', 'EQ', 'SHRIRAMFIN', 'INE721A01013', 'Listed', '11-Dec-1996', NULL),
(81, 1, 'Siemens Limited', 'EQ', 'SIEMENS', 'INE003A01024', 'Listed', '06-Sep-1995', 'NIFTY 500                                         '),
(82, 71, 'SRF Limited', 'EQ', 'SRF', 'INE647A01010', 'Listed', '18-Aug-2003', 'NIFTY 500                                         '),
(83, 25, 'Sun Pharmaceutical Industries Limited', 'EQ', 'SUNPHARMA', 'INE044A01036', 'Listed', '08-Feb-1995', 'NIFTY PHARMA                                      '),
(84, 84, 'TATA CONSUMER PRODUCTS LIMITED', 'EQ', 'TATACONSUM', 'INE192A01025', 'Listed', '18-Nov-1998', NULL),
(85, 60, 'Tata Motors Limited', 'EQ', 'TATAMOTORS', 'INE155A01022', 'Listed', '22-Jul-1998', 'NIFTY AUTO                                        '),
(86, 60, 'Tata Motors Limited', 'EQ', 'TATAMTRDVR', 'IN9155A01020', 'Listed', '05-Nov-2008', 'NIFTY AUTO                                        '),
(87, 87, 'Tata Power Company Limited', 'EQ', 'TATAPOWER', 'INE245A01021', 'Listed', '03-Apr-1996', 'NIFTY INFRASTRUCTURE                              '),
(88, 54, 'TATA Steel Limited', 'EQ', 'TATASTEEL', 'INE081A01020', 'Listed', '18-Nov-1998', 'NIFTY METAL                                       '),
(89, 39, 'Tata Consultancy Services Limited', 'EQ', 'TCS', 'INE467B01029', 'Listed', '25-Aug-2004', 'NIFTY IT                                          '),
(90, 39, 'Tech Mahindra Limited', 'EQ', 'TECHM', 'INE669C01036', 'Listed', '28-Aug-2006', 'NIFTY IT                                          '),
(91, 91, 'Titan Company Limited', 'EQ', 'TITAN', 'INE280A01028', 'Listed', '24-Sep-2004', 'NIFTY 500                                         '),
(92, 25, 'Torrent Pharmaceuticals Limited', 'EQ', 'TORNTPHARM', 'INE685A01028', 'Listed', '25-Nov-2002', 'NIFTY PHARMA                                      '),
(93, 93, 'Trent Limited', 'EQ', 'TRENT', 'INE849A01020', 'Listed', '07-Jun-2004', 'NIFTY 500                                         '),
(94, 12, 'TVS Motor Company Limited', 'EQ', 'TVSMOTOR', 'INE494B01023', 'Listed', '02-Aug-2000', 'NIFTY AUTO                                        '),
(95, 6, 'UltraTech Cement Limited', 'EQ', 'ULTRACEMCO', 'INE481G01011', 'Listed', '24-Aug-2004', 'NIFTY COMMODITIES                                 '),
(96, 72, 'UPL Limited', 'EQ', 'UPL', 'INE628A01036', 'Listed', '23-Jan-2004', 'NIFTY 500                                         '),
(97, 97, 'Varun Beverages Limited', 'EQ', 'VBL', 'INE200M01021', 'Listed', '08-Nov-2016', 'NIFTY FMCG                                        '),
(98, 98, 'Vedanta Limited', 'EQ', 'VEDL', 'INE205A01025', 'Listed', '13-May-1998', 'NIFTY 500                                         '),
(99, 39, 'Wipro Limited', 'EQ', 'WIPRO', 'INE075A01022', 'Listed', '08-Nov-1995', 'NIFTY IT                                          '),
(100, 100, 'Zomato Limited', 'EQ', 'ZOMATO', 'INE758T01015', 'Listed', '23-Jul-2021', NULL),
(101, 25, 'Zydus Lifesciences Limited', 'EQ', 'ZYDUSLIFE', 'INE010B01027', 'Listed', '18-Apr-2000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `industry_info`
--

CREATE TABLE `industry_info` (
  `industryinfo_id` int(11) NOT NULL,
  `basic_industry` varchar(100) NOT NULL,
  `macro` varchar(100) NOT NULL,
  `sector` varchar(100) NOT NULL,
  `industry` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `industry_info`
--

INSERT INTO `industry_info` (`industryinfo_id`, `basic_industry`, `macro`, `sector`, `industry`) VALUES
(1, 'Heavy Electrical Equipment', 'Industrials', 'Capital Goods', 'Electrical Equipment'),
(2, 'Power - Transmission', 'Utilities', 'Power', 'Power'),
(3, 'Trading - Minerals', 'Commodities', 'Metals & Mining', 'Metals & Minerals Trading'),
(4, 'Power Generation', 'Utilities', 'Power', 'Power'),
(5, 'Port & Port services', 'Services', 'Services', 'Transport Infrastructure'),
(6, 'Cement & Cement Products', 'Commodities', 'Construction Materials', 'Cement & Cement Products'),
(7, 'Hospital', 'Healthcare', 'Healthcare', 'Healthcare Services'),
(8, 'Paints', 'Consumer Discretionary', 'Consumer Durables', 'Consumer Durables'),
(9, 'LPG/CNG/PNG/LNG Supplier', 'Energy', 'Oil Gas & Consumable Fuels', 'Gas'),
(10, 'Edible Oil', 'Fast Moving Consumer Goods', 'Fast Moving Consumer Goods', 'Agricultural Food & other Products'),
(11, 'Private Sector Bank', 'Financial Services', 'Financial Services', 'Banks'),
(12, '2/3 Wheelers', 'Consumer Discretionary', 'Automobile and Auto Components', 'Automobiles'),
(13, 'Holding Company', 'Financial Services', 'Financial Services', 'Finance'),
(15, 'Non Banking Financial Company (NBFC)', 'Financial Services', 'Financial Services', 'Finance'),
(16, 'Public Sector Bank', 'Financial Services', 'Financial Services', 'Banks'),
(17, 'Aerospace & Defense', 'Industrials', 'Capital Goods', 'Aerospace & Defense'),
(19, 'Telecom - Cellular & Fixed line services', 'Telecommunication', 'Telecommunication', 'Telecom - Services'),
(20, 'Auto Components & Equipments', 'Consumer Discretionary', 'Automobile and Auto Components', 'Auto Components'),
(21, 'Refineries & Marketing', 'Energy', 'Oil Gas & Consumable Fuels', 'Petroleum Products'),
(22, 'Packaged Foods', 'Fast Moving Consumer Goods', 'Fast Moving Consumer Goods', 'Food Products'),
(25, 'Pharmaceuticals', 'Healthcare', 'Healthcare', 'Pharmaceuticals & Biotechnology'),
(26, 'Coal', 'Energy', 'Oil Gas & Consumable Fuels', 'Consumable Fuels'),
(27, 'Personal Care', 'Fast Moving Consumer Goods', 'Fast Moving Consumer Goods', 'Personal Products'),
(30, 'Residential Commercial Projects', 'Consumer Discretionary', 'Realty', 'Realty'),
(31, 'Diversified Retail', 'Consumer Discretionary', 'Consumer Services', 'Retailing'),
(34, 'Gas Transmission/Marketing', 'Energy', 'Oil Gas & Consumable Fuels', 'Gas'),
(38, 'Consumer Electronics', 'Consumer Discretionary', 'Consumer Durables', 'Consumer Durables'),
(39, 'Computers - Software & Consulting', 'Information Technology', 'Information Technology', 'IT - Software'),
(41, 'Life Insurance', 'Financial Services', 'Financial Services', 'Insurance'),
(43, 'Aluminium', 'Commodities', 'Metals & Mining', 'Non - Ferrous Metals'),
(44, 'Diversified FMCG', 'Fast Moving Consumer Goods', 'Fast Moving Consumer Goods', 'Diversified FMCG'),
(46, 'General Insurance', 'Financial Services', 'Financial Services', 'Insurance'),
(48, 'Airline', 'Services', 'Services', 'Transport Services'),
(52, 'Tour Travel Related Services', 'Consumer Discretionary', 'Consumer Services', 'Leisure Services'),
(54, 'Iron & Steel', 'Commodities', 'Metals & Mining', 'Ferrous Metals'),
(58, 'Civil Construction', 'Industrials', 'Construction', 'Construction'),
(60, 'Passenger Cars & Utility Vehicles', 'Consumer Discretionary', 'Automobile and Auto Components', 'Automobiles'),
(63, 'Breweries & Distilleries', 'Fast Moving Consumer Goods', 'Fast Moving Consumer Goods', 'Beverages'),
(66, 'Internet & Catalogue Retail', 'Consumer Discretionary', 'Consumer Services', 'Retailing'),
(69, 'Oil Exploration & Production', 'Energy', 'Oil Gas & Consumable Fuels', 'Oil'),
(71, 'Specialty Chemicals', 'Commodities', 'Chemicals', 'Chemicals & Petrochemicals'),
(72, 'Pesticides & Agrochemicals', 'Commodities', 'Chemicals', 'Fertilizers & Agrochemicals'),
(84, 'Tea & Coffee', 'Fast Moving Consumer Goods', 'Fast Moving Consumer Goods', 'Agricultural Food & other Products'),
(87, 'Integrated Power Utilities', 'Utilities', 'Power', 'Power'),
(91, 'Gems Jewellery And Watches', 'Consumer Discretionary', 'Consumer Durables', 'Consumer Durables'),
(93, 'Speciality Retail', 'Consumer Discretionary', 'Consumer Services', 'Retailing'),
(97, 'Other Beverages', 'Fast Moving Consumer Goods', 'Fast Moving Consumer Goods', 'Beverages'),
(98, 'Diversified Metals', 'Commodities', 'Metals & Mining', 'Diversified Metals'),
(100, 'E-Retail/ E-Commerce', 'Consumer Discretionary', 'Consumer Services', 'Retailing');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `profile_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `no_of_share` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`profile_id`, `transaction_id`, `company_id`, `uid`, `price`, `totalprice`, `no_of_share`, `date`) VALUES
(25, 83, 1, 19, 4529.00, 45290, 10, '2024-03-16'),
(26, 84, 9, 19, 1011.00, 101100, 100, '2024-03-17'),
(27, 85, 25, 19, 6379.00, 76548, 12, '2024-03-17'),
(28, 86, 8, 19, 565.00, 6028, 2, '2024-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `price_info`
--

CREATE TABLE `price_info` (
  `price_info_id` int(11) NOT NULL,
  `company_info_id` int(11) NOT NULL,
  `lastPrice` decimal(65,0) NOT NULL,
  `ichange` int(11) NOT NULL,
  `pChange` decimal(50,0) NOT NULL,
  `previousClose` decimal(50,0) NOT NULL,
  `open` decimal(50,0) NOT NULL,
  `close` decimal(50,0) NOT NULL,
  `vwap` decimal(50,0) NOT NULL,
  `lowerCP` decimal(50,0) NOT NULL,
  `upperCP` decimal(50,0) NOT NULL,
  `pPriceBand` varchar(50) NOT NULL,
  `basePrice` decimal(50,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `price_info`
--

INSERT INTO `price_info` (`price_info_id`, `company_info_id`, `lastPrice`, `ichange`, `pChange`, `previousClose`, `open`, `close`, `vwap`, `lowerCP`, `upperCP`, `pPriceBand`, `basePrice`) VALUES
(1, 1, 4529, 40, 1, 4489, 4515, 4525, 4513, 4040, 4938, 'No Band', 4489),
(2, 2, 1070, -4, 0, 1074, 1080, 1070, 1070, 860, 1289, '20', 1074),
(3, 3, 3235, -24, -1, 3259, 3267, 3229, 3238, 2933, 3585, 'No Band', 3259),
(4, 4, 1927, -28, -1, 1955, 1964, 1927, 1936, 1564, 2346, '20', 1955),
(5, 5, 1303, -4, 0, 1307, 1311, 1301, 1303, 1176, 1438, 'No Band', 1307),
(6, 6, 589, 4, 1, 585, 585, 589, 586, 526, 643, 'No Band', 585),
(7, 7, 6748, 97, 1, 6657, 6668, 6759, 6732, 5986, 7316, 'No Band', 6651),
(8, 8, 3014, 16, 1, 2998, 2998, 3012, 3000, 2698, 3298, 'No Band', 2998),
(9, 9, 1011, -1, 0, 1012, 1017, 1012, 1011, 809, 1214, '20', 1012),
(10, 10, 369, 3, 1, 366, 369, 370, 372, 330, 403, '10', 366),
(11, 11, 1087, 24, 2, 1063, 1059, 1089, 1079, 957, 1169, 'No Band', 1063),
(12, 12, 8290, -220, -3, 8510, 8505, 8295, 8334, 7659, 9361, 'No Band', 8510),
(13, 13, 1606, -14, -1, 1620, 1618, 1603, 1607, 1458, 1782, 'No Band', 1620),
(14, 13, 8819, -57, -1, 8876, 8859, 8818, 8790, 7101, 10652, '20', 8876),
(15, 15, 6771, 58, 1, 6713, 6712, 6764, 6753, 6042, 7384, 'No Band', 6713),
(16, 16, 274, 3, 1, 271, 270, 273, 273, 244, 298, 'No Band', 271),
(17, 17, 191, 2, 1, 189, 189, 191, 190, 170, 208, 'No Band', 189),
(18, 8, 565, 8, 1, 557, 559, 563, 560, 501, 613, 'No Band', 557),
(19, 19, 1146, 4, 0, 1142, 1145, 1144, 1144, 1028, 1256, 'No Band', 1142),
(20, 20, 29153, 159, 1, 28994, 28900, 29148, 29075, 26094, 31893, 'No Band', 28994),
(21, 21, 664, 11, 2, 653, 653, 658, 648, 587, 718, 'No Band', 653),
(22, 22, 4930, 5, 0, 4925, 4910, 4921, 4906, 4433, 5418, 'No Band', 4925),
(23, 16, 570, -3, -1, 573, 572, 569, 570, 516, 630, 'No Band', 573),
(24, 15, 1100, -33, -3, 1133, 1124, 1100, 1104, 1020, 1247, 'No Band', 1133),
(25, 25, 1450, -20, -1, 1470, 1475, 1452, 1453, 1323, 1617, 'No Band', 1470),
(26, 26, 448, -8, -2, 461, 458, 447, 447, 410, 501, 'No Band', 456),
(27, 27, 2540, -32, -1, 2571, 2573, 2536, 2533, 2314, 2828, 'No Band', 2571),
(28, 27, 550, 2, 0, 548, 551, 548, 546, 493, 602, 'No Band', 548),
(29, 25, 3713, -11, 0, 3723, 3723, 3713, 3702, 3351, 4096, 'No Band', 3723),
(30, 30, 864, 15, 2, 849, 852, 864, 862, 764, 933, 'No Band', 849),
(31, 31, 3752, 44, 1, 3707, 3701, 3756, 3743, 2966, 4449, '20', 3707),
(32, 25, 6379, -38, -1, 6417, 6422, 6376, 6393, 5775, 7059, 'No Band', 6417),
(33, 12, 3830, -73, -2, 3903, 3894, 3828, 3831, 3513, 4293, 'No Band', 3903),
(34, 34, 184, 0, 0, 184, 184, 184, 184, 166, 202, 'No Band', 184),
(35, 27, 1230, 0, 0, 1230, 1235, 1228, 1234, 1107, 1353, 'No Band', 1230),
(36, 6, 2198, 29, 1, 2169, 2169, 2192, 2199, 1952, 2385, 'No Band', 2169),
(37, 17, 2999, -1, 0, 3022, 3019, 2995, 2996, 2700, 3300, 'No Band', 3000),
(38, 38, 1394, -17, -1, 1411, 1409, 1395, 1403, 1270, 1552, 'No Band', 1411),
(39, 39, 1663, -12, -1, 1675, 1661, 1663, 1657, 1508, 1843, 'No Band', 1675),
(40, 11, 1453, 36, 3, 1417, 1415, 1454, 1443, 1275, 1559, 'No Band', 1417),
(41, 41, 589, 4, 1, 585, 580, 588, 584, 527, 644, 'No Band', 585),
(42, 12, 4666, -187, -4, 4853, 4853, 4663, 4691, 4367, 5338, 'No Band', 4853),
(43, 43, 512, 0, 0, 512, 513, 512, 511, 461, 564, 'No Band', 512),
(44, 44, 2407, 20, 1, 2387, 2370, 2404, 2388, 2148, 2626, 'No Band', 2387),
(45, 11, 1050, 6, 1, 1044, 1041, 1049, 1047, 939, 1148, 'No Band', 1044),
(46, 46, 1649, 6, 0, 1643, 1632, 1649, 1641, 1479, 1807, 'No Band', 1643),
(47, 41, 521, 7, 1, 515, 514, 522, 520, 463, 566, 'No Band', 515),
(48, 48, 3115, 47, 2, 3068, 3080, 3115, 3109, 2761, 3375, 'No Band', 3068),
(49, 11, 1507, 23, 2, 1484, 1489, 1504, 1491, 1335, 1632, 'No Band', 1484),
(50, 39, 1685, -14, -1, 1700, 1685, 1685, 1681, 1530, 1870, 'No Band', 1700),
(51, 21, 189, 1, 0, 189, 188, 189, 187, 170, 207, 'No Band', 189),
(52, 52, 949, 2, 0, 947, 947, 952, 950, 852, 1042, 'No Band', 947),
(53, 44, 407, -2, -1, 409, 410, 406, 407, 368, 450, 'No Band', 409),
(54, 54, 758, -1, 0, 759, 763, 760, 761, 683, 835, 'No Band', 759),
(55, 54, 822, 2, 0, 820, 825, 821, 818, 738, 902, 'No Band', 820),
(56, 11, 1767, 35, 2, 1731, 1740, 1763, 1755, 1558, 1905, 'No Band', 1731),
(57, 41, 1040, -12, -1, 1052, 1055, 1042, 1043, 842, 1263, '20', 1052),
(58, 58, 3363, 23, 1, 3340, 3340, 3357, 3347, 3006, 3674, 'No Band', 3340),
(59, 39, 5514, 0, 0, 5514, 5529, 5504, 5528, 4963, 6065, 'No Band', 5514),
(60, 60, 1849, 0, 0, 1849, 1837, 1854, 1845, 1664, 2033, 'No Band', 1849),
(61, 10, 537, 10, 2, 527, 528, 536, 532, 474, 579, 'No Band', 527),
(62, 60, 11415, -68, -1, 11483, 11440, 11446, 11416, 10335, 12632, 'No Band', 11483),
(63, 63, 1141, -16, -1, 1157, 1160, 1144, 1135, 1041, 1273, 'No Band', 1157),
(64, 20, 114, 0, 0, 113, 114, 114, 113, 102, 124, 'No Band', 113),
(65, 15, 1338, -17, -1, 1355, 1359, 1339, 1345, 1219, 1490, 'No Band', 1355),
(66, 66, 5322, -16, 0, 5338, 5310, 5317, 5335, 4805, 5872, 'No Band', 5338),
(67, 22, 2539, 26, 1, 2513, 2519, 2539, 2527, 2262, 2765, 'No Band', 2513),
(68, 4, 346, 7, 2, 339, 341, 346, 343, 305, 373, 'No Band', 339),
(69, 69, 277, 2, 1, 275, 275, 277, 277, 247, 302, 'No Band', 275),
(70, 27, 16520, -34, 0, 16554, 16555, 16555, 16525, 13244, 19865, '20', 16554),
(71, 71, 2740, 29, 1, 2711, 2692, 2746, 2728, 2440, 2982, 'No Band', 2711),
(72, 72, 3688, 20, 1, 3668, 3655, 3683, 3672, 3301, 4035, 'No Band', 3668),
(73, 16, 130, 1, 1, 128, 129, 130, 130, 116, 141, 'No Band', 128),
(74, 2, 288, 12, 4, 276, 278, 288, 286, 249, 304, 'No Band', 276),
(75, 21, 2941, -7, 0, 2948, 2950, 2942, 2937, 2653, 3243, 'No Band', 2948),
(76, 15, 740, 12, 2, 728, 732, 740, 735, 656, 801, 'No Band', 728),
(77, 41, 1515, 26, 2, 1489, 1489, 1514, 1503, 1340, 1638, 'No Band', 1489),
(78, 16, 761, 1, 0, 759, 759, 760, 759, 683, 835, 'No Band', 759),
(79, 6, 26460, -355, -1, 26815, 26750, 26525, 26570, 24134, 29497, 'No Band', 26815),
(80, 15, 2416, -24, -1, 2440, 2440, 2417, 2416, 2196, 2684, 'No Band', 2440),
(81, 1, 4431, 14, 0, 4417, 4435, 4436, 4432, 3975, 4858, 'No Band', 4417),
(82, 71, 2389, 42, 2, 2347, 2347, 2383, 2356, 2112, 2582, 'No Band', 2347),
(83, 25, 1541, 11, 1, 1530, 1532, 1539, 1528, 1377, 1683, 'No Band', 1530),
(84, 84, 1153, -2, 0, 1155, 1155, 1154, 1150, 1040, 1271, 'No Band', 1155),
(85, 60, 928, -5, -1, 933, 934, 926, 927, 839, 1026, 'No Band', 933),
(86, 60, 613, 0, 0, 613, 615, 613, 612, 491, 736, '20', 613),
(87, 87, 379, -1, 0, 381, 381, 379, 380, 342, 419, 'No Band', 381),
(88, 54, 141, -1, -1, 142, 142, 141, 141, 128, 156, 'No Band', 142),
(89, 39, 4035, -69, -2, 4104, 4082, 4031, 4048, 3693, 4514, 'No Band', 4104),
(90, 39, 1323, 13, 1, 1310, 1310, 1321, 1312, 1179, 1441, 'No Band', 1310),
(91, 91, 3688, -7, 0, 3695, 3700, 3687, 3692, 3326, 4065, 'No Band', 3695),
(92, 25, 2644, 29, 1, 2615, 2614, 2645, 2636, 2354, 2877, 'No Band', 2615),
(93, 93, 4026, -21, -1, 4047, 4058, 4026, 4040, 3642, 4452, 'No Band', 4047),
(94, 12, 2122, 1, 0, 2120, 2134, 2118, 2117, 1908, 2332, 'No Band', 2120),
(95, 6, 9972, 70, 1, 9902, 9902, 9979, 9936, 8912, 10892, 'No Band', 9902),
(96, 72, 498, 1, 0, 498, 498, 498, 500, 448, 547, 'No Band', 498),
(97, 97, 1439, 1, 0, 1438, 1452, 1438, 1438, 1151, 1726, '20', 1438),
(98, 98, 270, 0, 0, 270, 271, 270, 270, 243, 297, 'No Band', 270),
(99, 39, 532, -4, -1, 536, 536, 532, 533, 482, 590, 'No Band', 536),
(100, 100, 162, 4, 3, 158, 160, 161, 161, 126, 189, '20', 158),
(101, 25, 896, -12, -1, 908, 908, 896, 900, 817, 998, 'No Band', 908),
(102, 1, 4529, 40, 1, 4489, 4515, 4525, 4513, 4040, 4938, 'No Band', 4489),
(103, 2, 1070, -4, 0, 1074, 1080, 1070, 1070, 860, 1289, '20', 1074),
(104, 3, 3235, -24, -1, 3259, 3267, 3229, 3238, 2933, 3585, 'No Band', 3259),
(105, 4, 1927, -28, -1, 1955, 1964, 1927, 1936, 1564, 2346, '20', 1955),
(106, 5, 1303, -4, 0, 1307, 1311, 1301, 1303, 1176, 1438, 'No Band', 1307),
(107, 6, 589, 4, 1, 585, 585, 589, 586, 526, 643, 'No Band', 585),
(108, 7, 6748, 97, 1, 6657, 6668, 6759, 6732, 5986, 7316, 'No Band', 6651),
(109, 8, 3014, 16, 1, 2998, 2998, 3012, 3000, 2698, 3298, 'No Band', 2998),
(110, 9, 1011, -1, 0, 1012, 1017, 1012, 1011, 809, 1214, '20', 1012),
(111, 10, 369, 3, 1, 366, 369, 370, 372, 330, 403, '10', 366),
(112, 11, 1087, 24, 2, 1063, 1059, 1089, 1079, 957, 1169, 'No Band', 1063),
(113, 12, 8290, -220, -3, 8510, 8505, 8295, 8334, 7659, 9361, 'No Band', 8510),
(114, 13, 1606, -14, -1, 1620, 1618, 1603, 1607, 1458, 1782, 'No Band', 1620),
(115, 13, 8819, -57, -1, 8876, 8859, 8818, 8790, 7101, 10652, '20', 8876),
(116, 15, 6771, 58, 1, 6713, 6712, 6764, 6753, 6042, 7384, 'No Band', 6713),
(117, 16, 274, 3, 1, 271, 270, 273, 273, 244, 298, 'No Band', 271),
(118, 17, 191, 2, 1, 189, 189, 191, 190, 170, 208, 'No Band', 189),
(119, 8, 565, 8, 1, 557, 559, 563, 560, 501, 613, 'No Band', 557),
(120, 19, 1146, 4, 0, 1142, 1145, 1144, 1144, 1028, 1256, 'No Band', 1142),
(121, 20, 29153, 159, 1, 28994, 28900, 29148, 29075, 26094, 31893, 'No Band', 28994),
(122, 21, 664, 11, 2, 653, 653, 658, 648, 587, 718, 'No Band', 653),
(123, 22, 4930, 5, 0, 4925, 4910, 4921, 4906, 4433, 5418, 'No Band', 4925),
(124, 16, 570, -3, -1, 573, 572, 569, 570, 516, 630, 'No Band', 573),
(125, 15, 1100, -33, -3, 1133, 1124, 1100, 1104, 1020, 1247, 'No Band', 1133),
(126, 25, 1450, -20, -1, 1470, 1475, 1452, 1453, 1323, 1617, 'No Band', 1470),
(127, 26, 448, -8, -2, 461, 458, 447, 447, 410, 501, 'No Band', 456),
(128, 27, 2540, -32, -1, 2571, 2573, 2536, 2533, 2314, 2828, 'No Band', 2571),
(129, 27, 550, 2, 0, 548, 551, 548, 546, 493, 602, 'No Band', 548),
(130, 25, 3713, -11, 0, 3723, 3723, 3713, 3702, 3351, 4096, 'No Band', 3723),
(131, 30, 864, 15, 2, 849, 852, 864, 862, 764, 933, 'No Band', 849),
(132, 31, 3752, 44, 1, 3707, 3701, 3756, 3743, 2966, 4449, '20', 3707),
(133, 25, 6379, -38, -1, 6417, 6422, 6376, 6393, 5775, 7059, 'No Band', 6417),
(134, 12, 3830, -73, -2, 3903, 3894, 3828, 3831, 3513, 4293, 'No Band', 3903),
(135, 34, 184, 0, 0, 184, 184, 184, 184, 166, 202, 'No Band', 184),
(136, 27, 1230, 0, 0, 1230, 1235, 1228, 1234, 1107, 1353, 'No Band', 1230),
(137, 6, 2198, 29, 1, 2169, 2169, 2192, 2199, 1952, 2385, 'No Band', 2169),
(138, 17, 2999, -1, 0, 3022, 3019, 2995, 2996, 2700, 3300, 'No Band', 3000),
(139, 38, 1394, -17, -1, 1411, 1409, 1395, 1403, 1270, 1552, 'No Band', 1411),
(140, 39, 1663, -12, -1, 1675, 1661, 1663, 1657, 1508, 1843, 'No Band', 1675),
(141, 11, 1453, 36, 3, 1417, 1415, 1454, 1443, 1275, 1559, 'No Band', 1417),
(142, 41, 589, 4, 1, 585, 580, 588, 584, 527, 644, 'No Band', 585),
(143, 12, 4666, -187, -4, 4853, 4853, 4663, 4691, 4367, 5338, 'No Band', 4853),
(144, 43, 512, 0, 0, 512, 513, 512, 511, 461, 564, 'No Band', 512),
(145, 44, 2407, 20, 1, 2387, 2370, 2404, 2388, 2148, 2626, 'No Band', 2387),
(146, 11, 1050, 6, 1, 1044, 1041, 1049, 1047, 939, 1148, 'No Band', 1044),
(147, 46, 1649, 6, 0, 1643, 1632, 1649, 1641, 1479, 1807, 'No Band', 1643),
(148, 41, 521, 7, 1, 515, 514, 522, 520, 463, 566, 'No Band', 515),
(149, 48, 3115, 47, 2, 3068, 3080, 3115, 3109, 2761, 3375, 'No Band', 3068),
(150, 11, 1507, 23, 2, 1484, 1489, 1504, 1491, 1335, 1632, 'No Band', 1484),
(151, 39, 1685, -14, -1, 1700, 1685, 1685, 1681, 1530, 1870, 'No Band', 1700),
(152, 21, 189, 1, 0, 189, 188, 189, 187, 170, 207, 'No Band', 189),
(153, 52, 949, 2, 0, 947, 947, 952, 950, 852, 1042, 'No Band', 947),
(154, 44, 407, -2, -1, 409, 410, 406, 407, 368, 450, 'No Band', 409),
(155, 54, 758, -1, 0, 759, 763, 760, 761, 683, 835, 'No Band', 759),
(156, 54, 822, 2, 0, 820, 825, 821, 818, 738, 902, 'No Band', 820),
(157, 11, 1767, 35, 2, 1731, 1740, 1763, 1755, 1558, 1905, 'No Band', 1731),
(158, 41, 1040, -12, -1, 1052, 1055, 1042, 1043, 842, 1263, '20', 1052),
(159, 58, 3363, 23, 1, 3340, 3340, 3357, 3347, 3006, 3674, 'No Band', 3340),
(160, 39, 5514, 0, 0, 5514, 5529, 5504, 5528, 4963, 6065, 'No Band', 5514),
(161, 60, 1849, 0, 0, 1849, 1837, 1854, 1845, 1664, 2033, 'No Band', 1849),
(162, 10, 537, 10, 2, 527, 528, 536, 532, 474, 579, 'No Band', 527),
(163, 60, 11415, -68, -1, 11483, 11440, 11446, 11416, 10335, 12632, 'No Band', 11483),
(164, 63, 1141, -16, -1, 1157, 1160, 1144, 1135, 1041, 1273, 'No Band', 1157),
(165, 20, 114, 0, 0, 113, 114, 114, 113, 102, 124, 'No Band', 113),
(166, 15, 1338, -17, -1, 1355, 1359, 1339, 1345, 1219, 1490, 'No Band', 1355),
(167, 66, 5322, -16, 0, 5338, 5310, 5317, 5335, 4805, 5872, 'No Band', 5338),
(168, 22, 2539, 26, 1, 2513, 2519, 2539, 2527, 2262, 2765, 'No Band', 2513),
(169, 4, 346, 7, 2, 339, 341, 346, 343, 305, 373, 'No Band', 339),
(170, 69, 277, 2, 1, 275, 275, 277, 277, 247, 302, 'No Band', 275),
(171, 27, 16520, -34, 0, 16554, 16555, 16555, 16525, 13244, 19865, '20', 16554),
(172, 71, 2740, 29, 1, 2711, 2692, 2746, 2728, 2440, 2982, 'No Band', 2711),
(173, 72, 3688, 20, 1, 3668, 3655, 3683, 3672, 3301, 4035, 'No Band', 3668),
(174, 16, 130, 1, 1, 128, 129, 130, 130, 116, 141, 'No Band', 128),
(175, 2, 288, 12, 4, 276, 278, 288, 286, 249, 304, 'No Band', 276),
(176, 21, 2941, -7, 0, 2948, 2950, 2942, 2937, 2653, 3243, 'No Band', 2948),
(177, 15, 740, 12, 2, 728, 732, 740, 735, 656, 801, 'No Band', 728),
(178, 41, 1515, 26, 2, 1489, 1489, 1514, 1503, 1340, 1638, 'No Band', 1489),
(179, 16, 761, 1, 0, 759, 759, 760, 759, 683, 835, 'No Band', 759),
(180, 6, 26460, -355, -1, 26815, 26750, 26525, 26570, 24134, 29497, 'No Band', 26815),
(181, 15, 2416, -24, -1, 2440, 2440, 2417, 2416, 2196, 2684, 'No Band', 2440),
(182, 1, 4431, 14, 0, 4417, 4435, 4436, 4432, 3975, 4858, 'No Band', 4417),
(183, 71, 2389, 42, 2, 2347, 2347, 2383, 2356, 2112, 2582, 'No Band', 2347),
(184, 25, 1541, 11, 1, 1530, 1532, 1539, 1528, 1377, 1683, 'No Band', 1530),
(185, 84, 1153, -2, 0, 1155, 1155, 1154, 1150, 1040, 1271, 'No Band', 1155),
(186, 60, 928, -5, -1, 933, 934, 926, 927, 839, 1026, 'No Band', 933),
(187, 60, 613, 0, 0, 613, 615, 613, 612, 491, 736, '20', 613),
(188, 87, 379, -1, 0, 381, 381, 379, 380, 342, 419, 'No Band', 381),
(189, 54, 141, -1, -1, 142, 142, 141, 141, 128, 156, 'No Band', 142),
(190, 39, 4035, -69, -2, 4104, 4082, 4031, 4048, 3693, 4514, 'No Band', 4104),
(191, 39, 1323, 13, 1, 1310, 1310, 1321, 1312, 1179, 1441, 'No Band', 1310),
(192, 91, 3688, -7, 0, 3695, 3700, 3687, 3692, 3326, 4065, 'No Band', 3695),
(193, 25, 2644, 29, 1, 2615, 2614, 2645, 2636, 2354, 2877, 'No Band', 2615),
(194, 93, 4026, -21, -1, 4047, 4058, 4026, 4040, 3642, 4452, 'No Band', 4047),
(195, 12, 2122, 1, 0, 2120, 2134, 2118, 2117, 1908, 2332, 'No Band', 2120),
(196, 6, 9972, 70, 1, 9902, 9902, 9979, 9936, 8912, 10892, 'No Band', 9902),
(197, 72, 498, 1, 0, 498, 498, 498, 500, 448, 547, 'No Band', 498),
(198, 97, 1439, 1, 0, 1438, 1452, 1438, 1438, 1151, 1726, '20', 1438),
(199, 98, 270, 0, 0, 270, 271, 270, 270, 243, 297, 'No Band', 270),
(200, 39, 532, -4, -1, 536, 536, 532, 533, 482, 590, 'No Band', 536),
(201, 100, 162, 4, 3, 158, 160, 161, 161, 126, 189, '20', 158),
(202, 25, 896, -12, -1, 908, 908, 896, 900, 817, 998, 'No Band', 908);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `status` enum('buy','sell','','') NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `no_of_share` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `company_id`, `uid`, `status`, `price`, `totalprice`, `no_of_share`, `date`) VALUES
(83, 1, 19, 'buy', 4529.00, 45290, 10, '2024-03-16'),
(84, 9, 19, 'buy', 1011.00, 101100, 100, '2024-03-17'),
(85, 25, 19, 'buy', 6379.00, 76548, 12, '2024-03-17'),
(86, 8, 19, 'buy', 565.00, 565, 1, '2024-03-17'),
(87, 8, 19, 'buy', 3014.00, 3014, 1, '2024-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female','other','') NOT NULL DEFAULT 'male',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `email`, `password`, `first_name`, `last_name`, `mobile`, `dob`, `gender`, `timestamp`) VALUES
(1, 'admin@admin.com', '$2y$10$C4kLBuYvLKdsFq80JWF9F.45msexm4IgTL3uYZ8iW/pgRT9WZ7CJy', 'Admin', '', 1234567890, '2024-02-19', 'male', '2024-02-18 18:30:00'),
(18, 'test@test.com', '$2y$10$5MPeAZgG33/1mZtceoegO.xLOeX9n7bW3n1eF8ERKdrS6asXmpGS6', 'Test', 'test', 1234567890, '2024-02-19', 'male', '2024-02-19 05:22:36'),
(19, 'vpraneshwara@gmail.com', '$2y$10$yJ35UM7mPfW4FRkdUcp5C.n.H3GFrwzWBprCdDAxD.04gdwecw6NK', 'Praneswara', 'V', 2147483647, '2003-10-24', 'male', '2024-02-19 13:05:07'),
(20, 'vpranesh@gmail.com', '$2y$10$ddJFY0PteNt3XwAo8ojxEOs5m3dUJ06Ld/DGR0tUfXi/7pyuMmya.', 'Pranesh', 'V', 2147483647, '2024-02-20', 'male', '2024-02-20 10:03:26'),
(21, 'shamma@gmail.com', '$2y$10$BF/JVxJ2TpbDoPgZWDpu3OqgKavybgTgJDACN7D1U5SLUa7mLG.KK', 'wrate', 's', 2147483647, '2024-02-09', 'male', '2024-02-21 06:41:33'),
(23, 'srigurusharma@gmail.com', '$2y$10$3siPwwIulgEbTZ032m/YK.Qm8Ts/XiP8WXWmWtUBX/82g3UyyyLmW', 'Guru', 'Prasad', 2147483647, '1992-11-18', 'male', '2024-03-11 16:59:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `symbol` (`symbol`),
  ADD KEY `industryinfo_id` (`industryinfo_id`);

--
-- Indexes for table `industry_info`
--
ALTER TABLE `industry_info`
  ADD PRIMARY KEY (`industryinfo_id`),
  ADD UNIQUE KEY `basic_industry` (`basic_industry`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `price_info`
--
ALTER TABLE `price_info`
  ADD PRIMARY KEY (`price_info_id`),
  ADD KEY `company_info_id` (`company_info_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `industry_info`
--
ALTER TABLE `industry_info`
  MODIFY `industryinfo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `price_info`
--
ALTER TABLE `price_info`
  MODIFY `price_info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_info`
--
ALTER TABLE `company_info`
  ADD CONSTRAINT `company_info_ibfk_1` FOREIGN KEY (`industryinfo_id`) REFERENCES `industry_info` (`industryinfo_id`);

--
-- Constraints for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`),
  ADD CONSTRAINT `portfolio_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company_info` (`company_id`),
  ADD CONSTRAINT `portfolio_ibfk_3` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `price_info`
--
ALTER TABLE `price_info`
  ADD CONSTRAINT `price_info_ibfk_1` FOREIGN KEY (`company_info_id`) REFERENCES `company_info` (`company_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_info` (`company_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
