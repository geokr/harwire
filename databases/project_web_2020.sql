-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2021 at 08:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_web_2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `entryID` int(11) NOT NULL,
  `harFileID` int(11) DEFAULT NULL,
  `serverIPAddress` text NOT NULL,
  `timings_wait` float NOT NULL,
  `startedDateTime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`entryID`, `harFileID`, `serverIPAddress`, `timings_wait`, `startedDateTime`) VALUES
(2929, 67, '168.119.36.212', 117.163, '2021-03-16T12:00:32.696Z'),
(2930, 67, '168.119.36.212', 4.036, '2021-03-16T12:00:33.107Z'),
(2931, 67, '168.119.36.212', 4.418, '2021-03-16T12:00:33.107Z'),
(2932, 67, '168.119.36.212', 0.639, '2021-03-16T12:00:33.107Z'),
(2933, 67, '168.119.36.212', 5.73, '2021-03-16T12:00:33.108Z'),
(2934, 67, '168.119.36.212', 5.864, '2021-03-16T12:00:33.108Z'),
(2935, 67, '168.119.36.212', 1.092, '2021-03-16T12:00:33.110Z'),
(2936, 67, '168.119.36.212', 1.003, '2021-03-16T12:00:33.127Z'),
(2937, 67, '168.119.36.212', 0.768, '2021-03-16T12:00:33.127Z'),
(2938, 67, '168.119.36.212', 2.575, '2021-03-16T12:00:33.226Z'),
(2939, 67, '168.119.36.212', 2.181, '2021-03-16T12:00:33.226Z'),
(2940, 67, '168.119.36.212', 2.626, '2021-03-16T12:00:33.227Z'),
(2941, 67, '168.119.36.212', 2.465, '2021-03-16T12:00:33.227Z'),
(2942, 67, '168.119.36.212', 2.269, '2021-03-16T12:00:33.228Z'),
(2943, 67, '168.119.36.212', 4.144, '2021-03-16T12:00:33.229Z'),
(2944, 67, '168.119.36.212', 0.517, '2021-03-16T12:00:33.279Z'),
(2945, 67, '168.119.36.212', 0.455, '2021-03-16T12:00:33.279Z'),
(2946, 67, '', 0, '2021-03-16T12:00:33.296Z'),
(2947, 67, '168.119.36.212', 1.978, '2021-03-16T12:00:33.422Z'),
(2948, 67, '168.119.36.212', 1.809, '2021-03-16T12:00:33.422Z'),
(2949, 67, '168.119.36.212', 1.888, '2021-03-16T12:00:33.422Z'),
(2950, 67, '168.119.36.212', 2.971, '2021-03-16T12:00:33.423Z'),
(2951, 67, '168.119.36.212', 5.318, '2021-03-16T12:00:33.424Z'),
(2952, 67, '168.119.36.212', 4.027, '2021-03-16T12:00:33.426Z'),
(2953, 67, '168.119.36.212', 67.721, '2021-03-16T12:00:33.426Z'),
(2954, 67, '168.119.36.212', 0.504, '2021-03-16T12:00:33.476Z'),
(2955, 67, '168.119.36.212', 2.349, '2021-03-16T12:00:33.477Z'),
(2956, 67, '168.119.36.212', 2.506, '2021-03-16T12:00:33.479Z'),
(2957, 67, '168.119.36.212', 86.263, '2021-03-16T12:00:33.551Z'),
(2958, 67, '168.119.36.212', 80.803, '2021-03-16T12:00:33.553Z'),
(2959, 67, '168.119.36.212', 165.277, '2021-03-16T12:00:33.553Z'),
(2960, 67, '168.119.36.212', 12.274, '2021-03-16T12:00:33.554Z'),
(2961, 67, '168.119.36.212', 157.28, '2021-03-16T12:00:33.556Z'),
(2962, 67, '168.119.36.212', 166.08, '2021-03-16T12:00:33.559Z'),
(2963, 67, '168.119.36.212', 166.108, '2021-03-16T12:00:33.560Z'),
(2964, 67, '168.119.36.212', 4.661, '2021-03-16T12:00:33.562Z'),
(2965, 67, '168.119.36.212', 165.516, '2021-03-16T12:00:33.562Z'),
(2966, 67, '168.119.36.212', 98.988, '2021-03-16T12:05:46.346Z'),
(2967, 67, '168.119.36.212', 101.594, '2021-03-16T12:05:46.348Z'),
(2968, 67, '168.119.36.212', 67.581, '2021-03-16T12:05:47.059Z'),
(2969, 67, '168.119.36.212', 87.561, '2021-03-16T12:05:47.059Z'),
(2970, 67, '168.119.36.212', 102.368, '2021-03-16T12:05:47.060Z'),
(2971, 67, '168.119.36.212', 118.575, '2021-03-16T12:05:47.060Z'),
(3925, 90, '[2606:4700:3037::6815:4837]', 39.039, '2021-08-28T15:49:06.904Z'),
(3926, 90, '[2606:4700:3037::6815:4837]', 62.958, '2021-08-28T15:49:07.006Z'),
(3927, 90, '[2606:4700:3037::6815:4837]', 72.681, '2021-08-28T15:49:07.007Z'),
(3928, 90, '[2606:4700:3037::6815:4837]', 176.958, '2021-08-28T15:49:07.007Z'),
(3929, 90, '', 0, '2021-08-28T15:49:07.007Z'),
(3930, 90, '[2606:4700:3037::6815:4837]', 43.18, '2021-08-28T15:49:07.232Z'),
(3931, 90, '[2606:4700:3037::6815:4837]', 57.706, '2021-08-28T15:49:07.377Z'),
(3932, 90, '[2606:4700:3037::6815:4837]', 66.43, '2021-08-28T15:49:07.378Z'),
(3933, 90, '[2606:4700:3037::6815:4837]', 71.647, '2021-08-28T15:49:07.378Z'),
(3934, 90, '[2606:4700:3037::6815:4837]', 79.427, '2021-08-28T15:49:07.380Z'),
(3935, 90, '[2606:4700:3037::6815:4837]', 133.026, '2021-08-28T15:49:07.507Z'),
(3936, 90, '[2606:4700:3037::6815:4837]', 35.813, '2021-08-28T15:49:07.619Z'),
(3937, 90, '[2606:4700:3037::6815:4837]', 0.087, '2021-08-28T15:49:08.294Z'),
(3938, 90, '[2606:4700:3037::6815:4837]', 0.065, '2021-08-28T15:49:08.295Z'),
(3939, 90, '[2606:4700:3037::6815:4837]', 0.692, '2021-08-28T15:49:08.295Z'),
(3940, 90, '', 0, '2021-08-28T15:49:08.295Z'),
(3941, 90, '[2606:4700:3037::6815:4837]', 0.094, '2021-08-28T15:49:08.356Z'),
(3942, 90, '[2606:4700:3037::6815:4837]', 0.133, '2021-08-28T15:49:08.459Z'),
(3943, 90, '[2606:4700:3037::6815:4837]', 2.418, '2021-08-28T15:49:08.550Z'),
(3944, 90, '[2606:4700:3037::6815:4837]', 0.127, '2021-08-28T15:49:08.567Z'),
(4554, 98, '168.119.36.212', 117.163, '2021-03-16T12:00:32.696Z'),
(4555, 98, '168.119.36.212', 4.036, '2021-03-16T12:00:33.107Z'),
(4556, 98, '168.119.36.212', 4.418, '2021-03-16T12:00:33.107Z'),
(4557, 98, '168.119.36.212', 0.639, '2021-03-16T12:00:33.107Z'),
(4558, 98, '168.119.36.212', 5.73, '2021-03-16T12:00:33.108Z'),
(4559, 98, '168.119.36.212', 5.864, '2021-03-16T12:00:33.108Z'),
(4560, 98, '168.119.36.212', 1.092, '2021-03-16T12:00:33.110Z'),
(4561, 98, '168.119.36.212', 1.003, '2021-03-16T12:00:33.127Z'),
(4562, 98, '168.119.36.212', 0.768, '2021-03-16T12:00:33.127Z'),
(4563, 98, '168.119.36.212', 2.575, '2021-03-16T12:00:33.226Z'),
(4564, 98, '168.119.36.212', 2.181, '2021-03-16T12:00:33.226Z'),
(4565, 98, '168.119.36.212', 2.626, '2021-03-16T12:00:33.227Z'),
(4566, 98, '168.119.36.212', 2.465, '2021-03-16T12:00:33.227Z'),
(4567, 98, '168.119.36.212', 2.269, '2021-03-16T12:00:33.228Z'),
(4568, 98, '168.119.36.212', 4.144, '2021-03-16T12:00:33.229Z'),
(4569, 98, '168.119.36.212', 0.517, '2021-03-16T12:00:33.279Z'),
(4570, 98, '168.119.36.212', 0.455, '2021-03-16T12:00:33.279Z'),
(4571, 98, '', 0, '2021-03-16T12:00:33.296Z'),
(4572, 98, '168.119.36.212', 1.978, '2021-03-16T12:00:33.422Z'),
(4573, 98, '168.119.36.212', 1.809, '2021-03-16T12:00:33.422Z'),
(4574, 98, '168.119.36.212', 1.888, '2021-03-16T12:00:33.422Z'),
(4575, 98, '168.119.36.212', 2.971, '2021-03-16T12:00:33.423Z'),
(4576, 98, '168.119.36.212', 5.318, '2021-03-16T12:00:33.424Z'),
(4577, 98, '168.119.36.212', 4.027, '2021-03-16T12:00:33.426Z'),
(4578, 98, '168.119.36.212', 67.721, '2021-03-16T12:00:33.426Z'),
(4579, 98, '168.119.36.212', 0.504, '2021-03-16T12:00:33.476Z'),
(4580, 98, '168.119.36.212', 2.349, '2021-03-16T12:00:33.477Z'),
(4581, 98, '168.119.36.212', 2.506, '2021-03-16T12:00:33.479Z'),
(4582, 98, '168.119.36.212', 86.263, '2021-03-16T12:00:33.551Z'),
(4583, 98, '168.119.36.212', 80.803, '2021-03-16T12:00:33.553Z'),
(4584, 98, '168.119.36.212', 165.277, '2021-03-16T12:00:33.553Z'),
(4585, 98, '168.119.36.212', 12.274, '2021-03-16T12:00:33.554Z'),
(4586, 98, '168.119.36.212', 157.28, '2021-03-16T12:00:33.556Z'),
(4587, 98, '168.119.36.212', 166.08, '2021-03-16T12:00:33.559Z'),
(4588, 98, '168.119.36.212', 166.108, '2021-03-16T12:00:33.560Z'),
(4589, 98, '168.119.36.212', 4.661, '2021-03-16T12:00:33.562Z'),
(4590, 98, '168.119.36.212', 165.516, '2021-03-16T12:00:33.562Z'),
(4591, 98, '168.119.36.212', 98.988, '2021-03-16T12:05:46.346Z'),
(4592, 98, '168.119.36.212', 101.594, '2021-03-16T12:05:46.348Z'),
(4593, 98, '168.119.36.212', 67.581, '2021-03-16T12:05:47.059Z'),
(4594, 98, '168.119.36.212', 87.561, '2021-03-16T12:05:47.059Z'),
(4595, 98, '168.119.36.212', 102.368, '2021-03-16T12:05:47.060Z'),
(4596, 98, '168.119.36.212', 118.575, '2021-03-16T12:05:47.060Z');

-- --------------------------------------------------------

--
-- Table structure for table `har_file`
--

CREATE TABLE `har_file` (
  `harFileID` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL,
  `noOfEntries` int(11) NOT NULL,
  `ISP` varchar(128) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `har_file`
--

INSERT INTO `har_file` (`harFileID`, `uploadDate`, `noOfEntries`, `ISP`, `city`, `userID`) VALUES
(67, '2021-09-10 12:37:34', 43, 'Ote SA', 'Patrai', 16),
(90, '2021-09-19 10:54:59', 20, 'Ote SA', 'Manolas', 16),
(98, '2021-09-23 05:14:44', 43, 'Ote SA', 'Patrai', 15);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `requestID` int(11) NOT NULL,
  `entryID` int(11) NOT NULL,
  `method` varchar(10) NOT NULL,
  `url` text NOT NULL,
  `content_type` text NOT NULL,
  `cache_control` text NOT NULL,
  `pragma` text NOT NULL,
  `expires` text NOT NULL,
  `age` text NOT NULL,
  `last_modified` text NOT NULL,
  `host` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`requestID`, `entryID`, `method`, `url`, `content_type`, `cache_control`, `pragma`, `expires`, `age`, `last_modified`, `host`) VALUES
(2092, 2929, 'GET', 'https://www.lawspot.gr/nomika-nea/tehniti-noimosyni-oi-7-vasikes-arhes-tis-eyropaikis-enosis-gia-tin-epiteyxi-axiopistis-tn', '', 'max-age=0', '', '', '', '', ''),
(2093, 2930, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_css/css__NPgUBQtz94L295rkO5UWCSIn_vvh4Mb-u9gSfsnI0Fc__WetlNNzfspADROoWIslEpgIe0dEpy3u2mE5BVHYGFo4__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.css', '', '', '', '', '', '', ''),
(2094, 2931, 'GET', 'https://www.lawspot.gr/sites/all/modules/euccx/js/yett.min.js.pagespeed.jm.Q4DFY5iJ_g.js', '', 'max-stale=180', '', '', '', '', ''),
(2095, 2932, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__7TonywGiztdZ758SJELMRpryhshntr4wDSJJwiq_nQ4__dV_IePzmDCowNcK4gVjOwvIoxoNJDPcdN7Y1JHRe3TA__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm.yqFM2ku06K.js', '', '', '', '', '', '', ''),
(2096, 2933, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__2nu-f_-MK33dRIQaWIdLP84wUiGzIZwBgGaMto4f2kY__dpraG3ksIfWtSoV_HQmrLzw-0oyXIBaj27mKny_LovU__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm.yam4BDUbrg.js', '', '', '', '', '', '', ''),
(2097, 2934, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__oBiL5WAiXbTAZ1xdxJAXUfcsTagstxFEkl5kz-0WMOk__MMYnwydJOWb8kHZgW2k9oSa5xzR8orBItERqFhYIhXo__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm._GNrp8dYI1.js', '', '', '', '', '', '', ''),
(2098, 2935, 'GET', 'https://www.lawspot.gr/pagespeed_static/1.JiBnMqyl6S.gif', '', '', '', '', '', '', ''),
(2099, 2936, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__v_4yJHVtE6RUu6yqhWqVJhN8cT82FDxs_Va_i0KPQGA___KUAEsLwjVY8b9aazeewCHQlrDYjy9O379NZ1kVtHZ8__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm.RnLcfBQmab.js', '', 'max-stale=1', '', '', '', '', ''),
(2100, 2937, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__9acJCgcLmygjH1UtJGgbbxhaDSQQ6aDaWJ1tcbYfGl4__U-wsRchSU9Ao8JbagZ30dS0NzZO385a0SMA7ER4h_TU__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm.x5FQJ7uO0c.js', '', '', '', '', '', '', ''),
(2101, 2938, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/google-fonts/roboto-slab/roboto-slab-v7-latin_greek-ext-regular.woff2', '', '', '', '', '', '', ''),
(2102, 2939, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/google-fonts/roboto-slab/roboto-slab-v7-latin_greek-ext-700.woff2', '', '', '', '', '', '', ''),
(2103, 2940, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/font-awesome/webfonts/fa-regular-400.woff2', '', '', '', '', '', '', ''),
(2104, 2941, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/google-fonts/roboto/roboto-v16-latin_greek-ext_greek-900.woff2', '', '', '', '', '', '', ''),
(2105, 2942, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/font-awesome/webfonts/fa-brands-400.woff2', '', '', '', '', '', '', ''),
(2106, 2943, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/font-awesome/webfonts/fa-light-300.woff2', '', '', '', '', '', '', ''),
(2107, 2944, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/font-awesome/webfonts/fa-solid-900.woff2', '', '', '', '', '', '', ''),
(2108, 2945, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/google-fonts/roboto/roboto-v16-latin_greek-ext_greek-700.woff2', '', '', '', '', '', '', ''),
(2109, 2946, 'GET', 'https://www.googletagmanager.com/gtm.js?id=GTM-NJGKM4T', '', '', '', '', '', '', ''),
(2110, 2947, 'GET', 'https://www.lawspot.gr/sites/all/modules/lazyloader/image_placeholder.gif', '', '', '', '', '', '', ''),
(2111, 2948, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_870x373/public/images/nea/nees-texnologies/ai-human.jpg', '', '', '', '', '', '', ''),
(2112, 2949, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/nees-texnologies/ai-human.jpg', '', '', '', '', '', '', ''),
(2113, 2950, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/nees-texnologies/ai.jpg', '', '', '', '', '', '', ''),
(2114, 2951, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/europe-international/eu-data.jpg', '', '', '', '', '', '', ''),
(2115, 2952, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/nees-texnologies/smart-car.jpg', '', '', '', '', '', '', ''),
(2116, 2953, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/europe-international/eu-keyboard.jpg', '', '', '', '', '', '', ''),
(2117, 2954, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/images/logo.svg', '', '', '', '', '', '', ''),
(2118, 2955, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/lawyer_logos/xphototassis_new2019_5.jpg.pagespeed.ic.vIzvp7nW4l.webp', '', '', '', '', '', '', ''),
(2119, 2956, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/lawyer_logos/xvk.png.pagespeed.ic.84JrMBXlA5.webp', '', '', '', '', '', '', ''),
(2120, 2957, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/metaxas250.gif', '', '', '', '', '', '', ''),
(2121, 2958, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/lawyer_logos/x20180419_141143.jpg.pagespeed.ic.sPIWWBrAzJ.webp', '', '', '', '', '', '', ''),
(2122, 2959, 'GET', 'https://www.lawspot.gr/sites/default/files/favicon.ico', '', 'no-cache', 'no-cache', '', '', '', ''),
(2123, 2960, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/mpakopoulos728.gif', '', '', '', '', '', '', ''),
(2124, 2961, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/revolidis468.gif', '', '', '', '', '', '', ''),
(2125, 2962, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/xiglezakis.jpg.pagespeed.ic.GzCTvSLlIQ.webp', '', '', '', '', '', '', ''),
(2126, 2963, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/revolidis728_0.gif', '', '', '', '', '', '', ''),
(2127, 2964, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/xcybercrime.png.pagespeed.ic.0nssxWsxE8.webp', '', '', '', '', '', '', ''),
(2128, 2965, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/lawyer_logos/xdscf8672.jpg.pagespeed.ic.FtEEIcKvfL.webp', '', '', '', '', '', '', ''),
(2129, 2966, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/images/nea/iatrika/woman-mask.jpg', '', '', '', '', '', '', ''),
(2130, 2967, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/images/nea/dikastikes-apofaseis/gavel_judge-1.jpg', '', 'max-stale=300', '', '', '', '', ''),
(2131, 2968, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/blog_images/rent_1.jpg', '', '', '', '', '', '', ''),
(2132, 2969, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/blog_images/man.jpg', '', '', '', '', '', '', ''),
(2133, 2970, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/blog_images/dsc00847_1.jpg', '', '', '', '', '', '', ''),
(2134, 2971, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/blog_images/endikofanis.jpg', '', '', '', '', '', '', ''),
(3088, 3925, 'GET', 'https://www.autohotkey.com/docs/AutoHotkey.htm', '', '', '', '', '', '', ''),
(3089, 3926, 'GET', 'https://www.autohotkey.com/docs/static/theme.css', '', '', '', '', '', '', ''),
(3090, 3927, 'GET', 'https://www.autohotkey.com/docs/static/content.js', '', '', '', '', '', '', ''),
(3091, 3928, 'GET', 'https://www.autohotkey.com/docs/static/ahk_logo.svg', '', '', '', '', '', '', ''),
(3092, 3929, 'GET', 'https://static.cloudflareinsights.com/beacon.min.js', '', '', '', '', '', '', ''),
(3093, 3930, 'GET', 'https://www.autohotkey.com/docs/static/content.css', '', '', '', '', '', '', ''),
(3094, 3931, 'GET', 'https://www.autohotkey.com/docs/static/source/data_translate.js', '', '', '', '', '', '', ''),
(3095, 3932, 'GET', 'https://www.autohotkey.com/docs/static/source/data_toc.js', '', '', '', '', '', '', ''),
(3096, 3933, 'GET', 'https://www.autohotkey.com/docs/static/source/data_index.js', '', '', '', '', '', '', ''),
(3097, 3934, 'GET', 'https://www.autohotkey.com/docs/static/source/data_search.js', '', '', '', '', '', '', ''),
(3098, 3935, 'GET', 'https://www.autohotkey.com/docs/AutoHotkey.htm', '', '', '', '', '', '', ''),
(3099, 3936, 'GET', 'https://www.autohotkey.com/docs/static/source/data_deprecate.js', '', '', '', '', '', '', ''),
(3100, 3937, 'GET', 'https://www.autohotkey.com/docs/static/theme.css', '', '', '', '', '', '', ''),
(3101, 3938, 'GET', 'https://www.autohotkey.com/docs/static/content.js', '', '', '', '', '', '', ''),
(3102, 3939, 'GET', 'https://www.autohotkey.com/docs/static/ahk_logo.svg', '', '', '', '', '', '', ''),
(3103, 3940, 'GET', 'https://static.cloudflareinsights.com/beacon.min.js', '', '', '', '', '', '', ''),
(3104, 3941, 'GET', 'https://www.autohotkey.com/docs/static/content.css', '', '', '', '', '', '', ''),
(3105, 3942, 'GET', 'https://www.autohotkey.com/docs/static/source/data_translate.js', '', '', '', '', '', '', ''),
(3106, 3943, 'GET', 'https://www.autohotkey.com/favicon.ico', '', '', '', '', '', '', ''),
(3107, 3944, 'GET', 'https://www.autohotkey.com/docs/static/source/data_index.js', '', '', '', '', '', '', ''),
(3717, 4554, 'GET', 'https://www.lawspot.gr/nomika-nea/tehniti-noimosyni-oi-7-vasikes-arhes-tis-eyropaikis-enosis-gia-tin-epiteyxi-axiopistis-tn', '', 'max-age=0', '', '', '', '', ''),
(3718, 4555, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_css/css__NPgUBQtz94L295rkO5UWCSIn_vvh4Mb-u9gSfsnI0Fc__WetlNNzfspADROoWIslEpgIe0dEpy3u2mE5BVHYGFo4__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.css', '', '', '', '', '', '', ''),
(3719, 4556, 'GET', 'https://www.lawspot.gr/sites/all/modules/euccx/js/yett.min.js.pagespeed.jm.Q4DFY5iJ_g.js', '', '', '', '', '', '', ''),
(3720, 4557, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__7TonywGiztdZ758SJELMRpryhshntr4wDSJJwiq_nQ4__dV_IePzmDCowNcK4gVjOwvIoxoNJDPcdN7Y1JHRe3TA__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm.yqFM2ku06K.js', '', '', '', '', '', '', ''),
(3721, 4558, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__2nu-f_-MK33dRIQaWIdLP84wUiGzIZwBgGaMto4f2kY__dpraG3ksIfWtSoV_HQmrLzw-0oyXIBaj27mKny_LovU__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm.yam4BDUbrg.js', '', '', '', '', '', '', ''),
(3722, 4559, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__oBiL5WAiXbTAZ1xdxJAXUfcsTagstxFEkl5kz-0WMOk__MMYnwydJOWb8kHZgW2k9oSa5xzR8orBItERqFhYIhXo__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm._GNrp8dYI1.js', '', '', '', '', '', '', ''),
(3723, 4560, 'GET', 'https://www.lawspot.gr/pagespeed_static/1.JiBnMqyl6S.gif', '', '', '', '', '', '', ''),
(3724, 4561, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__v_4yJHVtE6RUu6yqhWqVJhN8cT82FDxs_Va_i0KPQGA___KUAEsLwjVY8b9aazeewCHQlrDYjy9O379NZ1kVtHZ8__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm.RnLcfBQmab.js', '', '', '', '', '', '', ''),
(3725, 4562, 'GET', 'https://www.lawspot.gr/sites/default/files/advagg_js/js__9acJCgcLmygjH1UtJGgbbxhaDSQQ6aDaWJ1tcbYfGl4__U-wsRchSU9Ao8JbagZ30dS0NzZO385a0SMA7ER4h_TU__UFSW1th06FWXkuTxVvZmGJ8cVoanduWMiUISzGq-KYU.js.pagespeed.jm.x5FQJ7uO0c.js', '', '', '', '', '', '', ''),
(3726, 4563, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/google-fonts/roboto-slab/roboto-slab-v7-latin_greek-ext-regular.woff2', '', '', '', '', '', '', ''),
(3727, 4564, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/google-fonts/roboto-slab/roboto-slab-v7-latin_greek-ext-700.woff2', '', '', '', '', '', '', ''),
(3728, 4565, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/font-awesome/webfonts/fa-regular-400.woff2', '', '', '', '', '', '', ''),
(3729, 4566, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/google-fonts/roboto/roboto-v16-latin_greek-ext_greek-900.woff2', '', '', '', '', '', '', ''),
(3730, 4567, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/font-awesome/webfonts/fa-brands-400.woff2', '', '', '', '', '', '', ''),
(3731, 4568, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/font-awesome/webfonts/fa-light-300.woff2', '', '', '', '', '', '', ''),
(3732, 4569, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/font-awesome/webfonts/fa-solid-900.woff2', '', '', '', '', '', '', ''),
(3733, 4570, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/resources/google-fonts/roboto/roboto-v16-latin_greek-ext_greek-700.woff2', '', '', '', '', '', '', ''),
(3734, 4571, 'GET', 'https://www.googletagmanager.com/gtm.js?id=GTM-NJGKM4T', '', '', '', '', '', '', ''),
(3735, 4572, 'GET', 'https://www.lawspot.gr/sites/all/modules/lazyloader/image_placeholder.gif', '', '', '', '', '', '', ''),
(3736, 4573, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_870x373/public/images/nea/nees-texnologies/ai-human.jpg', '', '', '', '', '', '', ''),
(3737, 4574, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/nees-texnologies/ai-human.jpg', '', '', '', '', '', '', ''),
(3738, 4575, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/nees-texnologies/ai.jpg', '', '', '', '', '', '', ''),
(3739, 4576, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/europe-international/eu-data.jpg', '', '', '', '', '', '', ''),
(3740, 4577, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/nees-texnologies/smart-car.jpg', '', '', '', '', '', '', ''),
(3741, 4578, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/images/nea/europe-international/eu-keyboard.jpg', '', '', '', '', '', '', ''),
(3742, 4579, 'GET', 'https://www.lawspot.gr/sites/all/themes/lspt/images/logo.svg', '', '', '', '', '', '', ''),
(3743, 4580, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/lawyer_logos/xphototassis_new2019_5.jpg.pagespeed.ic.vIzvp7nW4l.webp', '', '', '', '', '', '', ''),
(3744, 4581, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/lawyer_logos/xvk.png.pagespeed.ic.84JrMBXlA5.webp', '', '', '', '', '', '', ''),
(3745, 4582, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/metaxas250.gif', '', '', '', '', '', '', ''),
(3746, 4583, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/lawyer_logos/x20180419_141143.jpg.pagespeed.ic.sPIWWBrAzJ.webp', '', '', '', '', '', '', ''),
(3747, 4584, 'GET', 'https://www.lawspot.gr/sites/default/files/favicon.ico', '', 'no-cache', 'no-cache', '', '', '', ''),
(3748, 4585, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/mpakopoulos728.gif', '', '', '', '', '', '', ''),
(3749, 4586, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/revolidis468.gif', '', '', '', '', '', '', ''),
(3750, 4587, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/xiglezakis.jpg.pagespeed.ic.GzCTvSLlIQ.webp', '', '', '', '', '', '', ''),
(3751, 4588, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/revolidis728_0.gif', '', '', '', '', '', '', ''),
(3752, 4589, 'GET', 'https://www.lawspot.gr/sites/default/files/partner_images/xcybercrime.png.pagespeed.ic.0nssxWsxE8.webp', '', '', '', '', '', '', ''),
(3753, 4590, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_80x80/public/lawyer_logos/xdscf8672.jpg.pagespeed.ic.FtEEIcKvfL.webp', '', '', '', '', '', '', ''),
(3754, 4591, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/images/nea/iatrika/woman-mask.jpg', '', '', '', '', '', '', ''),
(3755, 4592, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/images/nea/dikastikes-apofaseis/gavel_judge-1.jpg', '', '', '', '', '', '', ''),
(3756, 4593, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/blog_images/rent_1.jpg', '', '', '', '', '', '', ''),
(3757, 4594, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/blog_images/man.jpg', '', '', '', '', '', '', ''),
(3758, 4595, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/blog_images/dsc00847_1.jpg', '', '', '', '', '', '', ''),
(3759, 4596, 'GET', 'https://www.lawspot.gr/sites/default/files/styles/ai_-_310x175/public/blog_images/endikofanis.jpg', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `responseID` int(11) NOT NULL,
  `entryID` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `statusText` text NOT NULL,
  `content_type` text NOT NULL,
  `cache_control` text NOT NULL,
  `pragma` text NOT NULL,
  `expires` text NOT NULL,
  `age` text NOT NULL,
  `last_modified` text NOT NULL,
  `host` text NOT NULL,
  `q5_age` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`responseID`, `entryID`, `status`, `statusText`, `content_type`, `cache_control`, `pragma`, `expires`, `age`, `last_modified`, `host`, `q5_age`) VALUES
(1920, 2929, 200, '', 'text/html; charset=utf-8', 'max-age=0, no-cache', '', '', '', '', '', 0),
(1921, 2930, 200, '', 'text/css', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 04 Feb 2021 16:44:03 GMT', '', 39.803125),
(1922, 2931, 200, '', 'application/javascript', 'max-age=31536000', '', 'Thu, 10 Mar 2022 00:27:28 GMT', '', 'Wed, 10 Mar 2021 00:27:28 GMT', '', 6.4813078703704),
(1923, 2932, 200, '', 'application/javascript', 'max-age=31536000', '', 'Fri, 04 Mar 2022 05:46:54 GMT', '', 'Thu, 04 Mar 2021 05:46:54 GMT', '', 12.259479166667),
(1924, 2933, 200, '', 'application/javascript', 'max-age=31536000', '', 'Sat, 08 Jan 2022 02:34:57 GMT', '', 'Fri, 08 Jan 2021 02:34:57 GMT', '', 67.392777777778),
(1925, 2934, 200, '', 'application/javascript', 'max-age=31536000', '', 'Tue, 18 Jan 2022 07:58:19 GMT', '', 'Mon, 18 Jan 2021 07:58:19 GMT', '', 57.168217592593),
(1926, 2935, 200, '', 'image/gif', 'max-age=32536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Tue, 16 Mar 2021 11:47:08 GMT', '', 0.0093171296296296),
(1927, 2936, 200, '', 'application/javascript', 'max-age=31536000', '', 'Wed, 09 Mar 2022 13:00:08 GMT', '', 'Tue, 09 Mar 2021 13:00:08 GMT', '', 6.9586226851852),
(1928, 2937, 200, '', 'application/javascript', 'max-age=31536000', '', 'Mon, 14 Feb 2022 09:50:05 GMT', '', 'Sun, 14 Feb 2021 09:50:05 GMT', '', 30.090601851852),
(1929, 2938, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:45 GMT', '', 495.16652777778),
(1930, 2939, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:45 GMT', '', 495.16652777778),
(1931, 2940, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(1932, 2941, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:45 GMT', '', 495.16652777778),
(1933, 2942, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(1934, 2943, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(1935, 2944, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(1936, 2945, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:45 GMT', '', 495.16652777778),
(1937, 2946, 0, '', '', '', '', '', '', '', '', 0),
(1938, 2947, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 02 May 2019 16:44:57 GMT', '', 683.8025),
(1939, 2948, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Fri, 30 Oct 2020 11:44:19 GMT', '', 137.01127314815),
(1940, 2949, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Fri, 30 Oct 2020 11:44:12 GMT', '', 137.01135416667),
(1941, 2950, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Fri, 30 Oct 2020 11:44:11 GMT', '', 137.01136574074),
(1942, 2951, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:54:38 GMT', '', 'Fri, 30 Oct 2020 11:44:11 GMT', '', 137.01136574074),
(1943, 2952, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:54:38 GMT', '', 'Fri, 30 Oct 2020 11:44:12 GMT', '', 137.01135416667),
(1944, 2953, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Fri, 30 Oct 2020 11:44:11 GMT', '', 137.01136574074),
(1945, 2954, 200, '', 'image/svg+xml', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(1946, 2955, 200, '', 'image/webp', 'max-age=31536000', '', 'Sat, 08 Jan 2022 03:41:24 GMT', '', 'Fri, 08 Jan 2021 03:41:24 GMT', '', 67.346631944444),
(1947, 2956, 200, '', 'image/webp', 'max-age=31536000', '', 'Sat, 08 Jan 2022 04:19:03 GMT', '', 'Fri, 08 Jan 2021 04:19:03 GMT', '', 67.320486111111),
(1948, 2957, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Mon, 01 Mar 2021 13:33:00 GMT', '', 14.935798611111),
(1949, 2958, 200, '', 'image/webp', 'max-age=31536000', '', 'Sat, 08 Jan 2022 03:43:38 GMT', '', 'Fri, 08 Jan 2021 03:43:38 GMT', '', 67.345081018519),
(1950, 2959, 200, '', 'image/x-icon', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Sun, 01 Oct 2017 11:48:03 GMT', '', 1262.0086805556),
(1951, 2960, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Tue, 16 Mar 2021 11:34:44 GMT', '', 0.017928240740741),
(1952, 2961, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Tue, 16 Mar 2021 11:51:56 GMT', '', 0.0059837962962963),
(1953, 2962, 200, '', 'image/webp', 'max-age=31536000', '', 'Tue, 08 Feb 2022 10:14:46 GMT', '', 'Mon, 08 Feb 2021 10:14:46 GMT', '', 36.073460648148),
(1954, 2963, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Tue, 16 Mar 2021 11:55:48 GMT', '', 0.0032986111111111),
(1955, 2964, 200, '', 'image/webp', 'max-age=31536000', '', 'Tue, 15 Mar 2022 18:42:48 GMT', '', 'Mon, 15 Mar 2021 18:42:48 GMT', '', 0.72065972222222),
(1956, 2965, 200, '', 'image/webp', 'max-age=31536000', '', 'Sat, 08 Jan 2022 03:01:34 GMT', '', 'Fri, 08 Jan 2021 03:01:34 GMT', '', 67.374293981481),
(1957, 2966, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:46 GMT', '', 'Fri, 30 Oct 2020 11:43:49 GMT', '', 137.01524305556),
(1958, 2967, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:46 GMT', '', 'Fri, 30 Oct 2020 11:43:50 GMT', '', 137.01523148148),
(1959, 2968, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:47 GMT', '', 'Fri, 30 Oct 2020 11:43:46 GMT', '', 137.01528935185),
(1960, 2969, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:47 GMT', '', 'Fri, 30 Oct 2020 11:43:46 GMT', '', 137.01528935185),
(1961, 2970, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:47 GMT', '', 'Fri, 30 Oct 2020 11:43:46 GMT', '', 137.01528935185),
(1962, 2971, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:47 GMT', '', 'Fri, 30 Oct 2020 11:43:46 GMT', '', 137.01528935185),
(2916, 3925, 200, '', 'text/html', 'max-age=43200', '', '', '22013', 'Sat, 08 May 2021 04:02:02 GMT', '', 112.49103009259),
(2917, 3926, 200, '', 'text/css', 'max-age=604800', '', '', '358047', 'Tue, 09 Mar 2021 21:20:02 GMT', '', 171.77020833333),
(2918, 3927, 200, '', 'application/javascript', 'max-age=604800', '', '', '358047', 'Sun, 25 Jul 2021 00:22:02 GMT', '', 34.643819444444),
(2919, 3928, 200, '', 'image/svg+xml', 'max-age=14400', '', '', '', 'Mon, 10 Aug 2020 09:12:01 GMT', '', 383.27577546296),
(2920, 3929, 0, '', '', '', '', '', '', '', '', 0),
(2921, 3930, 200, '', 'text/css', 'max-age=604800', '', '', '358047', 'Mon, 01 Mar 2021 05:56:02 GMT', '', 180.411875),
(2922, 3931, 200, '', 'application/javascript', 'max-age=604800', '', '', '358046', 'Sun, 25 Jul 2021 00:22:02 GMT', '', 34.643819444444),
(2923, 3932, 200, '', 'application/javascript', 'max-age=604800', '', '', '358046', 'Sun, 31 Jan 2021 09:46:02 GMT', '', 209.2521412037),
(2924, 3933, 200, '', 'application/javascript', 'max-age=604800', '', '', '358046', 'Sun, 25 Jul 2021 00:22:02 GMT', '', 34.643819444444),
(2925, 3934, 200, '', 'application/javascript', 'max-age=604800', '', '', '358046', 'Sat, 08 May 2021 04:02:02 GMT', '', 112.49103009259),
(2926, 3935, 200, '', 'text/html', 'max-age=43200', '', '', '22014', 'Sat, 08 May 2021 04:02:02 GMT', '', 112.49103009259),
(2927, 3936, 200, '', 'application/javascript', 'max-age=604800', '', '', '358046', 'Sun, 31 Jan 2021 09:46:02 GMT', '', 209.2521412037),
(2928, 3937, 200, '', 'text/css', 'max-age=604800', '', '', '358047', 'Tue, 09 Mar 2021 21:20:02 GMT', '', 171.77020833333),
(2929, 3938, 200, '', 'application/javascript', 'max-age=604800', '', '', '358047', 'Sun, 25 Jul 2021 00:22:02 GMT', '', 34.643819444444),
(2930, 3939, 200, '', 'image/svg+xml', 'max-age=14400', '', '', '', 'Mon, 10 Aug 2020 09:12:01 GMT', '', 383.27577546296),
(2931, 3940, 0, '', '', '', '', '', '', '', '', 0),
(2932, 3941, 200, '', 'text/css', 'max-age=604800', '', '', '358047', 'Mon, 01 Mar 2021 05:56:02 GMT', '', 180.411875),
(2933, 3942, 200, '', 'application/javascript', 'max-age=604800', '', '', '358046', 'Sun, 25 Jul 2021 00:22:02 GMT', '', 34.643819444444),
(2934, 3943, 200, '', 'image/vnd.microsoft.icon', 'max-age=2592000', '', '', '358042', 'Fri, 01 Jan 2016 23:01:02 GMT', '', 2065.7000694444),
(2935, 3944, 200, '', 'application/javascript', 'max-age=604800', '', '', '358046', 'Sun, 25 Jul 2021 00:22:02 GMT', '', 34.643819444444),
(3545, 4554, 200, '', 'text/html; charset=utf-8', 'max-age=0, no-cache', '', '', '', '', '', 0),
(3546, 4555, 200, '', 'text/css', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 04 Feb 2021 16:44:03 GMT', '', 39.803125),
(3547, 4556, 200, '', 'application/javascript', 'max-age=31536000', '', 'Thu, 10 Mar 2022 00:27:28 GMT', '', 'Wed, 10 Mar 2021 00:27:28 GMT', '', 6.4813078703704),
(3548, 4557, 200, '', 'application/javascript', 'max-age=31536000', '', 'Fri, 04 Mar 2022 05:46:54 GMT', '', 'Thu, 04 Mar 2021 05:46:54 GMT', '', 12.259479166667),
(3549, 4558, 200, '', 'application/javascript', 'max-age=31536000', '', 'Sat, 08 Jan 2022 02:34:57 GMT', '', 'Fri, 08 Jan 2021 02:34:57 GMT', '', 67.392777777778),
(3550, 4559, 200, '', 'application/javascript', 'max-age=31536000', '', 'Tue, 18 Jan 2022 07:58:19 GMT', '', 'Mon, 18 Jan 2021 07:58:19 GMT', '', 57.168217592593),
(3551, 4560, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Tue, 16 Mar 2021 11:47:08 GMT', '', 0.0093171296296296),
(3552, 4561, 200, '', 'application/javascript', 'max-age=31536000', '', 'Wed, 09 Mar 2022 13:00:08 GMT', '', 'Tue, 09 Mar 2021 13:00:08 GMT', '', 6.9586226851852),
(3553, 4562, 200, '', 'application/javascript', 'max-age=31536000', '', 'Mon, 14 Feb 2022 09:50:05 GMT', '', 'Sun, 14 Feb 2021 09:50:05 GMT', '', 30.090601851852),
(3554, 4563, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:45 GMT', '', 495.16652777778),
(3555, 4564, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:45 GMT', '', 495.16652777778),
(3556, 4565, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(3557, 4566, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:45 GMT', '', 495.16652777778),
(3558, 4567, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(3559, 4568, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(3560, 4569, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(3561, 4570, 200, '', 'font/woff2', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:45 GMT', '', 495.16652777778),
(3562, 4571, 0, '', '', '', '', '', '', '', '', 0),
(3563, 4572, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 02 May 2019 16:44:57 GMT', '', 683.8025),
(3564, 4573, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Fri, 30 Oct 2020 11:44:19 GMT', '', 137.01127314815),
(3565, 4574, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Fri, 30 Oct 2020 11:44:12 GMT', '', 137.01135416667),
(3566, 4575, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Fri, 30 Oct 2020 11:44:11 GMT', '', 137.01136574074),
(3567, 4576, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:54:38 GMT', '', 'Fri, 30 Oct 2020 11:44:11 GMT', '', 137.01136574074),
(3568, 4577, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:54:38 GMT', '', 'Fri, 30 Oct 2020 11:44:12 GMT', '', 137.01135416667),
(3569, 4578, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Fri, 30 Oct 2020 11:44:11 GMT', '', 137.01136574074),
(3570, 4579, 200, '', 'image/svg+xml', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Thu, 07 Nov 2019 08:00:44 GMT', '', 495.16653935185),
(3571, 4580, 200, '', 'image/webp', 'max-age=31536000', '', 'Sat, 08 Jan 2022 03:41:24 GMT', '', 'Fri, 08 Jan 2021 03:41:24 GMT', '', 67.346631944444),
(3572, 4581, 200, '', 'image/webp', 'max-age=31536000', '', 'Sat, 08 Jan 2022 04:19:03 GMT', '', 'Fri, 08 Jan 2021 04:19:03 GMT', '', 67.320486111111),
(3573, 4582, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Mon, 01 Mar 2021 13:33:00 GMT', '', 14.935798611111),
(3574, 4583, 200, '', 'image/webp', 'max-age=31536000', '', 'Sat, 08 Jan 2022 03:43:38 GMT', '', 'Fri, 08 Jan 2021 03:43:38 GMT', '', 67.345081018519),
(3575, 4584, 200, '', 'image/x-icon', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Sun, 01 Oct 2017 11:48:03 GMT', '', 1262.0086805556),
(3576, 4585, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 11:47:08 GMT', '', 'Tue, 16 Mar 2021 11:34:44 GMT', '', 0.017928240740741),
(3577, 4586, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Tue, 16 Mar 2021 11:51:56 GMT', '', 0.0059837962962963),
(3578, 4587, 200, '', 'image/webp', 'max-age=31536000', '', 'Tue, 08 Feb 2022 10:14:46 GMT', '', 'Mon, 08 Feb 2021 10:14:46 GMT', '', 36.073460648148),
(3579, 4588, 200, '', 'image/gif', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:00:33 GMT', '', 'Tue, 16 Mar 2021 11:55:48 GMT', '', 0.0032986111111111),
(3580, 4589, 200, '', 'image/webp', 'max-age=31536000', '', 'Tue, 15 Mar 2022 18:42:48 GMT', '', 'Mon, 15 Mar 2021 18:42:48 GMT', '', 0.72065972222222),
(3581, 4590, 200, '', 'image/webp', 'max-age=31536000', '', 'Sat, 08 Jan 2022 03:01:34 GMT', '', 'Fri, 08 Jan 2021 03:01:34 GMT', '', 67.374293981481),
(3582, 4591, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:46 GMT', '', 'Fri, 30 Oct 2020 11:43:49 GMT', '', 137.01524305556),
(3583, 4592, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:46 GMT', '', 'Fri, 30 Oct 2020 11:43:50 GMT', '', 137.01523148148),
(3584, 4593, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:47 GMT', '', 'Fri, 30 Oct 2020 11:43:46 GMT', '', 137.01528935185),
(3585, 4594, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:47 GMT', '', 'Fri, 30 Oct 2020 11:43:46 GMT', '', 137.01528935185),
(3586, 4595, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:47 GMT', '', 'Fri, 30 Oct 2020 11:43:46 GMT', '', 137.01528935185),
(3587, 4596, 200, '', 'image/jpeg', 'max-age=31536000', '', 'Wed, 16 Mar 2022 12:05:47 GMT', '', 'Fri, 30 Oct 2020 11:43:46 GMT', '', 137.01528935185);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL,
  `usersLevel` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwd`, `usersLevel`) VALUES
