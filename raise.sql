-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2022 at 06:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raise`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `is_active` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(11, 'Amasha Weerakoon', 'admin@gmail.com', '$2y$10$0N2r7eMi2je1ZcFRQGW8TuVc9rC1Gl84Fij/er39HZ1a.cvtU6pbu', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Abay'),
(2, 'Nature'),
(3, 'Azure'),
(4, 'Anthurium'),
(5, 'Bamboo'),
(6, 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amount`) VALUES
(79, 11, '0.0.0.0', 2, 'Baby Shirt', 'babyshirt.JPG', 1, 500, 500),
(80, 2, '0.0.0.0', 2, 'iPhone 5s', 'iphonemobile.JPG', 1, 25000, 25000),
(89, 1, '0.0.0.0', 7, 'Samsung Duos 2', 'samsungduos.JPG', 1, 5000, 5000),
(90, 2, '0.0.0.0', 7, 'iPhone 5s', 'iphonemobile.JPG', 1, 25000, 25000),
(93, 2, '0.0.0.0', 11, 'Maroon Jewellery Box Set', 'reed.JPG', 1, 2300, 2300),
(98, 1, '127.0.0.1', -1, '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Eco Friendly-Bags'),
(2, 'Jewellery'),
(3, 'Beauty'),
(4, 'Gifts'),
(5, 'Fashion'),
(6, 'Food');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(30, 2, 6, 'LG Aqua 2', 15000, 1, 'CONFIRMED', '15179'),
(31, 2, 15, 'Football Shoes', 2500, 1, 'CONFIRMED', '15179'),
(32, 2, 16, 'Football', 600, 1, 'CONFIRMED', '15179'),
(33, 6, 1, 'Samsung Duos 2', 5000, 1, 'CONFIRMED', '211654743'),
(34, 6, 2, 'iPhone 5s', 25000, 1, 'CONFIRMED', '211654743'),
(35, 8, 1, 'Samsung Duos 2', 5000, 1, 'CONFIRMED', '1603143250'),
(36, 11, 19, 'Aloe Vera Bubble Soap', 870, 1, 'CONFIRMED', '219695747'),
(37, 10, 2, 'Maroon Jewellery Box Set', 2300, 1, 'CONFIRMED', '147602799'),
(38, 3, 1, ' Blue Palm Hat ', 2350, 1, 'CONFIRMED', '1240029349'),
(39, 15, 1, ' Blue Palm Hat ', 2350, 1, 'CONFIRMED', '1357668191'),
(40, 16, 1, ' Blue Palm Hat ', 2350, 1, 'CONFIRMED', '1428601607'),
(41, 18, 1, ' Blue Palm Hat ', 2350, 1, 'CONFIRMED', '1726855904'),
(42, 19, 1, ' Blue Palm Hat ', 2350, 1, 'CONFIRMED', '1053987425');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '1', '0', ' Blue Palm Hat ', 2350, ' Fabric pouch 3pc set with handmade crochet designs\r\nSize –\r\nSide bag ; 14×10.5\r\nPouch ; 10×6\r\nMini pouch ; 6.75×6', 'bagset.JPG', 'The creators of these products are involved in an upliftment initiative, where a group of aspiring women weave together threads of happiness, creating small and big masterpieces. They celebrate and recognise the immense arts-and-crafts related talent of women in the Dawoodi Bohra Community in Sri Lanka.'),
(2, '1', '0', 'Maroon Jewellery Box Set', 2300, 'Palm leaf jewellery box (8? x 6? x 3?) with 6 mini boxes inside (2.5? x 2.5? x 2?)', 'reed.JPG', 'A cute set to keep your precious pieces organized.'),
(3, '1', '0', 'Banana Blossom Saree Bag ', 460, 'Made by upcycling used, donated sarees. An eco-friendly to alternative to plastic bags. Strong, light weight, compact and durable.', 'banana.jpg', 'A sustainable living collection with a curated range of locally sourced, eco-friendly products.'),
(4, '1', '0', 'Baby Ellie Tote', 500, 'Hand painted on grey cloth, 14.5 x 16', 'baby.JPG', 'Perfect for all those everyday essentials.'),
(5, '1', '0', 'Handloom Baguette Bag', 2490, 'Cotton handloom fabric with a statement hand embroidery and quiltted soft lining, 9 x 20. Handwash or Dry Clean in any solvent except Trichloroethylene, Dry flat, Iron in low temperature', 'handloom.JPG', 'A greener, much-needed handloom product line aiming to be a responsible & zero waste brand from the start of our design journey, using talent and skill of local artisanal communities islandwide.'),
(6, '1', '0', 'Aquarelle Tote', 650, 'Bright bold environment friendly reusable multi purpose bags in 3 handy sizes.', 'apple.JPG', 'Bright bold environment friendly reusable multi purpose bags in 3 handy sizes.'),
(7, '1', '0', 'All Purpose Drawstring Bag', 950, 'Eco friendly cotton batik drawstring bag with black lining. Height 14 X Length 11?. Hand wash only / Do not bleach / Iron on reverse', 'draw.JPG', 'Carry your lunch to work in this cute bag'),
(8, '1', '0', 'Banana Fibre Bag', 5500, 'Hand woven out of reed. 18 x 14', 'beige.JPG', 'A versatile bag to take with you on for breakfast, lunch or brunch.'),
(9, '1', '0', 'Block Red Handloom Rucksack', 3300, 'Handmade using 100% cotton fabric & pure cotton white liners. 13 x 23 x 14.5. Wash care instructions: Cold gentle machine wash', 'red.JPG', 'Uniqe bags, perfect for everyday use.'),
(10, '2', '0', 'Abstract Paper Jewellery Set', 1500, 'Earring and necklace set, handmade out of upcycled paper.', 'paper.JPG', 'Handcrafted by repurposing old newspaper into beautiful pieces of jewellery.'),
(11, '2', '1', 'Abay Sands Jewellery Set', 1800, 'Earring and necklace set, handmade from coconut shell and wrapped in batik cloth offcuts.', 'sand.JPG', 'Scraps of batik, beads and polished coconut shells are transfromed into exquisite jewellery by this creator.'),
(12, '2', '1', 'Abay Aquatic Jewellery Set', 1800, 'Earring and necklace set, handmade from coconut shell and wrapped in batik cloth offcuts.', 'aqua.JPG', 'Scraps of batik, beads and polished coconut shells are transfromed into exquisite jewellery by this creator. '),
(13, '2', '1', 'Abay Wrap Necklace', 600, 'Handmade from coconut shells and upcycled batik fabric.', 'wrap.JPG', 'Scraps of batik, upcycled handloom and polished coconut shells are transfromed into exquisite jewelry by this creator. '),
(14, '2', '0', 'Hand painted wooden earrings.', 1500, 'Trimmer by Philips', 'aut.JPG', 'Upcycled wood is sculpted into exquisite jewelry by this creator. She has a knack for using unconventional materials to beautifully craft these trinkets in her homegrown business. Scraps of batik, upcycled handloom and polished coconut shells are all part of her collection.'),
(15, '2', '0', 'Arrow Head Coconut Shell Necklace', 550, 'Hand made out of coconut shell.', 'shell.JPG', 'These rustic pieces are great to pair with a casual t-shirt outfit.'),
(16, '2', '0', 'Black Leaf Wooden Earrings', 1500, 'Hand painted wooden earrings.', 'leaf.JPG', 'Upcycled wood is sculpted into exquisite jewelry by this creator. She has a knack for using unconventional materials to beautifully craft these trinkets in her homegrown business. Scraps of batik, upcycled handloom and polished coconut shells are all part of her collection.'),
(17, '2', '0', 'Abstract Wooden Earrings', 1500, 'Handmade satin scrunchie.', 'Wodden.JPG', 'Comfy hair accessories to minimize hair breakage and keep you lookin chic all day long!'),
(18, '2', '', 'B&W Coconut Shell Necklace', 600, 'Handmade from coconut shells and upcycled batik fabric. ', 'shel2.JPG', 'craps of batik, upcycled handloom and polished coconut shells are transfromed into exquisite jewelry by this creator. She has a knack for using unconventional materials to beautifully craft these trinkets in her homegrown business.'),
(19, '3', '0', 'Aloe Vera Bubble Soap', 870, 'Mild soap, 110g. Cold saponified exclusively with organic and high quality vegetable oils. Ingredients: Saponified Organic virgin coconut oil (Cocos nucifera), Spring water, Organic coconut milk, Aloe Vera gel (Aloe Barbadensis Miller), E vitamin Salicylic acid', 'aloe.JPG', 'For dry to normal skin.'),
(20, '3', '0', 'Anti Blemish Dry Face Pack & Scrub 100g', 1500, 'Add in a bit of water to form a paste that’s great as a mask and a scrub. Contains: Sandalwood, Papaya & Kaolin.', 'dry.JPG', 'The creator behind this brand was constantly engaged with the products and the production process too. Hence, she was inspired to sustain the brand and its range of wellness items through her love and passion for healing.'),
(21, '3', '0', 'Blue Cloud Face Masque 50g', 2400, 'A Clay Masque made with zero nasties! With just, pure French Blue and Kaolin clay. French Blue Clay is highly rich in minerals and trace elements, and boasts absorption, stimulating, and oxygenating properties.', 'blue.JPG', 'A Clay Masque made with zero nasties! With just, pure Pink and Kaolin clay. Pink Clay is rich in Silica, which may help to improve skin elasticity and cell renewal, resulting in supple, younger-looking skin. Gently exfoliating and light on the skin, Pink Clay leaves the skin feeling silky-soft and smooth. Plus, it can help to minimize blackheads and promote a radiant and balanced complexion.'),
(22, '3', '2', 'Nature Chcocolate Lip Scrub 45g', 600, 'Sugar body scrubs are made with all natural ingredients with its key base being sugar. ', 'lip.JPG', 'This is used to help exfoliate and hydrate the skin. More importantly it helps get rid of dead skin, helps reduce dark spots and in growth and softens the skin.'),
(23, '3', '2', 'Nature  Chocolate Sugar Lip Scrub 30g', 650, 'Properly exfolated lips will allow better absorption of moisture – that’s what lip scubs are for! Contains: Brown Sugar, Coconut Oil, Almond Oil and Cocoa Powder.', 'sugar.JPG', 'Properly exfolated lips will allow better absorption of moisture – that’s what lip scubs are for! Contains: Brown Sugar, Coconut Oil, Almond Oil and Cocoa Powder.'),
(24, '3', '2', 'Nature Sandalwood Lotion 200ml', 2000, 'Wet skin body lotion with sandalwood powder, sandalwood oil water, essential oil', 'sandal.JPG', 'The fast-track to soft and nourished skin. This ultra-moisturizing body lotion is infused with a sandalwood scent known for keeping skin feeling smooth and soft.'),
(25, '4', '0', 'Anchor Cufflinks', 1300, 'Wooden anchor engraved cufflinks', 'anchor.JPG', 'Handmade in Sri Lanka the wooden cufflinks using offcut pieces of teak/ mahogany wood and upcycled product with the craftsmanship of master craftsmen with high attention to detail makes each product a masterpiece of its own.'),
(26, '4', '5', 'Bamboo Lined Soap Dish', 650, 'Eco friendy handmade bamboo soap container, 10cm x 11.5cm x 4cm', 'bam.JPG', 'This natural, minimalist, durable bamboo product is produced using naturally grown bamboo  it’s a better alternative to plastics and other unsustainable containers .'),
(27, '4', '5', 'Bamboo Till', 1700, '\r\n\r\nThis 100% bamboo till is durable and a great alternative to plastic and metal money boxes.\r\n', 'till.JPG', 'This 100% bamboo till is durable and a great alternative to plastic and metal money boxes.\r\n'),
(28, '4', '0', 'Brother Bear Soft Toy', 1700, 'A beautifully handmade handloom soft toy, just for your little one!', 'soft.JPG', 'A beautifully handmade handloom soft toy, just for your little one!'),
(29, '4', '0', '18 Sanni Mask Set', 70000, 'These 18 masks represent the ‘yakas’ or demons responsible for each sickness. This intricate piece was carved out of soft balsa wood by one of our brilliant creators', 'san.JPG', 'These 18 masks represent the ‘yakas’ or demons responsible for each sickness. This intricate piece was carved out of soft balsa wood by one of our brilliant creators'),
(30, '4', '0', 'Boehmian Cane Mirro', 5500, 'Hand made out of cane, 6 inner diameter, 21 outer diameter.', 'mi.JPG', 'Hand made out of cane, 6 inner diameter, 21 outer diameter.'),
(31, '5', '0', 'Angel Fish Batik Sarong', 4200, 'This talented creator incoporates both traditional and contemporary batik designs into her sarongs.', 'sar.JPG', 'This talented creator incoporates both traditional and contemporary batik designs into her sarongs.'),
(32, '5', '4', 'Anthurium Silk Batik Kaftan', 6000, 'This gorgeous handmade Kaftan is the perfect way to jazz up the evening', 'ant.JPG', 'This gorgeous handmade Kaftan is the perfect way to jazz up the evening'),
(33, '5', '4', 'Anthurium Batik Kaftan', 7000, 'This gorgeous handmade Kaftan is the perfect way to jazz up the evening', 'antt.JPG', 'This gorgeous handmade Kaftan is the perfect way to jazz up the evening'),
(34, '5', '3', 'Azure Handloom Dress', 5000, 'The creator of these uniquely bespoke pieces employs a small  team of talented Sri Lankan women to create each handwoven item in her home.', 'as.JPG', 'The creator of these uniquely bespoke pieces employs a small  team of talented Sri Lankan women to create each handwoven item in her home.'),
(35, '5', '3', 'Azure Midi Dress', 5000, 'The creator of these uniquely bespoke pieces employs a small  team of talented Sri Lankan women to create each handwoven item in her home.', 'az.JPG', 'The creator of these uniquely bespoke pieces employs a small  team of talented Sri Lankan women to create each handwoven item in her home.'),
(36, '5', '3', 'Azure Leaves Batik Saree', 8000, 'Handmade super voil batik sari with traditional batik art design', 'zza.JPG', 'Handmade super voil batik sari with traditional batik art design'),
(37, '6', '0', 'Banana Blossom Moju', 780, 'A moju made from Banana Blossom also known as the Kesel Muwa. Made at our village kitchen in Aukana bringing you the traditional taste from the village itself. These are made using natural ingredients, with no preservatives or artificial flavours added. 300g', 'kesel.JPG', 'A moju made from Banana Blossom also known as the Kesel Muwa. Made at our village kitchen in Aukana bringing you the traditional taste from the village itself. These are made using natural ingredients, with no preservatives or artificial flavours added. 300g'),
(38, '6', '7', 'Ancient Beli Capsules 100g', 1500, 'A 100% organic natural solution to improve gut health! Beli (650mg) is effective in treating chronic gastritis and stomach ulcers. ', 'bel.JPG', 'A 100% organic natural solution to improve gut health! Beli (650mg) is effective in treating chronic gastritis and stomach ulcers. '),
(39, '6', '6', 'Black Garlic Infused In Wild Bees Honey (250g)', 2500, 'Black Garlic is made when whole bulbs of garlic are expertly aged in controlled heat and humid condition for several weeks. Black Garlic is 100% natural', 'ga.JPG', 'Black Garlic is made when whole bulbs of garlic are expertly aged in controlled heat and humid condition for several weeks. Black Garlic is 100% natural'),
(40, '6', '6', 'Black Seed Oil 100ml', 2600, 'Edible black seed oil is high in antioxidants and has anti-inflammatory properties.', 'se.JPG', 'Edible black seed oil is high in antioxidants and has anti-inflammatory properties.'),
(41, '6', '', 'Classic Badhuma Large', 1490, 'Badhuma is a mix of locally sourced ingredients which are mixed together with local spices and karapincha to give an extra twist to your everyday meal.', 'bed.JPG', 'Badhuma is a mix of locally sourced ingredients which are mixed together with local spices and karapincha to give an extra twist to your everyday meal.Badhuma is a mix of locally sourced ingredients which are mixed together with local spices and karapincha to give an extra twist to your everyday meal.'),
(42, '6', '7', 'Ancient Ginger Capsules 100g', 990, 'Organic Ginger capsules are loaded with anti-inflammatory properties which support healthy digestion and prevent the build-up of gas. It also works as a natural remedy for nausea and improves overall gut health', 'gin.JPG', 'Organic Ginger capsules are loaded with anti-inflammatory properties which support healthy digestion and prevent the build-up of gas. It also works as a natural remedy for nausea and improves overall gut health');

-- --------------------------------------------------------

--
-- Table structure for table `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `amt` int(100) NOT NULL,
  `tr_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(19, 'Amasha ', 'Weerakoon', 'ama@gmail.com', '406c8670a6a590c5708662568a59cd5a', '0876545678', 'Dhh', 'Hkkk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
