-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2025 at 07:16 AM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bims`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `cnic` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `full_name`, `father_name`, `dob`, `cnic`, `domicile`, `nationality`, `telephone`, `cell`, `present_address`, `district`, `province`, `permanent_address`, `created_at`, `updated_at`) VALUES
(4, 'Kayden Bartell', 'Barrett Pfeffer', '1982-04-29', '30575730903', 'Port Ashtonchester', 'Pakistani', '+1.732.454.2536', '+1.629.785.2662', '824 Tyson Fort\nEast Magnolia, ID 73909-8172', 'Port Prince', 'North Carolina', '44877 Bahringer Freeway\nTobyborough, OK 15325-7582', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(5, 'Leann Legros', 'Mr. Jaylin Rempel', '1979-07-21', '80166185710', 'Linneaburgh', 'Pakistani', '(346) 328-1114', '+1.608.754.6613', '581 Lora Estate Apt. 274\nPort Misty, HI 08643', 'Blancheborough', 'Wisconsin', '66682 Jakubowski Lake\nEnriqueview, RI 76126-0354', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(6, 'Ms. Arielle Connelly', 'Larry Altenwerth', '2001-04-27', '28126176548', 'New Devan', 'Pakistani', '215.922.5097', '+1-478-422-2321', '646 Ahmed Manor\nLake Gloriafurt, WA 04440', 'Sporermouth', 'Texas', '617 Beryl Green Apt. 412\nNorth Frederikbury, KY 63386', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(7, 'Dr. Kristin Jenkins I', 'Jared Ebert MD', '1982-10-23', '90314792696', 'Orvalchester', 'Pakistani', '458-253-1693', '351.839.2187', '2994 Stephen Avenue Suite 677\nJakubowskiborough, MN 46035-2459', 'Marvinport', 'Washington', '3094 Kshlerin Mews\nPort Marianneview, NV 99745-3535', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(8, 'Glenda Jacobson', 'Olen Grant', '1978-02-15', '71022351821', 'New Kade', 'Pakistani', '+12163287644', '1-678-405-3391', '149 Jacobson Mountains\nBeahanstad, NE 44580-8039', 'North Mackmouth', 'Hawaii', '6528 Larkin Parkway\nMargebury, NE 96503-2500', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(9, 'Clifford Pollich', 'Jerrold McKenzie', '1987-05-21', '05659553388', 'Sengerside', 'Pakistani', '+16826452143', '1-857-820-3370', '8291 Ronny Square\nDarylbury, LA 68845-7225', 'Moenmouth', 'Indiana', '549 Jast Mission\nFeeneymouth, UT 68793', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(10, 'Keanu Harris Jr.', 'Marquis Heller II', '1999-06-17', '57947139793', 'Kraigside', 'Pakistani', '413.410.7952', '854.573.3242', '39236 Shields Hill\nGaylordbury, GA 63545-2172', 'East Dave', 'Connecticut', '386 Herminia Turnpike\nWest Adella, MD 66072-9802', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(11, 'Clint Runolfsdottir', 'Leonard Effertz Sr.', '1989-11-15', '27137458388', 'South Rubenmouth', 'Pakistani', '458-610-3856', '+1 (914) 960-0830', '224 Schmidt Vista Suite 687\nPort Gunnerville, MA 18817-3488', 'Arleneshire', 'South Dakota', '39429 Rosie Crossing\nPort Nicolette, ND 42155-9394', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(12, 'Dudley Marquardt', 'Russ Kris', '2005-01-01', '07566452498', 'East Eribertoshire', 'Pakistani', '941.745.8226', '360-865-6166', '1842 Gabriel Mill Suite 852\nWest Juneshire, RI 34788', 'Lake Erichville', 'Washington', '55043 Aglae Fields Apt. 962\nRyanton, IA 30257-7308', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(13, 'Carmine Quigley', 'Guillermo Wolff V', '1979-06-22', '84206120473', 'New Dusty', 'Pakistani', '1-573-237-6858', '907-267-8302', '9764 Johnpaul Course\nNorth Pasquale, VT 01450', 'Lake Flavie', 'District of Columbia', '67519 Brown Course Suite 688\nSouth Abdielmouth, OH 01953-4001', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(14, 'Savion West', 'Dr. Kristofer Streich MD', '1998-06-08', '67511616634', 'Zulaufberg', 'Pakistani', '(251) 281-9794', '1-786-676-9166', '745 Hank River\nSouth Leora, OH 03537-0653', 'Nienowside', 'Arizona', '5113 Lowe Plains\nKoeppbury, NM 84313', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(15, 'Mrs. Delphine Cassin II', 'Dane Grant', '1994-03-05', '85219848208', 'Lysanneview', 'Pakistani', '+1-959-733-2012', '+1-725-412-6416', '17630 Rossie Island\nNew Waltertown, KS 22259-5173', 'Schummside', 'Alabama', '40627 Barton Viaduct\nBlakeberg, RI 78667', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(16, 'Bradford Klein', 'Frederic Goyette', '1985-09-22', '57002608454', 'Hermannshire', 'Pakistani', '330-784-8427', '+19477274533', '19116 Rutherford Garden Apt. 566\nLake Aleenside, GA 64354-4115', 'New Anibalborough', 'Idaho', '77569 Kelley Ferry Suite 405\nPort Aliyah, IA 75610-9160', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(17, 'Hosea Kohler', 'Max Bernier', '1986-10-01', '27007777877', 'New Chelsea', 'Pakistani', '603.526.3754', '1-231-372-5661', '9405 Conn Mission\nLake Ozellaport, VT 57960-7740', 'North Adrianna', 'Oregon', '46266 Wisozk Gardens Suite 121\nSouth Caraville, AL 71633-4020', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(18, 'Werner Conn III', 'Kamron Mayert', '1994-07-29', '40515869541', 'Lake Velda', 'Pakistani', '1-660-613-4303', '609.867.1065', '86384 Jason Landing Suite 880\nJoanieside, LA 83129', 'New Kyler', 'Alabama', '1611 Armstrong Points\nCrooksville, IA 58338', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(19, 'Llewellyn Dibbert', 'Jace Quitzon', '1973-07-18', '53767461853', 'Beerfurt', 'Pakistani', '(941) 906-9676', '+1-540-889-3428', '77728 Cristobal Villages\nNorth Vergieburgh, OR 49679', 'East Donato', 'District of Columbia', '2594 Katheryn Stravenue Suite 871\nDudleyville, WI 26304-6046', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(20, 'Jarrod Schowalter', 'Golden Fadel PhD', '1973-05-07', '21303067331', 'O\'Connerview', 'Pakistani', '+1.219.314.2221', '+1-913-251-4773', '5664 Gail Knoll Apt. 304\nWest Lucious, HI 30081', 'North Winnifredhaven', 'Maine', '17775 Kasey Fields Suite 361\nGustown, WI 27113-3025', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(21, 'Mr. Lourdes Hammes IV', 'Carroll Abshire', '1978-06-15', '00687569785', 'East Alvisview', 'Pakistani', '+1-534-537-5992', '325-335-7149', '5289 Birdie Divide\nPort David, MN 01017-8473', 'West Gaylordport', 'Virginia', '93447 Moore Harbor\nMariloutown, UT 40310-1403', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(22, 'Jasen Lockman', 'Dr. Allan Heidenreich V', '1982-02-08', '95927460037', 'Noemyport', 'Pakistani', '+1-725-714-6644', '+1.838.958.5417', '41403 Towne Path Suite 135\nPeterburgh, MN 33551', 'Port Ada', 'Vermont', '26769 Mayra Glen Suite 433\nEast Meaghan, WA 92789-6439', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(23, 'Hilario Watsica', 'Solon O\'Connell', '1993-07-23', '89017743340', 'New Mitchell', 'Pakistani', '1-860-724-6725', '585-609-0884', '94585 Rau Square Suite 898\nVioletmouth, UT 14837', 'Nicolaville', 'New Hampshire', '87503 Macejkovic Stravenue\nNew Ena, AK 88877-4792', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(24, 'Ernie Langosh', 'Rick Schmitt', '1996-09-30', '23341735591', 'New Sid', 'Pakistani', '+17256751225', '(984) 901-7140', '2299 White Passage\nLake Jaylon, HI 14426-0936', 'New Ryleightown', 'Rhode Island', '60677 Kian Ferry\nMcClurefort, OK 26537-7422', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(25, 'Dr. Karson Aufderhar V', 'Bertram Jakubowski', '1975-03-17', '93450851428', 'Josuehaven', 'Pakistani', '484-636-5045', '+19103673709', '673 Brekke Flats Apt. 495\nNorth Olga, MI 76683', 'Zemlakfurt', 'Maryland', '56534 Rasheed Pike Apt. 158\nSeanfurt, MN 37327', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(26, 'Allen Ruecker', 'Trace O\'Reilly', '1999-11-12', '73668335245', 'Rafaelatown', 'Pakistani', '(442) 429-0233', '+1 (432) 771-4881', '5185 Kub Center Apt. 146\nNew Janiebury, WV 20468', 'Vivastad', 'Colorado', '9208 Lulu Rest\nSouth Fletcherland, MI 92450', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(27, 'Margarette Jaskolski', 'Jasper Kerluke', '1988-11-20', '50732031484', 'Cordiehaven', 'Pakistani', '1-959-629-0926', '+1-734-356-2925', '4990 Joel Hill\nPort Elliottmouth, LA 15799-5930', 'Lake Vicenta', 'New Jersey', '49460 O\'Reilly Lodge\nSchroederside, MD 92674', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(28, 'Prof. Jefferey Cartwright IV', 'Prof. Norwood Erdman', '1992-12-03', '15899337020', 'Fernview', 'Pakistani', '(272) 922-4664', '+1-757-499-9017', '69431 Dimitri Ports Apt. 190\nCarmelchester, WV 85986', 'Pinktown', 'Kentucky', '935 Savannah Meadows Suite 340\nEast Florian, MS 78596', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(29, 'Keenan Mraz', 'Tyrel Larson', '1988-09-23', '14993827401', 'East Tiamouth', 'Pakistani', '603.322.8234', '+1-941-657-8016', '58873 Lehner Springs\nChynaburgh, OR 86483-3216', 'Gisselleland', 'District of Columbia', '324 Aaliyah Extension Suite 473\nPetraberg, ID 31253-7037', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(30, 'Bernie Quigley', 'Prof. Dashawn Cruickshank V', '1996-12-18', '94898350227', 'New Casimir', 'Pakistani', '+1-980-272-4418', '1-754-440-0668', '78017 Hand Plaza\nStarkhaven, NJ 90390', 'Lake Emilioview', 'New Mexico', '15016 Cummerata Club\nLake Mitchelfurt, AZ 94968-9008', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(31, 'Monserrat Hudson', 'Mr. Vladimir Feeney PhD', '1973-05-09', '54500187970', 'Molliefurt', 'Pakistani', '272.654.2548', '+1 (984) 570-1820', '3297 Krista Trafficway Suite 198\nPort Gerry, WV 22056', 'Cathrineborough', 'Montana', '429 Brown Plains\nLake Kaylie, GA 74912', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(32, 'Theresia Lubowitz', 'Jameson Ward', '1995-05-19', '78041141690', 'New Goldaport', 'Pakistani', '+1-623-335-8377', '(559) 244-5920', '668 Martin Unions\nRahulborough, NJ 22922', 'Kimberlytown', 'District of Columbia', '312 Randal Parkways Apt. 116\nProsaccoview, OR 16786-6681', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(33, 'Prof. Katrina Lesch', 'Arno Hudson', '1982-09-09', '28850257901', 'Lake Ellaport', 'Pakistani', '760.351.7790', '858.382.2000', '99835 Winston Fork\nMyrlborough, NE 19189', 'Port Dimitrihaven', 'Arkansas', '34723 Orland Coves\nWalkerchester, OK 19683', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(34, 'Ms. Cassie Skiles', 'Lavon Rice V', '1996-11-24', '27928448315', 'Lake Abbie', 'Pakistani', '616.690.0444', '+1 (641) 252-9488', '25102 Janet Shoal\nNorth Jaquanfort, WI 27593', 'South Adriel', 'Nevada', '73647 Batz Vista Suite 830\nCarmelberg, WI 11337', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(35, 'Adan McClure', 'Mr. Chadrick Purdy', '1996-03-23', '05194417122', 'Priceview', 'Pakistani', '517.996.2725', '+1.865.385.5570', '339 Batz Locks\nDaphneville, CT 41657', 'Wolfland', 'North Dakota', '37746 Legros Pine\nNew Astridton, OK 22946', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(36, 'Nelson Kling', 'Carmel Wiza', '1974-07-17', '66539852033', 'Port Guy', 'Pakistani', '1-608-699-7552', '551.451.8606', '72496 Kailyn Creek Suite 817\nSouth Taylorside, AK 75963', 'Bahringerside', 'Utah', '84340 D\'angelo Walks\nPort Vergie, ND 14340-6426', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(37, 'Anthony Greenfelder', 'Bruce Mayer', '1984-05-18', '54070177812', 'New Waltontown', 'Pakistani', '484.814.6670', '1-317-571-5513', '952 Camila Stream Suite 843\nPort Antonetta, HI 32274', 'East Nyasia', 'Wyoming', '5707 Marks Plaza\nBradtkehaven, LA 65206-9706', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(38, 'Elisa Doyle', 'Harold Schulist', '1998-01-11', '30881257472', 'Wiegandburgh', 'Pakistani', '+1.270.384.9756', '+1-518-440-6447', '9524 Neoma Mount\nPort Cayla, CA 49913-4525', 'Dannyfort', 'New Mexico', '8602 Okuneva Wall\nPort Dewittland, GA 45473', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(39, 'Flavio Cartwright', 'Prof. Kody Cole DDS', '1993-06-16', '46777779703', 'Emmiechester', 'Pakistani', '+19314053306', '380-759-8134', '10010 Dane Square Suite 794\nBartolettishire, NM 35610-8489', 'South Bertatown', 'Connecticut', '8101 Josiah Ridges Apt. 359\nNew Presley, WI 48568-6270', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(40, 'Verona Feeney', 'Winston Runolfsdottir', '1990-03-31', '64126443843', 'Oleburgh', 'Pakistani', '(330) 925-2859', '(469) 440-6121', '9162 Gaylord Creek Apt. 906\nArielfort, OK 38365-3574', 'West Melba', 'Idaho', '72961 Waters Shores\nNew Bryon, AK 61315-3836', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(41, 'Loma Padberg', 'Prof. Tito Kerluke V', '1993-01-01', '48350814069', 'Lake Anissa', 'Pakistani', '1-704-959-4090', '+1-341-961-3598', '27422 Blick Extension Suite 592\nBrigittebury, AK 71645-2622', 'Hartmannberg', 'West Virginia', '2792 Vandervort Pike\nNew Julia, ID 05042', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(42, 'Mr. Vance Bauch', 'Mac Stokes', '1987-08-04', '27217226862', 'Lake Addie', 'Pakistani', '1-321-632-2513', '(586) 288-0856', '677 Ian Plains Apt. 593\nMillerhaven, NE 15630-6475', 'Townemouth', 'Nebraska', '4831 West Mountains Suite 097\nWest Tobyville, DC 31744-8852', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(43, 'Pansy Wisoky IV', 'Dr. Alexandro Kohler', '1970-02-11', '50320887976', 'Kennethbury', 'Pakistani', '854-773-2788', '+1 (614) 297-6933', '6526 Wunsch Views Suite 095\nPatsyton, AZ 40297-7668', 'Tremblayberg', 'New Mexico', '39971 Schneider Port\nNikolauschester, NE 94124', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(44, 'Carey Cummings', 'Rasheed Walker', '1987-01-15', '86876209484', 'North Haileytown', 'Pakistani', '1-430-993-0649', '469-454-1131', '71752 Elsa Ports Suite 478\nTerryshire, KY 32327-7011', 'West Sylvia', 'Alaska', '3315 Denesik Divide Suite 816\nLake Joystad, SD 91539', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(45, 'Miss Casandra Sawayn', 'Nicolas Reinger MD', '1998-03-17', '61209768249', 'Lake Bernardburgh', 'Pakistani', '+1 (484) 993-0155', '858.539.0132', '473 Towne Trafficway Apt. 489\nEast Tadville, MD 37585-6437', 'East Pablotown', 'Idaho', '60242 Celestine River Suite 496\nEast Kirkburgh, MT 08060', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(46, 'Lenore Satterfield', 'Dr. Joany Kunze PhD', '1990-04-20', '62967521680', 'East Myrtiston', 'Pakistani', '571-665-0872', '(703) 241-7161', '84243 Mike Glens\nNew Jadeport, MD 23569-7226', 'North Susiechester', 'Idaho', '22925 Joey Springs\nEast Quinton, KS 34504', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(47, 'Prof. Elvie Wisoky', 'Mr. Buddy Toy II', '2000-02-09', '03703590144', 'North Tobybury', 'Pakistani', '386-447-4696', '608-690-0220', '98442 Seth Mills Apt. 989\nPort Leahaven, AK 18581', 'New Ryantown', 'Virginia', '675 Ashtyn View Suite 106\nBarryton, MS 83666-2540', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(48, 'Janie Dietrich', 'Izaiah Gibson Sr.', '1991-08-19', '56122350181', 'Tiffanyhaven', 'Pakistani', '+1-630-980-1762', '1-480-390-7579', '537 Joy Lights Suite 055\nSchadenmouth, WA 60507', 'Lake Jaleel', 'Michigan', '93011 Pacocha Knolls\nBlickmouth, SC 43325-0555', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(49, 'Dr. Dominique Lind', 'Dr. Felton Bartoletti PhD', '1980-07-17', '88822278280', 'Lacyburgh', 'Pakistani', '+1-908-387-7850', '+1.914.267.0808', '5040 Gleichner Place Apt. 413\nWindlerland, GA 96432-0185', 'East Evemouth', 'New York', '1937 Geo Expressway Apt. 313\nSouth Lelialand, MT 20762', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(50, 'Rose Hahn', 'Terrance Schaefer', '1972-01-22', '93272422097', 'East Cletus', 'Pakistani', '276-231-4618', '+14583443395', '354 Tomas Road Apt. 638\nWest Spencershire, AZ 25243', 'Nienowmouth', 'Connecticut', '10305 Cierra Via\nEast Sylvan, ME 27315-6948', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(51, 'Tom Borer', 'Ernesto Hauck', '1985-04-27', '39302454092', 'Abshirefurt', 'Pakistani', '+1-651-707-8845', '(870) 658-6274', '896 Lind Spurs Apt. 267\nNew Lenna, ME 28594', 'Port Leslieview', 'Vermont', '9254 Marvin Bypass\nSouth Theohaven, MO 40756', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(52, 'Lura Muller', 'Dr. Chet Olson', '1973-05-21', '56273657344', 'Maximilianmouth', 'Pakistani', '+16626138797', '+1 (947) 299-6245', '990 Herzog Lodge Suite 266\nLake Annabelltown, SC 81849', 'Dibbertville', 'Michigan', '47561 Gerhold Squares Suite 087\nGiannitown, MT 87692-2790', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(53, 'Earline Ruecker', 'Prof. Fabian Langosh V', '2000-02-14', '36605144670', 'Andersonbury', 'Pakistani', '+1 (667) 662-4475', '281-881-6480', '15667 Hodkiewicz Forge\nPort Bridieport, VT 42933', 'Pierreburgh', 'Tennessee', '48335 Gaylord Crescent\nPort Princechester, CA 27781-9306', '2025-09-09 09:12:17', '2025-09-09 09:12:17'),
(54, 'Ali', 'H', '2012-12-12', '12345-1234567-1', 'KHI', 'PK', '1234', '1234', 'abc ', 'D', 'P', 'abc', '2025-09-09 11:18:55', '2025-09-09 11:18:55'),
(55, 'Dayan ', 'Ahmed', '2012-12-10', '123456789111111', 'PAK', 'PAK', '123456', '1234567', 'PAK', 'PAK', 'PAKistan', 'PAK', '2025-09-11 09:25:59', '2025-09-15 10:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_08_160949_create_permission_tables', 2),
(5, '2025_09_08_162939_create_applicants', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'student_admission', 'web', '2025-09-08 11:20:42', '2025-09-08 11:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'student', 'web', '2025-09-08 11:19:21', '2025-09-08 11:19:21'),
(2, 'admin', 'web', '2025-09-08 11:19:41', '2025-09-08 11:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EvPaYHtMYZg0YJy8AImYMzfKwSW6gnu8vapdMiMG', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYUtrb2NYOU5KMzd4ME5IUmE4UlVCYXR1Y1I1TWJqSEtJTlBrc01VZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcHBsaWNhbnRzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1758099585),
('PenUyO4CmuAqNHxKrMoFC3GteFvmamygpiX0Z564', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRWZSUnVVS2ltUFJhUkh0OFNRWndpa05yekl5Rk5XeGdWTHpQV0ZXRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcHBsaWNhbnRzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1757951218),
('rVs6lBEs7nez4k8Jew2Byuglzr0onUYQXkIHdOk4', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTZBcnJSWVJCV2xLTW02MXZmQ0N1cEw4ZjlPeGlsQ2VoNUVZTnRHWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcHBsaWNhbnRzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1757605628);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dayan Ahmed', 'admin@example.com', NULL, '$2y$12$IU1meq3O2zc0w2C7D/.GNe3nLTWeh7PJh4mD.ZsWbAXcByzOElp6m', NULL, '2025-09-08 10:51:11', '2025-09-08 10:51:11'),
(2, 'Test User', 'test@example.com', '2025-09-09 09:12:17', '$2y$12$y9SvSxlJlr3b5btxpjke9eApmGK1sr/ziPsMRzM11UvSI12lZ9Brq', 'bFdABLvNhN', '2025-09-09 09:12:18', '2025-09-09 09:12:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applicants_cnic_unique` (`cnic`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