(15, 'Eva Brown', 'eva@here.com', 'evelyn', '$2y$10$rhxxdatFTAaiaOJ7LwgVyu.EU67QBGIGIeMPWQRDhB4obSEpoXXa.', 0),
(16, 'Random Uzer', 'uzer@admin.com', 'Admin', '$2y$10$/IZJXyrl5P4pFyXGw5YDuer1jMgpPTpeLiLGTUBYQ2YmKO.hDvFtG', 1),
(20, 'John Johnson', 'jj@email.com', 'jj', '$2y$10$o56L/rF45Wfwb4yz2ikppuEXDCbeA4.2rplp9GiKvfegkZnc3OjCS', 0),
(21, 'Roger Wars', 'roger@stars.com', 'roger', '$2y$10$LiqAlEwtX7W8Vnr5WN/w6uobCWpoOd9rBuxVDLcYx7y1U4IbhZ3Iy', 0),
(22, 'Georgia K', 'georgia@gmail.com', 'georgia', '$2y$10$pAXsAdkqPeVxjRrvcqfKiut3tpUcsjvaV16mMg4fEk5JLUSyvJNC.', 0),
(23, 'mark', 'mark@email.com', 'mark', '$2y$10$rOnJSN8IB0iPggFXi9i7SecAQMBZ9pNbQyb0a9XgFtZnmDd30xfMS', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`entryID`),
  ADD KEY `harFileID` (`harFileID`);

--
-- Indexes for table `har_file`
--
ALTER TABLE `har_file`
  ADD PRIMARY KEY (`harFileID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`requestID`),
  ADD KEY `entryID` (`entryID`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`responseID`),
  ADD KEY `entryID link1` (`entryID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entries`
--
ALTER TABLE `entries`
  MODIFY `entryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4597;

--
-- AUTO_INCREMENT for table `har_file`
--
ALTER TABLE `har_file`
  MODIFY `harFileID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `requestID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3760;

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `responseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3588;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `harFileID link` FOREIGN KEY (`harFileID`) REFERENCES `har_file` (`harFileID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `har_file`
--
ALTER TABLE `har_file`
  ADD CONSTRAINT `UserID link` FOREIGN KEY (`userID`) REFERENCES `users` (`usersId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `UserID link2` FOREIGN KEY (`entryID`) REFERENCES `entries` (`entryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `entryID link1` FOREIGN KEY (`entryID`) REFERENCES `entries` (`entryID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
