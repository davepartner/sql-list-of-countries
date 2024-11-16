-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 16, 2024 at 04:37 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `investor_path3`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `phone_extension` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_code`, `currency_name`, `currency_code`, `currency_symbol`, `phone_extension`, `deleted_at`, `updated_at`, `created_at`) VALUES
(1, 'Afghanistan', 'AF', 'Afghan afghani', 'AFN', '؋', '+93', NULL, NULL, NULL),
(2, 'Albania', 'AL', 'Albanian lek', 'ALL', 'L', '+355', NULL, NULL, NULL),
(3, 'Algeria', 'DZ', 'Algerian dinar', 'DZD', 'د.ج', '+213', NULL, NULL, NULL),
(4, 'Andorra', 'AD', 'Euro', 'EUR', '€', '+376', NULL, NULL, NULL),
(5, 'Angola', 'AO', 'Angolan kwanza', 'AOA', 'Kz', '+244', NULL, NULL, NULL),
(6, 'Antigua and Barbuda', 'AG', 'East Caribbean dollar', 'XCD', '$', '+1-268', NULL, NULL, NULL),
(7, 'Argentina', 'AR', 'Argentine peso', 'ARS', '$', '+54', NULL, NULL, NULL),
(8, 'Armenia', 'AM', 'Armenian dram', 'AMD', '֏', '+374', NULL, NULL, NULL),
(9, 'Australia', 'AU', 'Australian dollar', 'AUD', '$', '+61', NULL, NULL, NULL),
(10, 'Austria', 'AT', 'Euro', 'EUR', '€', '+43', NULL, NULL, NULL),
(11, 'Azerbaijan', 'AZ', 'Azerbaijani manat', 'AZN', '₼', '+994', NULL, NULL, NULL),
(12, 'Bahamas', 'BS', 'Bahamian dollar', 'BSD', '$', '+1-242', NULL, NULL, NULL),
(13, 'Bahrain', 'BH', 'Bahraini dinar', 'BHD', '.د.ب', '+973', NULL, NULL, NULL),
(14, 'Bangladesh', 'BD', 'Bangladeshi taka', 'BDT', '৳', '+880', NULL, NULL, NULL),
(15, 'Barbados', 'BB', 'Barbadian dollar', 'BBD', '$', '+1-246', NULL, NULL, NULL),
(16, 'Belarus', 'BY', 'Belarusian ruble', 'BYN', 'Br', '+375', NULL, NULL, NULL),
(17, 'Belgium', 'BE', 'Euro', 'EUR', '€', '+32', NULL, NULL, NULL),
(18, 'Belize', 'BZ', 'Belize dollar', 'BZD', '$', '+501', NULL, NULL, NULL),
(19, 'Benin', 'BJ', 'West African CFA franc', 'XOF', 'CFA', '+229', NULL, NULL, NULL),
(20, 'Bhutan', 'BT', 'Bhutanese ngultrum', 'BTN', 'Nu.', '+975', NULL, NULL, NULL),
(21, 'Bolivia', 'BO', 'Boliviano', 'BOB', 'Bs.', '+591', NULL, NULL, NULL),
(22, 'Bosnia and Herzegovina', 'BA', 'Bosnia and Herzegovina convertible mark', 'BAM', 'KM', '+387', NULL, NULL, NULL),
(23, 'Botswana', 'BW', 'Botswana pula', 'BWP', 'P', '+267', NULL, NULL, NULL),
(24, 'Brazil', 'BR', 'Brazilian real', 'BRL', 'R$', '+55', NULL, NULL, NULL),
(25, 'Brunei', 'BN', 'Brunei dollar', 'BND', '$', '+673', NULL, NULL, NULL),
(26, 'Bulgaria', 'BG', 'Bulgarian lev', 'BGN', 'лв', '+359', NULL, NULL, NULL),
(27, 'Burkina Faso', 'BF', 'West African CFA franc', 'XOF', 'CFA', '+226', NULL, NULL, NULL),
(28, 'Burundi', 'BI', 'Burundian franc', 'BIF', 'FBu', '+257', NULL, NULL, NULL),
(29, 'Cabo Verde', 'CV', 'Cape Verdean escudo', 'CVE', '$', '+238', NULL, NULL, NULL),
(30, 'Cambodia', 'KH', 'Cambodian riel', 'KHR', '៛', '+855', NULL, NULL, NULL),
(31, 'Cameroon', 'CM', 'Central African CFA franc', 'XAF', 'FCFA', '+237', NULL, NULL, NULL),
(32, 'Canada', 'CA', 'Canadian dollar', 'CAD', '$', '+1', NULL, NULL, NULL),
(33, 'Central African Republic', 'CF', 'Central African CFA franc', 'XAF', 'FCFA', '+236', NULL, NULL, NULL),
(34, 'Chad', 'TD', 'Central African CFA franc', 'XAF', 'FCFA', '+235', NULL, NULL, NULL),
(35, 'Chile', 'CL', 'Chilean peso', 'CLP', '$', '+56', NULL, NULL, NULL),
(36, 'China', 'CN', 'Chinese yuan', 'CNY', '¥', '+86', NULL, NULL, NULL),
(37, 'Colombia', 'CO', 'Colombian peso', 'COP', '$', '+57', NULL, NULL, NULL),
(38, 'Comoros', 'KM', 'Comorian franc', 'KMF', 'CF', '+269', NULL, NULL, NULL),
(39, 'Congo, Democratic Republic of the', 'CD', 'Congolese franc', 'CDF', 'FC', '+243', NULL, NULL, NULL),
(40, 'Congo, Republic of the', 'CG', 'Central African CFA franc', 'XAF', 'FCFA', '+242', NULL, NULL, NULL),
(41, 'Costa Rica', 'CR', 'Costa Rican colón', 'CRC', '₡', '+506', NULL, NULL, NULL),
(42, 'Côte d\'Ivoire', 'CI', 'West African CFA franc', 'XOF', 'CFA', '+225', NULL, NULL, NULL),
(43, 'Croatia', 'HR', 'Euro', 'EUR', '€', '+385', NULL, NULL, NULL),
(44, 'Cuba', 'CU', 'Cuban peso', 'CUP', '$', '+53', NULL, NULL, NULL),
(45, 'Cyprus', 'CY', 'Euro', 'EUR', '€', '+357', NULL, NULL, NULL),
(46, 'Czech Republic', 'CZ', 'Czech koruna', 'CZK', 'Kč', '+420', NULL, NULL, NULL),
(47, 'Denmark', 'DK', 'Danish krone', 'DKK', 'kr', '+45', NULL, NULL, NULL),
(48, 'Djibouti', 'DJ', 'Djiboutian franc', 'DJF', 'Fdj', '+253', NULL, NULL, NULL),
(49, 'Dominica', 'DM', 'East Caribbean dollar', 'XCD', '$', '+1-767', NULL, NULL, NULL),
(50, 'Dominican Republic', 'DO', 'Dominican peso', 'DOP', '$', '+1-809', NULL, NULL, NULL),
(51, 'Ecuador', 'EC', 'United States dollar', 'USD', '$', '+593', NULL, NULL, NULL),
(52, 'Egypt', 'EG', 'Egyptian pound', 'EGP', '£', '+20', NULL, NULL, NULL),
(53, 'El Salvador', 'SV', 'United States dollar', 'USD', '$', '+503', NULL, NULL, NULL),
(54, 'Equatorial Guinea', 'GQ', 'Central African CFA franc', 'XAF', 'FCFA', '+240', NULL, NULL, NULL),
(55, 'Eritrea', 'ER', 'Eritrean nakfa', 'ERN', 'Nfk', '+291', NULL, NULL, NULL),
(56, 'Estonia', 'EE', 'Euro', 'EUR', '€', '+372', NULL, NULL, NULL),
(57, 'Eswatini', 'SZ', 'Swazi lilangeni', 'SZL', 'E', '+268', NULL, NULL, NULL),
(58, 'Ethiopia', 'ET', 'Ethiopian birr', 'ETB', 'Br', '+251', NULL, NULL, NULL),
(59, 'Fiji', 'FJ', 'Fijian dollar', 'FJD', '$', '+679', NULL, NULL, NULL),
(60, 'Finland', 'FI', 'Euro', 'EUR', '€', '+358', NULL, NULL, NULL),
(61, 'France', 'FR', 'Euro', 'EUR', '€', '+33', NULL, NULL, NULL),
(62, 'Gabon', 'GA', 'Central African CFA franc', 'XAF', 'FCFA', '+241', NULL, NULL, NULL),
(63, 'Gambia', 'GM', 'Gambian dalasi', 'GMD', 'D', '+220', NULL, NULL, NULL),
(64, 'Georgia', 'GE', 'Georgian lari', 'GEL', '₾', '+995', NULL, NULL, NULL),
(65, 'Germany', 'DE', 'Euro', 'EUR', '€', '+49', NULL, NULL, NULL),
(66, 'Ghana', 'GH', 'Ghanaian cedi', 'GHS', '₵', '+233', NULL, NULL, NULL),
(67, 'Greece', 'GR', 'Euro', 'EUR', '€', '+30', NULL, NULL, NULL),
(68, 'Grenada', 'GD', 'East Caribbean dollar', 'XCD', '$', '+1-473', NULL, NULL, NULL),
(69, 'Guatemala', 'GT', 'Guatemalan quetzal', 'GTQ', 'Q', '+502', NULL, NULL, NULL),
(70, 'Guinea', 'GN', 'Guinean franc', 'GNF', 'FG', '+224', NULL, NULL, NULL),
(71, 'Guinea-Bissau', 'GW', 'West African CFA franc', 'XOF', 'CFA', '+245', NULL, NULL, NULL),
(72, 'Guyana', 'GY', 'Guyanese dollar', 'GYD', '$', '+592', NULL, NULL, NULL),
(73, 'Haiti', 'HT', 'Haitian gourde', 'HTG', 'G', '+509', NULL, NULL, NULL),
(74, 'Honduras', 'HN', 'Honduran lempira', 'HNL', 'L', '+504', NULL, NULL, NULL),
(75, 'Hungary', 'HU', 'Hungarian forint', 'HUF', 'Ft', '+36', NULL, NULL, NULL),
(76, 'Iceland', 'IS', 'Icelandic króna', 'ISK', 'kr', '+354', NULL, NULL, NULL),
(77, 'India', 'IN', 'Indian rupee', 'INR', '₹', '+91', NULL, NULL, NULL),
(78, 'Indonesia', 'ID', 'Indonesian rupiah', 'IDR', 'Rp', '+62', NULL, NULL, NULL),
(79, 'Iran', 'IR', 'Iranian rial', 'IRR', '﷼', '+98', NULL, NULL, NULL),
(80, 'Iraq', 'IQ', 'Iraqi dinar', 'IQD', 'ع.د', '+964', NULL, NULL, NULL),
(81, 'Ireland', 'IE', 'Euro', 'EUR', '€', '+353', NULL, NULL, NULL),
(82, 'Israel', 'IL', 'Israeli new shekel', 'ILS', '₪', '+972', NULL, NULL, NULL),
(83, 'Italy', 'IT', 'Euro', 'EUR', '€', '+39', NULL, NULL, NULL),
(84, 'Jamaica', 'JM', 'Jamaican dollar', 'JMD', 'J$', '+1-876', NULL, NULL, NULL),
(85, 'Japan', 'JP', 'Japanese yen', 'JPY', '¥', '+81', NULL, NULL, NULL),
(86, 'Jordan', 'JO', 'Jordanian dinar', 'JOD', 'د.ا', '+962', NULL, NULL, NULL),
(87, 'Kazakhstan', 'KZ', 'Kazakhstani tenge', 'KZT', '₸', '+7', NULL, NULL, NULL),
(88, 'Kenya', 'KE', 'Kenyan shilling', 'KES', 'KSh', '+254', NULL, NULL, NULL),
(89, 'Kiribati', 'KI', 'Australian dollar', 'AUD', '$', '+686', NULL, NULL, NULL),
(90, 'North Korea', 'KP', 'North Korean won', 'KPW', '₩', '+850', NULL, NULL, NULL),
(91, 'South Korea', 'KR', 'South Korean won', 'KRW', '₩', '+82', NULL, NULL, NULL),
(92, 'Kosovo', 'XK', 'Euro', 'EUR', '€', '+383', NULL, NULL, NULL),
(93, 'Kuwait', 'KW', 'Kuwaiti dinar', 'KWD', 'د.ك', '+965', NULL, NULL, NULL),
(94, 'Kyrgyzstan', 'KG', 'Kyrgyzstani som', 'KGS', 'с', '+996', NULL, NULL, NULL),
(95, 'Laos', 'LA', 'Lao kip', 'LAK', '₭', '+856', NULL, NULL, NULL),
(96, 'Latvia', 'LV', 'Euro', 'EUR', '€', '+371', NULL, NULL, NULL),
(97, 'Lebanon', 'LB', 'Lebanese pound', 'LBP', 'ل.ل', '+961', NULL, NULL, NULL),
(98, 'Lesotho', 'LS', 'Lesotho loti', 'LSL', 'L', '+266', NULL, NULL, NULL),
(99, 'Liberia', 'LR', 'Liberian dollar', 'LRD', '$', '+231', NULL, NULL, NULL),
(100, 'Libya', 'LY', 'Libyan dinar', 'LYD', 'ل.د', '+218', NULL, NULL, NULL),
(101, 'Liechtenstein', 'LI', 'Swiss franc', 'CHF', 'Fr.', '+423', NULL, NULL, NULL),
(102, 'Lithuania', 'LT', 'Euro', 'EUR', '€', '+370', NULL, NULL, NULL),
(103, 'Luxembourg', 'LU', 'Euro', 'EUR', '€', '+352', NULL, NULL, NULL),
(104, 'Madagascar', 'MG', 'Malagasy ariary', 'MGA', 'Ar', '+261', NULL, NULL, NULL),
(105, 'Malawi', 'MW', 'Malawian kwacha', 'MWK', 'MK', '+265', NULL, NULL, NULL),
(106, 'Malaysia', 'MY', 'Malaysian ringgit', 'MYR', 'RM', '+60', NULL, NULL, NULL),
(107, 'Maldives', 'MV', 'Maldivian rufiyaa', 'MVR', 'Rf', '+960', NULL, NULL, NULL),
(108, 'Mali', 'ML', 'West African CFA franc', 'XOF', 'CFA', '+223', NULL, NULL, NULL),
(109, 'Malta', 'MT', 'Euro', 'EUR', '€', '+356', NULL, NULL, NULL),
(110, 'Marshall Islands', 'MH', 'United States dollar', 'USD', '$', '+692', NULL, NULL, NULL),
(111, 'Mauritania', 'MR', 'Mauritanian ouguiya', 'MRU', 'UM', '+222', NULL, NULL, NULL),
(112, 'Mauritius', 'MU', 'Mauritian rupee', 'MUR', '₨', '+230', NULL, NULL, NULL),
(113, 'Mexico', 'MX', 'Mexican peso', 'MXN', '$', '+52', NULL, NULL, NULL),
(114, 'Micronesia', 'FM', 'United States dollar', 'USD', '$', '+691', NULL, NULL, NULL),
(115, 'Moldova', 'MD', 'Moldovan leu', 'MDL', 'L', '+373', NULL, NULL, NULL),
(116, 'Monaco', 'MC', 'Euro', 'EUR', '€', '+377', NULL, NULL, NULL),
(117, 'Mongolia', 'MN', 'Mongolian tögrög', 'MNT', '₮', '+976', NULL, NULL, NULL),
(118, 'Montenegro', 'ME', 'Euro', 'EUR', '€', '+382', NULL, NULL, NULL),
(119, 'Morocco', 'MA', 'Moroccan dirham', 'MAD', 'د.م.', '+212', NULL, NULL, NULL),
(120, 'Mozambique', 'MZ', 'Mozambican metical', 'MZN', 'MT', '+258', NULL, NULL, NULL),
(121, 'Myanmar', 'MM', 'Myanmar kyat', 'MMK', 'K', '+95', NULL, NULL, NULL),
(122, 'Namibia', 'NA', 'Namibian dollar', 'NAD', '$', '+264', NULL, NULL, NULL),
(123, 'Nauru', 'NR', 'Australian dollar', 'AUD', '$', '+674', NULL, NULL, NULL),
(124, 'Nepal', 'NP', 'Nepalese rupee', 'NPR', '₨', '+977', NULL, NULL, NULL),
(125, 'Netherlands', 'NL', 'Euro', 'EUR', '€', '+31', NULL, NULL, NULL),
(126, 'New Zealand', 'NZ', 'New Zealand dollar', 'NZD', '$', '+64', NULL, NULL, NULL),
(127, 'Nicaragua', 'NI', 'Nicaraguan córdoba', 'NIO', 'C$', '+505', NULL, NULL, NULL),
(128, 'Niger', 'NE', 'West African CFA franc', 'XOF', 'CFA', '+227', NULL, NULL, NULL),
(129, 'Nigeria', 'NG', 'Nigerian naira', 'NGN', '₦', '+234', NULL, NULL, NULL),
(130, 'North Macedonia', 'MK', 'Macedonian denar', 'MKD', 'ден', '+389', NULL, NULL, NULL),
(131, 'Norway', 'NO', 'Norwegian krone', 'NOK', 'kr', '+47', NULL, NULL, NULL),
(132, 'Oman', 'OM', 'Omani rial', 'OMR', 'ر.ع.', '+968', NULL, NULL, NULL),
(133, 'Pakistan', 'PK', 'Pakistani rupee', 'PKR', '₨', '+92', NULL, NULL, NULL),
(134, 'Palau', 'PW', 'United States dollar', 'USD', '$', '+680', NULL, NULL, NULL),
(135, 'Palestine', 'PS', 'Israeli new shekel, Jordanian dinar', 'ILS, JOD', '₪, د.ا', '+970', NULL, NULL, NULL),
(136, 'Panama', 'PA', 'Panamanian balboa, United States dollar', 'PAB, USD', 'B/., $', '+507', NULL, NULL, NULL),
(137, 'Papua New Guinea', 'PG', 'Papua New Guinean kina', 'PGK', 'K', '+675', NULL, NULL, NULL),
(138, 'Paraguay', 'PY', 'Paraguayan guaraní', 'PYG', '₲', '+595', NULL, NULL, NULL),
(139, 'Peru', 'PE', 'Peruvian sol', 'PEN', 'S/', '+51', NULL, NULL, NULL),
(140, 'Philippines', 'PH', 'Philippine peso', 'PHP', '₱', '+63', NULL, NULL, NULL),
(141, 'Poland', 'PL', 'Polish złoty', 'PLN', 'zł', '+48', NULL, NULL, NULL),
(142, 'Portugal', 'PT', 'Euro', 'EUR', '€', '+351', NULL, NULL, NULL),
(143, 'Qatar', 'QA', 'Qatari riyal', 'QAR', 'ر.ق', '+974', NULL, NULL, NULL),
(144, 'Romania', 'RO', 'Romanian leu', 'RON', 'lei', '+40', NULL, NULL, NULL),
(145, 'Russia', 'RU', 'Russian ruble', 'RUB', '₽', '+7', NULL, NULL, NULL),
(146, 'Rwanda', 'RW', 'Rwandan franc', 'RWF', 'FRw', '+250', NULL, NULL, NULL),
(147, 'Saint Kitts and Nevis', 'KN', 'East Caribbean dollar', 'XCD', '$', '+1-869', NULL, NULL, NULL),
(148, 'Saint Lucia', 'LC', 'East Caribbean dollar', 'XCD', '$', '+1-758', NULL, NULL, NULL),
(149, 'Saint Vincent and the Grenadines', 'VC', 'East Caribbean dollar', 'XCD', '$', '+1-784', NULL, NULL, NULL),
(150, 'Samoa', 'WS', 'Samoan tālā', 'WST', 'T', '+685', NULL, NULL, NULL),
(151, 'San Marino', 'SM', 'Euro', 'EUR', '€', '+378', NULL, NULL, NULL),
(152, 'Sao Tome and Principe', 'ST', 'São Tomé and Príncipe dobra', 'STN', 'Db', '+239', NULL, NULL, NULL),
(153, 'Saudi Arabia', 'SA', 'Saudi riyal', 'SAR', 'ر.س', '+966', NULL, NULL, NULL),
(154, 'Senegal', 'SN', 'West African CFA franc', 'XOF', 'CFA', '+221', NULL, NULL, NULL),
(155, 'Serbia', 'RS', 'Serbian dinar', 'RSD', 'дин', '+381', NULL, NULL, NULL),
(156, 'Seychelles', 'SC', 'Seychellois rupee', 'SCR', '₨', '+248', NULL, NULL, NULL),
(157, 'Sierra Leone', 'SL', 'Sierra Leonean leone', 'SLL', 'Le', '+232', NULL, NULL, NULL),
(158, 'Singapore', 'SG', 'Singapore dollar', 'SGD', '$', '+65', NULL, NULL, NULL),
(159, 'Slovakia', 'SK', 'Euro', 'EUR', '€', '+421', NULL, NULL, NULL),
(160, 'Slovenia', 'SI', 'Euro', 'EUR', '€', '+386', NULL, NULL, NULL),
(161, 'Solomon Islands', 'SB', 'Solomon Islands dollar', 'SBD', '$', '+677', NULL, NULL, NULL),
(162, 'Somalia', 'SO', 'Somali shilling', 'SOS', 'Sh.So.', '+252', NULL, NULL, NULL),
(163, 'South Africa', 'ZA', 'South African rand', 'ZAR', 'R', '+27', NULL, NULL, NULL),
(164, 'South Sudan', 'SS', 'South Sudanese pound', 'SSP', '£', '+211', NULL, NULL, NULL),
(165, 'Spain', 'ES', 'Euro', 'EUR', '€', '+34', NULL, NULL, NULL),
(166, 'Sri Lanka', 'LK', 'Sri Lankan rupee', 'LKR', 'Rs', '+94', NULL, NULL, NULL),
(167, 'Sudan', 'SD', 'Sudanese pound', 'SDG', 'ج.س.', '+249', NULL, NULL, NULL),
(168, 'Suriname', 'SR', 'Surinamese dollar', 'SRD', '$', '+597', NULL, NULL, NULL),
(169, 'Sweden', 'SE', 'Swedish krona', 'SEK', 'kr', '+46', NULL, NULL, NULL),
(170, 'Switzerland', 'CH', 'Swiss franc', 'CHF', 'Fr.', '+41', NULL, NULL, NULL),
(171, 'Syria', 'SY', 'Syrian pound', 'SYP', '£S', '+963', NULL, NULL, NULL),
(172, 'Taiwan', 'TW', 'New Taiwan dollar', 'TWD', 'NT$', '+886', NULL, NULL, NULL),
(173, 'Tajikistan', 'TJ', 'Tajikistani somoni', 'TJS', 'ЅМ', '+992', NULL, NULL, NULL),
(174, 'Tanzania', 'TZ', 'Tanzanian shilling', 'TZS', 'TSh', '+255', NULL, NULL, NULL),
(175, 'Thailand', 'TH', 'Thai baht', 'THB', '฿', '+66', NULL, NULL, NULL),
(176, 'Timor-Leste', 'TL', 'United States dollar', 'USD', '$', '+670', NULL, NULL, NULL),
(177, 'Togo', 'TG', 'West African CFA franc', 'XOF', 'CFA', '+228', NULL, NULL, NULL),
(178, 'Tonga', 'TO', 'Tongan paʻanga', 'TOP', 'T$', '+676', NULL, NULL, NULL),
(179, 'Trinidad and Tobago', 'TT', 'Trinidad and Tobago dollar', 'TTD', '$', '+1-868', NULL, NULL, NULL),
(180, 'Tunisia', 'TN', 'Tunisian dinar', 'TND', 'د.ت', '+216', NULL, NULL, NULL),
(181, 'Turkey', 'TR', 'Turkish lira', 'TRY', '₺', '+90', NULL, NULL, NULL),
(182, 'Turkmenistan', 'TM', 'Turkmenistan manat', 'TMT', 'm', '+993', NULL, NULL, NULL),
(183, 'Tuvalu', 'TV', 'Australian dollar', 'AUD', '$', '+688', NULL, NULL, NULL),
(184, 'Uganda', 'UG', 'Ugandan shilling', 'UGX', 'USh', '+256', NULL, NULL, NULL),
(185, 'Ukraine', 'UA', 'Ukrainian hryvnia', 'UAH', '₴', '+380', NULL, NULL, NULL),
(186, 'United Arab Emirates', 'AE', 'United Arab Emirates dirham', 'AED', 'د.إ', '+971', NULL, NULL, NULL),
(187, 'United Kingdom', 'GB', 'British pound', 'GBP', '£', '+44', NULL, NULL, NULL),
(188, 'United States', 'US', 'United States dollar', 'USD', '$', '+1', NULL, NULL, NULL),
(189, 'Uruguay', 'UY', 'Uruguayan peso', 'UYU', '$', '+598', NULL, NULL, NULL),
(190, 'Uzbekistan', 'UZ', 'Uzbekistani soʻm', 'UZS', 'soʻm', '+998', NULL, NULL, NULL),
(191, 'Vanuatu', 'VU', 'Vanuatu vatu', 'VUV', 'Vt', '+678', NULL, NULL, NULL),
(192, 'Vatican City', 'VA', 'Euro', 'EUR', '€', '+379', NULL, NULL, NULL),
(193, 'Venezuela', 'VE', 'Venezuelan bolívar', 'VES', 'Bs.', '+58', NULL, NULL, NULL),
(194, 'Vietnam', 'VN', 'Vietnamese đồng', 'VND', '₫', '+84', NULL, NULL, NULL),
(195, 'Yemen', 'YE', 'Yemeni rial', 'YER', '﷼', '+967', NULL, NULL, NULL),
(196, 'Zambia', 'ZM', 'Zambian kwacha', 'ZMW', 'ZK', '+260', NULL, NULL, NULL),
(197, 'Zimbabwe', 'ZW', 'Zimbabwean dollar', 'ZWL', '$', '+263', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
