-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 19 Αυγ 2021 στις 15:44:08
-- Έκδοση διακομιστή: 10.4.18-MariaDB
-- Έκδοση PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `hotel`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `telephone` int(10) DEFAULT NULL,
  `land` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` text DEFAULT NULL,
  `text` text NOT NULL,
  `checkbox` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `contact`
--

INSERT INTO `contact` (`id`, `name`, `telephone`, `land`, `email`, `text`, `checkbox`, `date`, `approval`) VALUES
(5, 'Dimitrios', 2147483647, 'Αυστρία', 'jvortelinas@gmail.com', 'jnyjnyrfn', '', '2021-05-31 11:10:10', 'Allowed'),
(6, 'Dimitrios', 2147483647, 'Αυστρία', 'jvortelinas@gmail.com', 'httht', '', '2021-05-31 11:07:02', 'Allowed'),
(7, 'Dimitrios Vortelinas', 2147483647, 'Αυστρία', 'jvortelinas@gmail.com', 'm ghm gh', '1', '2021-05-31 11:07:33', 'Not Allowed'),
(8, 'Dimitrios Vortelinas', 2147483647, 'Αυστρία', 'jvortelinas@gmail.com', 'fffffffffffffffffffff', '1', '2021-05-31 10:32:00', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `newsletterlog`
--

INSERT INTO `newsletterlog` (`id`, `title`, `subject`, `news`) VALUES
(4, '', '', ''),
(5, 'DIMITRIOS', 'tht', 'vxv x vbxcf x'),
(6, 'athens', 'tht', 'ggegegegeg'),
(7, 'DIMITRIOS', '', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(2, 'Miss.', '?????????', 'Dimitrios', 'Deluxe Room', 'Triple', 1, '2021-05-30', '2021-05-30', 0.00, 0.00, 0.00, 'Breakfast', 0.00, 0),
(11, 'Miss.', '???????', 'Dimitrios', 'Superior Room', 'Single', 1, '2021-05-31', '2021-06-03', 960.00, 969.60, 0.00, 'Room only', 9.60, 3),
(12, 'Dr.', '???????', 'Dimitrios', 'Deluxe Room', 'Single', 1, '2021-05-31', '2021-06-05', 1100.00, 1133.00, 22.00, 'Breakfast', 11.00, 5),
(13, 'Dr.', '???????', 'Dimitrios', 'Superior Room', 'Single', 1, '2021-05-31', '2021-06-06', 1920.00, 1939.20, 0.00, 'Room only', 19.20, 6),
(15, 'Dr.', '???????', 'Dimitrios', 'Guest House', 'Double', 1, '2021-05-31', '2021-06-04', 720.00, 734.40, 0.00, 'Room only', 14.40, 4),
(16, 'Dr.', '?????????', 'Dimitrios', 'Superior Room', 'Single', 1, '2021-05-31', '2021-06-05', 1600.00, 1616.00, 0.00, 'Room only', 16.00, 5);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(2, 'Superior Room', 'Double', 'Free', 0),
(3, 'Superior Room', 'Triple', 'Free', 0),
(4, 'Single Room', 'Quad', 'Free', NULL),
(5, 'Superior Room', 'Quad', 'Free', NULL),
(6, 'Deluxe Room', 'Single', 'Free', 0),
(7, 'Deluxe Room', 'Double', 'Free', NULL),
(8, 'Deluxe Room', 'Triple', 'Free', NULL),
(9, 'Deluxe Room', 'Quad', 'Free', NULL),
(10, 'Guest House', 'Single', 'Free', NULL),
(11, 'Guest House', 'Double', 'NotFree', 15),
(12, 'Guest House', 'Quad', 'Free', NULL),
(13, 'Single Room', 'Single', 'Free', NULL),
(14, 'Single Room', 'Double', 'Free', NULL),
(15, 'Single Room', 'Triple', 'Free', NULL),
(16, 'Superior Room', 'Single', 'NotFree', 16),
(19, 'Superior Room', 'Single', 'NotFree', 16),
(20, 'Superior Room', 'Single', 'NotFree', 16),
(21, 'Superior Room', 'Single', 'NotFree', 16),
(22, 'Superior Room', 'Single', 'NotFree', 16),
(23, 'Superior Room', 'Single', 'NotFree', 16),
(24, 'Superior Room', 'Triple', 'Free', NULL);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) CHARACTER SET utf8mb4 DEFAULT NULL,
  `FName` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `LName` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(15, 'Dr.', 'ΦΩΤΕΙΝΗ', 'Dimitrios', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Guest House', 'Double', '1', 'Room only', '2021-05-31', '2021-06-04', 'Conform', 4),
(16, 'Dr.', 'ΔΗΜΗΤΡΙΟΣ', 'Dimitrios', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Superior Room', 'Single', '1', 'Room only', '2021-05-31', '2021-06-05', 'Conform', 5),
(17, 'Dr.', 'ΔΗΜΗΤΡΙΟΣ', 'Dimitrios', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Superior Room', 'Single', '1', 'Room only', '2021-05-31', '2021-06-05', 'Not Conform', 5),
(18, 'Miss.', 'ΔΗΜΗΤΡΙΟΣ', 'Dimitrios', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Superior Room', 'Single', '1', 'Room only', '2021-06-01', '2021-06-06', 'Not Conform', 5),
(19, 'Dr.', 'ΦΩΤΕΙΝΗ', 'Dimitrios', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Superior Room', 'Single', '1', 'Room only', '2021-05-31', '2021-06-06', 'Not Conform', 6),
(20, 'Miss.', 'ΔΗΜΗΤΡΙΟΣ', 'Vortelinas', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Deluxe Room', 'Single', '1', 'Half Board', '2021-05-31', '2021-06-02', 'Not Conform', 2),
(21, 'Miss.', 'Dimitrios', 'Vortelinas', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Superior Room', 'Single', '1', 'Room only', '2021-05-31', '2021-06-05', 'Not Conform', 5),
(22, 'Dr.', 'Dimitrios', 'Vortelinas', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Superior Room', 'Triple', '1', 'Room only', '2021-06-01', '2021-06-06', 'Not Conform', 5),
(23, 'Dr.', 'Dimitrios', 'Vortelinas', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Superior Room', 'Single', '1', 'Breakfast', '2021-05-31', '2021-05-31', 'Not Conform', 0),
(24, 'Dr.', 'Dimitrios', 'Vortelinas', 'jvortelinas@gmail.com', 'Austria', 'Austria', '068864818152', 'Superior Room', 'Single', '1', 'Breakfast', '2021-05-31', '2021-05-31', 'Not Conform', 0);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT για πίνακα `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT για πίνακα `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT για πίνακα `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
