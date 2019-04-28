SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `favorites`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `bands` varchar(10) NOT NULL,
  `movies` varchar(15) NOT NULL,
  `foods` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `favorites` (`id`, `bands`, `movies`, `foods`) VALUES
(1, 'Slipknot', 'A Quiet Place', 'Pasta Dishes'),
(2, 'Bring Me The Horizon', 'Forrest Gump', 'Pizza'),
(3, 'Bad Omens', 'The Conjuring', 'Salmon'),
(4, 'Noah Gundersen', 'Shawshank Redemption', 'Fryed Rice'),
(5, 'Dermont Kennedy', 'The Conjuring 2', 'Burgers');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` char(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
