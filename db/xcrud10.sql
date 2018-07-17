-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2018 a las 06:34:14
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `xcrud10`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(5) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `countryName` varchar(45) NOT NULL DEFAULT '',
  `currencyCode` char(3) DEFAULT NULL,
  `capital` varchar(30) DEFAULT NULL,
  `continentName` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `countryCode`, `countryName`, `currencyCode`, `capital`, `continentName`) VALUES
(1, 'AD', 'Andorra', 'EUR', 'Andorra la Vella', 'Europe'),
(2, 'AE', 'United Arab Emirates', 'AED', 'Abu Dhabi', 'Asia'),
(3, 'AF', 'Afghanistan', 'AFN', 'Kabul', 'Asia'),
(4, 'AG', 'Antigua and Barbuda', 'XCD', 'St. John\'s', 'North America'),
(5, 'AI', 'Anguilla', 'XCD', 'The Valley', 'North America'),
(6, 'AL', 'Albania', 'ALL', 'Tirana', 'Europe'),
(7, 'AM', 'Armenia', 'AMD', 'Yerevan', 'Asia'),
(8, 'AO', 'Angola', 'AOA', 'Luanda', 'Africa'),
(9, 'AQ', 'Antarctica', '', '', 'Antarctica'),
(10, 'AR', 'Argentina', 'ARS', 'Buenos Aires', 'South America'),
(11, 'AS', 'American Samoa', 'USD', 'Pago Pago', 'Oceania'),
(12, 'AT', 'Austria', 'EUR', 'Vienna', 'Europe'),
(13, 'AU', 'Australia', 'AUD', 'Canberra', 'Oceania'),
(14, 'AW', 'Aruba', 'AWG', 'Oranjestad', 'North America'),
(15, 'AX', 'Åland', 'EUR', 'Mariehamn', 'Europe'),
(16, 'AZ', 'Azerbaijan', 'AZN', 'Baku', 'Asia'),
(17, 'BA', 'Bosnia and Herzegovina', 'BAM', 'Sarajevo', 'Europe'),
(18, 'BB', 'Barbados', 'BBD', 'Bridgetown', 'North America'),
(19, 'BD', 'Bangladesh', 'BDT', 'Dhaka', 'Asia'),
(20, 'BE', 'Belgium', 'EUR', 'Brussels', 'Europe'),
(21, 'BF', 'Burkina Faso', 'XOF', 'Ouagadougou', 'Africa'),
(22, 'BG', 'Bulgaria', 'BGN', 'Sofia', 'Europe'),
(23, 'BH', 'Bahrain', 'BHD', 'Manama', 'Asia'),
(24, 'BI', 'Burundi', 'BIF', 'Bujumbura', 'Africa'),
(25, 'BJ', 'Benin', 'XOF', 'Porto-Novo', 'Africa'),
(26, 'BL', 'Saint Barthélemy', 'EUR', 'Gustavia', 'North America'),
(27, 'BM', 'Bermuda', 'BMD', 'Hamilton', 'North America'),
(28, 'BN', 'Brunei', 'BND', 'Bandar Seri Begawan', 'Asia'),
(29, 'BO', 'Bolivia', 'BOB', 'Sucre', 'South America'),
(30, 'BQ', 'Bonaire', 'USD', '', 'North America'),
(31, 'BR', 'Brazil', 'BRL', 'Brasília', 'South America'),
(32, 'BS', 'Bahamas', 'BSD', 'Nassau', 'North America'),
(33, 'BT', 'Bhutan', 'BTN', 'Thimphu', 'Asia'),
(34, 'BV', 'Bouvet Island', 'NOK', '', 'Antarctica'),
(35, 'BW', 'Botswana', 'BWP', 'Gaborone', 'Africa'),
(36, 'BY', 'Belarus', 'BYR', 'Minsk', 'Europe'),
(37, 'BZ', 'Belize', 'BZD', 'Belmopan', 'North America'),
(38, 'CA', 'Canada', 'CAD', 'Ottawa', 'North America'),
(39, 'CC', 'Cocos [Keeling] Islands', 'AUD', 'West Island', 'Asia'),
(40, 'CD', 'Democratic Republic of the Congo', 'CDF', 'Kinshasa', 'Africa'),
(41, 'CF', 'Central African Republic', 'XAF', 'Bangui', 'Africa'),
(42, 'CG', 'Republic of the Congo', 'XAF', 'Brazzaville', 'Africa'),
(43, 'CH', 'Switzerland', 'CHF', 'Berne', 'Europe'),
(44, 'CI', 'Ivory Coast', 'XOF', 'Yamoussoukro', 'Africa'),
(45, 'CK', 'Cook Islands', 'NZD', 'Avarua', 'Oceania'),
(46, 'CL', 'Chile', 'CLP', 'Santiago', 'South America'),
(47, 'CM', 'Cameroon', 'XAF', 'Yaoundé', 'Africa'),
(48, 'CN', 'China', 'CNY', 'Beijing', 'Asia'),
(49, 'CO', 'Colombia', 'COP', 'Bogotá', 'South America'),
(50, 'CR', 'Costa Rica', 'CRC', 'San José', 'North America'),
(51, 'CU', 'Cuba', 'CUP', 'Havana', 'North America'),
(52, 'CV', 'Cape Verde', 'CVE', 'Praia', 'Africa'),
(53, 'CW', 'Curacao', 'ANG', 'Willemstad', 'North America'),
(54, 'CX', 'Christmas Island', 'AUD', 'The Settlement', 'Asia'),
(55, 'CY', 'Cyprus', 'EUR', 'Nicosia', 'Europe'),
(56, 'CZ', 'Czech Republic', 'CZK', 'Prague', 'Europe'),
(57, 'DE', 'Germany', 'EUR', 'Berlin', 'Europe'),
(58, 'DJ', 'Djibouti', 'DJF', 'Djibouti', 'Africa'),
(59, 'DK', 'Denmark', 'DKK', 'Copenhagen', 'Europe'),
(60, 'DM', 'Dominica', 'XCD', 'Roseau', 'North America'),
(61, 'DO', 'Dominican Republic', 'DOP', 'Santo Domingo', 'North America'),
(62, 'DZ', 'Algeria', 'DZD', 'Algiers', 'Africa'),
(63, 'EC', 'Ecuador', 'USD', 'Quito', 'South America'),
(64, 'EE', 'Estonia', 'EUR', 'Tallinn', 'Europe'),
(65, 'EG', 'Egypt', 'EGP', 'Cairo', 'Africa'),
(66, 'EH', 'Western Sahara', 'MAD', 'El Aaiún', 'Africa'),
(67, 'ER', 'Eritrea', 'ERN', 'Asmara', 'Africa'),
(68, 'ES', 'Spain', 'EUR', 'Madrid', 'Europe'),
(69, 'ET', 'Ethiopia', 'ETB', 'Addis Ababa', 'Africa'),
(70, 'FI', 'Finland', 'EUR', 'Helsinki', 'Europe'),
(71, 'FJ', 'Fiji', 'FJD', 'Suva', 'Oceania'),
(72, 'FK', 'Falkland Islands', 'FKP', 'Stanley', 'South America'),
(73, 'FM', 'Micronesia', 'USD', 'Palikir', 'Oceania'),
(74, 'FO', 'Faroe Islands', 'DKK', 'Tórshavn', 'Europe'),
(75, 'FR', 'France', 'EUR', 'Paris', 'Europe'),
(76, 'GA', 'Gabon', 'XAF', 'Libreville', 'Africa'),
(77, 'GB', 'United Kingdom', 'GBP', 'London', 'Europe'),
(78, 'GD', 'Grenada', 'XCD', 'St. George\'s', 'North America'),
(79, 'GE', 'Georgia', 'GEL', 'Tbilisi', 'Asia'),
(80, 'GF', 'French Guiana', 'EUR', 'Cayenne', 'South America'),
(81, 'GG', 'Guernsey', 'GBP', 'St Peter Port', 'Europe'),
(82, 'GH', 'Ghana', 'GHS', 'Accra', 'Africa'),
(83, 'GI', 'Gibraltar', 'GIP', 'Gibraltar', 'Europe'),
(84, 'GL', 'Greenland', 'DKK', 'Nuuk', 'North America'),
(85, 'GM', 'Gambia', 'GMD', 'Banjul', 'Africa'),
(86, 'GN', 'Guinea', 'GNF', 'Conakry', 'Africa'),
(87, 'GP', 'Guadeloupe', 'EUR', 'Basse-Terre', 'North America'),
(88, 'GQ', 'Equatorial Guinea', 'XAF', 'Malabo', 'Africa'),
(89, 'GR', 'Greece', 'EUR', 'Athens', 'Europe'),
(90, 'GS', 'South Georgia and the South Sandwich Islands', 'GBP', 'Grytviken', 'Antarctica'),
(91, 'GT', 'Guatemala', 'GTQ', 'Guatemala City', 'North America'),
(92, 'GU', 'Guam', 'USD', 'Hagåtña', 'Oceania'),
(93, 'GW', 'Guinea-Bissau', 'XOF', 'Bissau', 'Africa'),
(94, 'GY', 'Guyana', 'GYD', 'Georgetown', 'South America'),
(95, 'HK', 'Hong Kong', 'HKD', 'Hong Kong', 'Asia'),
(96, 'HM', 'Heard Island and McDonald Islands', 'AUD', '', 'Antarctica'),
(97, 'HN', 'Honduras', 'HNL', 'Tegucigalpa', 'North America'),
(98, 'HR', 'Croatia', 'HRK', 'Zagreb', 'Europe'),
(99, 'HT', 'Haiti', 'HTG', 'Port-au-Prince', 'North America'),
(100, 'HU', 'Hungary', 'HUF', 'Budapest', 'Europe'),
(101, 'ID', 'Indonesia', 'IDR', 'Jakarta', 'Asia'),
(102, 'IE', 'Ireland', 'EUR', 'Dublin', 'Europe'),
(103, 'IL', 'Israel', 'ILS', '', 'Asia'),
(104, 'IM', 'Isle of Man', 'GBP', 'Douglas', 'Europe'),
(105, 'IN', 'India', 'INR', 'New Delhi', 'Asia'),
(106, 'IO', 'British Indian Ocean Territory', 'USD', '', 'Asia'),
(107, 'IQ', 'Iraq', 'IQD', 'Baghdad', 'Asia'),
(108, 'IR', 'Iran', 'IRR', 'Tehran', 'Asia'),
(109, 'IS', 'Iceland', 'ISK', 'Reykjavik', 'Europe'),
(110, 'IT', 'Italy', 'EUR', 'Rome', 'Europe'),
(111, 'JE', 'Jersey', 'GBP', 'Saint Helier', 'Europe'),
(112, 'JM', 'Jamaica', 'JMD', 'Kingston', 'North America'),
(113, 'JO', 'Jordan', 'JOD', 'Amman', 'Asia'),
(114, 'JP', 'Japan', 'JPY', 'Tokyo', 'Asia'),
(115, 'KE', 'Kenya', 'KES', 'Nairobi', 'Africa'),
(116, 'KG', 'Kyrgyzstan', 'KGS', 'Bishkek', 'Asia'),
(117, 'KH', 'Cambodia', 'KHR', 'Phnom Penh', 'Asia'),
(118, 'KI', 'Kiribati', 'AUD', 'Tarawa', 'Oceania'),
(119, 'KM', 'Comoros', 'KMF', 'Moroni', 'Africa'),
(120, 'KN', 'Saint Kitts and Nevis', 'XCD', 'Basseterre', 'North America'),
(121, 'KP', 'North Korea', 'KPW', 'Pyongyang', 'Asia'),
(122, 'KR', 'South Korea', 'KRW', 'Seoul', 'Asia'),
(123, 'KW', 'Kuwait', 'KWD', 'Kuwait City', 'Asia'),
(124, 'KY', 'Cayman Islands', 'KYD', 'George Town', 'North America'),
(125, 'KZ', 'Kazakhstan', 'KZT', 'Astana', 'Asia'),
(126, 'LA', 'Laos', 'LAK', 'Vientiane', 'Asia'),
(127, 'LB', 'Lebanon', 'LBP', 'Beirut', 'Asia'),
(128, 'LC', 'Saint Lucia', 'XCD', 'Castries', 'North America'),
(129, 'LI', 'Liechtenstein', 'CHF', 'Vaduz', 'Europe'),
(130, 'LK', 'Sri Lanka', 'LKR', 'Colombo', 'Asia'),
(131, 'LR', 'Liberia', 'LRD', 'Monrovia', 'Africa'),
(132, 'LS', 'Lesotho', 'LSL', 'Maseru', 'Africa'),
(133, 'LT', 'Lithuania', 'LTL', 'Vilnius', 'Europe'),
(134, 'LU', 'Luxembourg', 'EUR', 'Luxembourg', 'Europe'),
(135, 'LV', 'Latvia', 'EUR', 'Riga', 'Europe'),
(136, 'LY', 'Libya', 'LYD', 'Tripoli', 'Africa'),
(137, 'MA', 'Morocco', 'MAD', 'Rabat', 'Africa'),
(138, 'MC', 'Monaco', 'EUR', 'Monaco', 'Europe'),
(139, 'MD', 'Moldova', 'MDL', 'Chişinău', 'Europe'),
(140, 'ME', 'Montenegro', 'EUR', 'Podgorica', 'Europe'),
(141, 'MF', 'Saint Martin', 'EUR', 'Marigot', 'North America'),
(142, 'MG', 'Madagascar', 'MGA', 'Antananarivo', 'Africa'),
(143, 'MH', 'Marshall Islands', 'USD', 'Majuro', 'Oceania'),
(144, 'MK', 'Macedonia', 'MKD', 'Skopje', 'Europe'),
(145, 'ML', 'Mali', 'XOF', 'Bamako', 'Africa'),
(146, 'MM', 'Myanmar [Burma]', 'MMK', 'Nay Pyi Taw', 'Asia'),
(147, 'MN', 'Mongolia', 'MNT', 'Ulan Bator', 'Asia'),
(148, 'MO', 'Macao', 'MOP', 'Macao', 'Asia'),
(149, 'MP', 'Northern Mariana Islands', 'USD', 'Saipan', 'Oceania'),
(150, 'MQ', 'Martinique', 'EUR', 'Fort-de-France', 'North America'),
(151, 'MR', 'Mauritania', 'MRO', 'Nouakchott', 'Africa'),
(152, 'MS', 'Montserrat', 'XCD', 'Plymouth', 'North America'),
(153, 'MT', 'Malta', 'EUR', 'Valletta', 'Europe'),
(154, 'MU', 'Mauritius', 'MUR', 'Port Louis', 'Africa'),
(155, 'MV', 'Maldives', 'MVR', 'Malé', 'Asia'),
(156, 'MW', 'Malawi', 'MWK', 'Lilongwe', 'Africa'),
(157, 'MX', 'Mexico', 'MXN', 'Mexico City', 'North America'),
(158, 'MY', 'Malaysia', 'MYR', 'Kuala Lumpur', 'Asia'),
(159, 'MZ', 'Mozambique', 'MZN', 'Maputo', 'Africa'),
(160, 'NA', 'Namibia', 'NAD', 'Windhoek', 'Africa'),
(161, 'NC', 'New Caledonia', 'XPF', 'Noumea', 'Oceania'),
(162, 'NE', 'Niger', 'XOF', 'Niamey', 'Africa'),
(163, 'NF', 'Norfolk Island', 'AUD', 'Kingston', 'Oceania'),
(164, 'NG', 'Nigeria', 'NGN', 'Abuja', 'Africa'),
(165, 'NI', 'Nicaragua', 'NIO', 'Managua', 'North America'),
(166, 'NL', 'Netherlands', 'EUR', 'Amsterdam', 'Europe'),
(167, 'NO', 'Norway', 'NOK', 'Oslo', 'Europe'),
(168, 'NP', 'Nepal', 'NPR', 'Kathmandu', 'Asia'),
(169, 'NR', 'Nauru', 'AUD', '', 'Oceania'),
(170, 'NU', 'Niue', 'NZD', 'Alofi', 'Oceania'),
(171, 'NZ', 'New Zealand', 'NZD', 'Wellington', 'Oceania'),
(172, 'OM', 'Oman', 'OMR', 'Muscat', 'Asia'),
(173, 'PA', 'Panama', 'PAB', 'Panama City', 'North America'),
(174, 'PE', 'Peru', 'PEN', 'Lima', 'South America'),
(175, 'PF', 'French Polynesia', 'XPF', 'Papeete', 'Oceania'),
(176, 'PG', 'Papua New Guinea', 'PGK', 'Port Moresby', 'Oceania'),
(177, 'PH', 'Philippines', 'PHP', 'Manila', 'Asia'),
(178, 'PK', 'Pakistan', 'PKR', 'Islamabad', 'Asia'),
(179, 'PL', 'Poland', 'PLN', 'Warsaw', 'Europe'),
(180, 'PM', 'Saint Pierre and Miquelon', 'EUR', 'Saint-Pierre', 'North America'),
(181, 'PN', 'Pitcairn Islands', 'NZD', 'Adamstown', 'Oceania'),
(182, 'PR', 'Puerto Rico', 'USD', 'San Juan', 'North America'),
(183, 'PS', 'Palestine', 'ILS', '', 'Asia'),
(184, 'PT', 'Portugal', 'EUR', 'Lisbon', 'Europe'),
(185, 'PW', 'Palau', 'USD', 'Melekeok - Palau State Capital', 'Oceania'),
(186, 'PY', 'Paraguay', 'PYG', 'Asunción', 'South America'),
(187, 'QA', 'Qatar', 'QAR', 'Doha', 'Asia'),
(188, 'RE', 'Réunion', 'EUR', 'Saint-Denis', 'Africa'),
(189, 'RO', 'Romania', 'RON', 'Bucharest', 'Europe'),
(190, 'RS', 'Serbia', 'RSD', 'Belgrade', 'Europe'),
(191, 'RU', 'Russia', 'RUB', 'Moscow', 'Europe'),
(192, 'RW', 'Rwanda', 'RWF', 'Kigali', 'Africa'),
(193, 'SA', 'Saudi Arabia', 'SAR', 'Riyadh', 'Asia'),
(194, 'SB', 'Solomon Islands', 'SBD', 'Honiara', 'Oceania'),
(195, 'SC', 'Seychelles', 'SCR', 'Victoria', 'Africa'),
(196, 'SD', 'Sudan', 'SDG', 'Khartoum', 'Africa'),
(197, 'SE', 'Sweden', 'SEK', 'Stockholm', 'Europe'),
(198, 'SG', 'Singapore', 'SGD', 'Singapore', 'Asia'),
(199, 'SH', 'Saint Helena', 'SHP', 'Jamestown', 'Africa'),
(200, 'SI', 'Slovenia', 'EUR', 'Ljubljana', 'Europe'),
(201, 'SJ', 'Svalbard and Jan Mayen', 'NOK', 'Longyearbyen', 'Europe'),
(202, 'SK', 'Slovakia', 'EUR', 'Bratislava', 'Europe'),
(203, 'SL', 'Sierra Leone', 'SLL', 'Freetown', 'Africa'),
(204, 'SM', 'San Marino', 'EUR', 'San Marino', 'Europe'),
(205, 'SN', 'Senegal', 'XOF', 'Dakar', 'Africa'),
(206, 'SO', 'Somalia', 'SOS', 'Mogadishu', 'Africa'),
(207, 'SR', 'Suriname', 'SRD', 'Paramaribo', 'South America'),
(208, 'SS', 'South Sudan', 'SSP', 'Juba', 'Africa'),
(209, 'ST', 'São Tomé and Príncipe', 'STD', 'São Tomé', 'Africa'),
(210, 'SV', 'El Salvador', 'USD', 'San Salvador', 'North America'),
(211, 'SX', 'Sint Maarten', 'ANG', 'Philipsburg', 'North America'),
(212, 'SY', 'Syria', 'SYP', 'Damascus', 'Asia'),
(213, 'SZ', 'Swaziland', 'SZL', 'Mbabane', 'Africa'),
(214, 'TC', 'Turks and Caicos Islands', 'USD', 'Cockburn Town', 'North America'),
(215, 'TD', 'Chad', 'XAF', 'N\'Djamena', 'Africa'),
(216, 'TF', 'French Southern Territories', 'EUR', 'Port-aux-Français', 'Antarctica'),
(217, 'TG', 'Togo', 'XOF', 'Lomé', 'Africa'),
(218, 'TH', 'Thailand', 'THB', 'Bangkok', 'Asia'),
(219, 'TJ', 'Tajikistan', 'TJS', 'Dushanbe', 'Asia'),
(220, 'TK', 'Tokelau', 'NZD', '', 'Oceania'),
(221, 'TL', 'East Timor', 'USD', 'Dili', 'Oceania'),
(222, 'TM', 'Turkmenistan', 'TMT', 'Ashgabat', 'Asia'),
(223, 'TN', 'Tunisia', 'TND', 'Tunis', 'Africa'),
(224, 'TO', 'Tonga', 'TOP', 'Nuku\'alofa', 'Oceania'),
(225, 'TR', 'Turkey', 'TRY', 'Ankara', 'Asia'),
(226, 'TT', 'Trinidad and Tobago', 'TTD', 'Port of Spain', 'North America'),
(227, 'TV', 'Tuvalu', 'AUD', 'Funafuti', 'Oceania'),
(228, 'TW', 'Taiwan', 'TWD', 'Taipei', 'Asia'),
(229, 'TZ', 'Tanzania', 'TZS', 'Dodoma', 'Africa'),
(230, 'UA', 'Ukraine', 'UAH', 'Kyiv', 'Europe'),
(231, 'UG', 'Uganda', 'UGX', 'Kampala', 'Africa'),
(232, 'UM', 'U.S. Minor Outlying Islands', 'USD', '', 'Oceania'),
(233, 'US', 'United States', 'USD', 'Washington', 'North America'),
(234, 'UY', 'Uruguay', 'UYU', 'Montevideo', 'South America'),
(235, 'UZ', 'Uzbekistan', 'UZS', 'Tashkent', 'Asia'),
(236, 'VA', 'Vatican City', 'EUR', 'Vatican', 'Europe'),
(237, 'VC', 'Saint Vincent and the Grenadines', 'XCD', 'Kingstown', 'North America'),
(238, 'VE', 'Venezuela', 'VEF', 'Caracas', 'South America'),
(239, 'VG', 'British Virgin Islands', 'USD', 'Road Town', 'North America'),
(240, 'VI', 'U.S. Virgin Islands', 'USD', 'Charlotte Amalie', 'North America'),
(241, 'VN', 'Vietnam', 'VND', 'Hanoi', 'Asia'),
(242, 'VU', 'Vanuatu', 'VUV', 'Port Vila', 'Oceania'),
(243, 'WF', 'Wallis and Futuna', 'XPF', 'Mata-Utu', 'Oceania'),
(244, 'WS', 'Samoa', 'WST', 'Apia', 'Oceania'),
(245, 'XK', 'Kosovo', 'EUR', 'Pristina', 'Europe'),
(246, 'YE', 'Yemen', 'YER', 'Sanaa', 'Asia'),
(247, 'YT', 'Mayotte', 'EUR', 'Mamoutzou', 'Africa'),
(248, 'ZA', 'South Africa', 'ZAR', 'Pretoria', 'Africa'),
(249, 'ZM', 'Zambia', 'ZMW', 'Lusaka', 'Africa'),
(250, 'ZW', 'Zimbabwe', 'ZWL', 'Harare', 'Africa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
