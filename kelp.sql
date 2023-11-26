-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 12, 2022 at 04:05 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelp`
--

-- --------------------------------------------------------

--
-- Table structure for table `Food_data`
--

CREATE TABLE `Food_data` (
  `food_id` int(11) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `price` varchar(24) DEFAULT NULL,
  `restaurant` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Food_data`
--

INSERT INTO `Food_data` (`food_id`, `username`, `description`, `type`, `price`, `restaurant`) VALUES
(1, 'rivanikhin3', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 'Burritos', '$3.40', 'Chipotle'),
(2, 'cdurden4', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Burrito', '$0.09', 'Cafe Rio'),
(3, 'jbuney1', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 'Tacos', '$3.55', 'Rancheritos'),
(4, 'vbarendtsen1', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 'Nachos', '$8.96', 'Costa Vida'),
(5, 'ekencott0', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 'Burrito', '$12.87', 'Taco Bell'),
(6, 'ethaine1', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Orange Chicken', '$13.64', 'Panda Express'),
(7, 'weminson0', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 'Pancakes', '$2.48', 'iHop'),
(8, 'abosanko3', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Sandwich', '$13.51', 'Arbys'),
(9, 'ebrosio2', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Fried Chicken', '$3.78', 'Popeyes'),
(10, 'tduchatel0', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 'Burger', '$3.74', 'McDonalds'),
(11, 'mstenyng0', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Sandwich', '$6.37', 'Subway'),
(12, 'dgrzegorczyk4', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'Burger', '$12.52', 'Sonic'),
(13, 'dofogerty4', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 'Tacos', '$0.15', 'Del Taco'),
(14, 'ggirsch2', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 'Pizza', '$4.52', 'Papa Johns'),
(15, 'mmcglynn1', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Pizza', '$2.59', 'Dominos'),
(16, 'cbasezzi2', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Burger', '$12.65', 'Five Guys'),
(17, 'ngirdler3', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 'Pizza', '$2.31', 'Pizza Hut'),
(18, 'lborgnol3', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Fried Chicken', '$13.63', 'KFC'),
(19, 'rcornewall4', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'Fried Chicken', '$5.91', 'Raising Canes'),
(20, 'dshimon2', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 'Coffee', '$6.48', 'Starbucks');

-- --------------------------------------------------------

--
-- Table structure for table `Restaurant_data`
--

CREATE TABLE `Restaurant_data` (
  `restaurant_id` int(11) NOT NULL,
  `description` varchar(1204) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `price` char(10) DEFAULT NULL,
  `owner_name` varchar(128) DEFAULT NULL,
  `phone` char(12) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `type` char(64) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Restaurant_data`
--

INSERT INTO `Restaurant_data` (`restaurant_id`, `description`, `address`, `price`, `owner_name`, `phone`, `email`, `type`, `username`) VALUES
(1, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '9 Holmberg Center', '$8.46', 'Bonita Mackneis', '804-768-0237', 'bmackneis2@wikispaces.com', 'Chipotle', 'bmackneis2'),
(2, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '178 Milwaukee Road', '$1.71', 'Silvano Theunissen', '374-620-2763', 'stheunissen0@t.co', 'Cafe Rio', 'stheunissen0'),
(3, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '69990 Browning Avenue', '$10.17', 'Giustino Trice', '123-199-2367', 'gtrice0@tiny.cc', 'Rancheritos', 'gtrice0'),
(4, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '9711 Blue Bill Park Way', '$13.24', 'Tarra Bezants', '950-145-3322', 'tbezants4@tinypic.com', 'Costa Vida', 'tbezants4'),
(5, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '6 Center Way', '$2.03', 'Nola Pilfold', '769-621-5094', 'npilfold2@posterous.com', 'Taco Bell', 'npilfold2'),
(6, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '3735 Upham Center', '$5.90', 'Olenka Rudram', '940-522-5525', 'orudram3@live.com', 'Panda Express', 'orudram3'),
(7, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '453 Morningstar Parkway', '$5.89', 'Mariejeanne Meale', '640-136-5803', 'mmeale3@g.co', 'iHop', 'mmeale3'),
(8, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '74 Briar Crest Plaza', '$9.37', 'Raff Wanne', '459-469-5871', 'rwanne0@usa.gov', 'Arbys', 'rwanne0'),
(9, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '69707 Graedel Point', '$3.92', 'Nolie Dummett', '366-461-8837', 'ndummett3@cisco.com', 'Popeyes', 'ndummett3'),
(10, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '34 Trailsway Circle', '$13.83', 'Bartholemy Bradly', '467-541-2706', 'bbradly1@blog.com', 'McDonalds', 'bbradly1'),
(11, 'Fusce consequat. Nulla nisl. Nunc nisl.', '4 Commercial Center', '$9.15', 'Rusty Newarte', '552-212-9804', 'rnewarte2@dailymail.co.uk', 'Subway', 'rnewarte2'),
(12, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '198 Delladonna Hill', '$12.90', 'Emelda Kinmond', '561-169-2798', 'ekinmond3@umich.edu', 'Sonic', 'ekinmond3'),
(13, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '4 Amoth Trail', '$4.09', 'Constantia Constable', '383-643-3698', 'cconstable4@discuz.net', 'Del Taco', 'cconstable4'),
(14, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2633 Jana Point', '$11.82', 'Rhianon Paxforde', '122-610-4087', 'rpaxforde1@businessweek.com', 'Papa Johns', 'rpaxforde1'),
(15, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '16 Valley Edge Alley', '$1.16', 'Hanan Slaten', '266-459-0024', 'hslaten4@wikimedia.org', 'Dominos', 'hslaten4'),
(16, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '5 Rusk Plaza', '$9.23', 'Jessee Berthelmot', '473-366-9601', 'jberthelmot4@usnews.com', 'Five Guys', 'jberthelmot4'),
(17, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '822 Bay Circle', '$1.95', 'Bay Engledow', '904-820-9378', 'bengledow0@europa.eu', 'Pizza Hut', 'bengledow0'),
(18, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '47 Spenser Road', '$11.75', 'Marietta Clowser', '177-788-0681', 'mclowser2@ameblo.jp', 'KFC', 'mclowser2'),
(19, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', '0572 Harbort Avenue', '$13.48', 'Blondy Lendrem', '874-303-9120', 'blendrem1@va.gov', 'Raising Canes', 'blendrem1'),
(20, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '1121 Anthes Drive', '$9.10', 'Gerek Gasticke', '572-648-2330', 'ggasticke1@hibu.com', 'Starbucks', 'ggasticke1');

-- --------------------------------------------------------

--
-- Table structure for table `Reviews_data`
--

CREATE TABLE `Reviews_data` (
  `review_id` int(11) NOT NULL,
  `restaurant` varchar(128) DEFAULT NULL,
  `username` varchar(128) NOT NULL,
  `review_text` varchar(1024) DEFAULT NULL,
  `rating` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Reviews_data`
--

INSERT INTO `Reviews_data` (`review_id`, `restaurant`, `username`, `review_text`, `rating`) VALUES
(1, 'Chipotle', 'cbramahj', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '1'),
(2, 'Cafe Rio', 'vleeds4', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2'),
(3, 'Rancheritors', 'nszuberte', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '3'),
(4, 'Costa Vida', 'ftinniswood0', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '1'),
(5, 'Taco Bell', 'jfuncheon9', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2'),
(6, 'Panda Express', 'afaithfullg', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '3'),
(7, 'iHop', 'lroddami', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', '1'),
(8, 'Popeyes', 'chalesworth6', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '3'),
(9, 'McDonalds', 'kcoddf', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '3'),
(10, 'Subway', 'ehagland3', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '3'),
(11, 'Sonic', 'tkemet5', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '3'),
(12, 'Sonic', 'sslineb', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '1'),
(13, 'Del Taco', 'sgarnham2', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '3'),
(14, 'Papa Johns', 'bbaylaya', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '3'),
(15, 'Dominos', 'avigus8', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', '3'),
(16, 'Five Guys', 'clukasc', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '1'),
(17, 'Pizza Hut', 'tcolebrook7', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '3'),
(18, 'KFC', 'nmattussevichh', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '1'),
(19, 'Raising Canes', 'pbolingbroke1', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '3'),
(20, 'Starbucks', 'sdomekd', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '2');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `username`, `role`) VALUES
(1, 'bsmith', 'admin'),
(2, 'pjones', 'author'),
(3, 'coddboy', 'admin'),
(4, 'cconnah', 'admin'),
(5, 'bgrote', 'admin'),
(6, 'bmcgarry', 'admin'),
(7, 'cjones', 'admin'),
(8, 'bwells', 'restaurant'),
(9, 'mmitcham', 'restaurant'),
(10, 'wrunciman', 'restaurant'),
(11, 'claimable', 'restaurant'),
(12, 'acaush', 'restaurant'),
(13, 'dmorala', 'author'),
(14, 'fivanchinb', 'author'),
(15, 'ostolberg', 'author'),
(16, 'tbaxill', 'author'),
(17, 'jtichelaar', 'author'),
(18, 'kbarlie', 'author'),
(19, 'bdelish', 'author'),
(20, 'feustanchi', 'author'),
(21, 'spetyakov', 'author'),
(69, 'tdang', 'author'),
(70, 'adien', 'author');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `forename` varchar(128) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`forename`, `surname`, `username`, `password`) VALUES
('Axel', 'Caush', 'acaush', '$2y$10$zXyvNAZxD3fazsJ5dqYFQ.P8TnL/cqi9sy4/KoD5vfOgFncAVo/Te'),
('Beth', 'Delish', 'bdelish', '$2y$10$L.e/k8r9DKpudtru1BvqBOdww5XM/UTvlrWBA4IHX9GcJoku0bN6m'),
('Ben', 'Grote', 'bgrote', '$2y$10$7heAmCXpWz7rVCbyA2t8POQhTOixFmBXuC9bBV4gXvZ3JdUdlnjCi'),
('Barry', 'McGarry', 'bmcgarry', '$2y$10$0ZLqQnNV8rAzxCvsoSLtK.FThNdQh9WllCBvpD.Qu7Tzp1CZPuK82'),
('Ben', 'Smith', 'bsmith', '$2y$10$ju1JyHAtU433m8sP99pBW.ryBoFXbE3RAzyc26xgB/iweg27YNG96'),
('Brandon', 'Wells', 'bwells', '$2y$10$97X1OxT3BA1otdU6SzFneu7xWggxvUhnf8hajAkBjlT1vO6E/kcSC'),
('Connor', 'Connah', 'cconnah1', '$2y$10$3Au/s0UySkg1bAQeT1T0D.YRzDvaXGmIrfRjq55gXs/WSwSpqtQny'),
('Carter', 'Jones', 'cjones', '$2y$10$hTgwtbO2BAyXbolz9Av0V.APdP5lNx3UesrdLa3VU5HzRkmVPyjuG'),
('Claire', 'Mable', 'claimable', '$2y$10$4Lq1pDC913Jn7o7s8k2.Gu7URAn7p1OjarcOMvLNOcYgX0iHp8eta'),
('Codd', 'Boyson', 'coddboy0', '$2y$10$5maHmEd4LkFOBh8eBglkeumwvFqB7MozqtOZs2XLQNbaW8gWih13W'),
('Denis', 'Morala', 'dmorala', '$2y$10$SruKGRhaLNdmE1oOYxTGPOsj0LfcfoUqTXY7nS4woye2pzkLu4U9m'),
('Frank', 'Eustanchi', 'feustanchi', '$2y$10$6gUFdMDBnCRnu.41BMG.r.lJ39O2zKO46YXxlpiY3zyfvF0tzkZpu'),
('Fiv', 'Anchinb', 'fivanchinb', '$2y$10$L5g8hkoA4rtWQK3TpM/GIeoV8KsoLzVHnPXOg2agZteMzvDdfNDAa'),
('Justine', 'Tichelaar', 'jtichelaar', '$2y$10$8UPfi9pUz.4jCR6WQ7TXAuXOF70Rtvu7C/LfNMPSSjbAfhvcWFFIO'),
('Karl', 'Barlie', 'kbarlie', '$2y$10$zRyhz/zzaljdhhbAYVhuj.hx0go1qtCOHCN3l.y7iVLGnOVSUyBnq'),
('Max', 'Mitcham', 'mmitcham', '$2y$10$yEXn1G1u/0952/2WSNyFwu4Ft4dEuE6YtckWvD62J5Hn7IO4RXg8S'),
('Ostol', 'Berg', 'ostolberg', '$2y$10$RpH40Q4RPAvegctayOomvu0y1qEzi/yALssn6LpcU.bNzIh1y6d1G'),
('Pauline', 'Jones', 'pjones', '$2y$10$1X3AJ4Q96CVm1Wiuf5VvOeYglm0XJYw96IA44ULCRofGGD0RVYGa.'),
('Sam', 'Petyakov', 'spetyakov', '$2y$10$k11bT8.lyZN1NRAkqLVyDOb6c1ehibXV16YHNXtseCfnRVePICoHy'),
('Terry', 'Baxill', 'tbaxill', '$2y$10$XtPcOqL1BhmcoueWRwVeKOw.kNjxZKFzaVFdAfjdGd7CWG1jm6J/q'),
('Truong', 'Dang', 'tdang', '$2y$10$TGIYhZgS6Se.RTCyC/6RtudETssmx/JDzfZJMOJHYO1dJPj/bVmKC'),
('West', 'Runciman', 'wrunciman', '$2y$10$nm9PEMy4T7xP9b1ox5X2cOWDRcS5DJWZkK3c0S1pu56oyoNZzm6XG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Food_data`
--
ALTER TABLE `Food_data`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `Restaurant_data`
--
ALTER TABLE `Restaurant_data`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `Reviews_data`
--
ALTER TABLE `Reviews_data`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Food_data`
--
ALTER TABLE `Food_data`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `Restaurant_data`
--
ALTER TABLE `Restaurant_data`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Reviews_data`
--
ALTER TABLE `Reviews_data`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
