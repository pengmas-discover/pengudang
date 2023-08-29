-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 07:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devpengu_db_pengudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(15) NOT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `category` int(5) NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todo_categories`
--

CREATE TABLE `todo_categories` (
  `categories_id` int(15) NOT NULL,
  `category` varchar(225) NOT NULL,
  `prompt` varchar(1000) DEFAULT NULL,
  `next_prompt` varchar(3000) NOT NULL,
  `title_image` varchar(225) NOT NULL,
  `admin_id` int(15) NOT NULL,
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `todo_categories`
--

INSERT INTO `todo_categories` (`categories_id`, `category`, `prompt`, `next_prompt`, `title_image`, `admin_id`, `updated`, `created`) VALUES
(1, 'Mangrove Adventure', 'Mangrove, nestled in the picturesque landscape of Bintan, is a true paradise for nature enthusiasts and adventure seekers alike. This awe-inspiring destination offers a captivating blend of stunning beauty and ecological significance, making it an unmissable gem of Southeast Asia. As you venture into the heart of Mangrove, you\'ll find yourself immersed in a haven of lush greenery and a diverse array of flora and fauna. The sprawling mangrove forests provide essential habitats for countless wildlife species, including unique bird species, elusive reptiles, and fascinating marine creatures. Guided boat tours through the mangrove channels offer an up-close encounter with this delicate ecosystem, allowing you to witness nature\'s intricacies and understand the importance of preserving such a vital environment.', 'Beyond its natural wonders, Mangrove boasts a distinctive community-run charm that sets it apart from typical tourist destinations. The warm hospitality of the local residents in Pengudang and Teluk Sebong adds a genuine touch to your experience. Engaging with the local communities offers a glimpse into their traditional way of life, rich culture, and deep-rooted customs. Moreover, relishing the authentic flavors of the region\'s cuisine, prepared with love and expertise by the locals, enhances the overall enchanting journey. As you meander through the narrow channels, the tranquility of Mangrove envelops you, allowing for a soul-soothing escape from the bustling city life. Whether you\'re an intrepid explorer, a passionate nature lover, or simply seeking a rejuvenating retreat, Mangrove in Bintan beckons you to embark on an unforgettable adventure of discovery and wonder.', 'mangrove-adventure.webp', 1, '2023-08-06 03:52:38', '2023-06-13 19:39:24'),
(2, 'Beach Visit', 'Pengudang and Bintan Beach are coastal paradises that epitomize the idyllic beauty of Southeast Asia. The allure of these destinations lies in their unspoiled and diverse shorelines, each offering a unique charm waiting to be unraveled. At Pengudang, the rugged rock formations create a dramatic backdrop, presenting an ideal spot for photographers and nature enthusiasts seeking breathtaking vistas. On the other hand, Bintan Beach\'s pristine white sands and crystal-clear waters beckon travelers to indulge in the ultimate tropical escape. The tranquility of these shorelines allows visitors to unwind, rejuvenate, and immerse themselves in the serenity that only nature can provide.', 'As you explore these hidden gems, the coastal wonders seem to unfold endlessly, revealing small islands and coves that invite adventurous exploration and quiet reflection. Discovering the islets on foot during low tides adds an element of excitement and discovery to your journey. The marine life that thrives in the surrounding waters captivates snorkelers and divers with its vibrant colors and diversity. Whether you seek thrilling water sports, serene beachcombing, or simply a moment of connection with nature, Pengudang and Bintan Beach offer an abundance of experiences to suit every traveler\'s desires. These coastal havens present a harmonious fusion of beauty, adventure, and relaxation, leaving visitors with cherished memories and a yearning to return to their embrace.', 'beach-visit.webp', 1, '2023-08-06 03:53:37', '2023-06-13 19:43:26'),
(3, 'City exploration', 'When visiting Tanjung Pinang and Bintan, immersing yourself in city exploration is an essential activity to truly experience the rich culture and history of the region. Tanjung Pinang\'s old town is a treasure trove of historical spots, where you can wander through charming streets adorned with quaint architecture, traditional markets, and local shops. As you stroll along, the aroma of tantalizing local delicacies wafts through the air, enticing you to stop by the numerous cafes and restaurants to savor authentic flavors. Don\'t miss the chance to try regional specialties like the mouthwatering seafood dishes and delightful desserts. A visit to the seaside view parks, especially in Pengudang, is a must to capture awe-inspiring views of the pristine beach and the bustling city of Tanjung Pinang from a different perspective. The panoramic vistas offer a serene escape from the city\'s hustle and bustle, making it an ideal spot for relaxation and memorable moments.', 'Bintan\'s allure lies in its beautiful beaches that stretch endlessly along the coastline, offering an irresistible invitation to unwind and bask in the tropical sun. Sink your toes into the soft, white sand, and let the crystal-clear waters gently lap at your feet. Whether you\'re seeking adrenaline-pumping water sports or seeking a peaceful retreat, the beaches of Bintan cater to every traveler\'s desires. Snorkeling and diving opportunities abound, revealing a vibrant underwater world with colorful coral reefs and marine life. As the day winds down, the stunning sunsets over the horizon create a picturesque backdrop, providing the perfect setting for a romantic evening or a reflective moment in nature\'s embrace. With a delightful blend of cultural exploration and beach indulgence, Tanjung Pinang and Bintan offer an unforgettable journey filled with fond memories and a deep appreciation for the beauty of Indonesia\'s Riau Archipelago.', 'city-exploration.webp', 1, '2023-08-06 03:54:10', '2023-06-13 19:43:26'),
(4, 'Leisure Drive', 'Driving leisurely down the impeccably maintained road in Bintan offers an unparalleled experience that simply cannot be replicated elsewhere. The serene environment with minimal traffic allows you to savor every moment of the journey, as you meander along captivating roads that unveil breathtaking vistas of the coastline, lush plantations, meandering rivers, and vast grasslands. The tranquility and natural beauty enveloping you create a truly invigorating and revitalizing experience, providing a perfect escape from the hustle and bustle of everyday life. Whether you\'re a nature enthusiast or simply seeking a peaceful getaway, this secure expedition promises to leave an indelible mark on your soul.', 'Bintan\'s well-maintained roads and idyllic scenery provide the ideal setting for a journey of rejuvenation. As you leisurely drive through this captivating landscape, you\'ll be transported to a realm of tranquility and serenity. The absence of heavy traffic allows you to fully immerse yourself in the awe-inspiring vistas of the coastline, lush plantations, meandering rivers, and vast grasslands. Each turn reveals a new breathtaking view, and you\'ll find yourself relishing every moment of this unique experience. With the assurance of safety and security, you can let go of any worries and allow yourself to be rejuvenated by the natural wonders that Bintan has to offer. This unforgettable expedition is bound to invigorate your senses, leaving you feeling refreshed and renewed.', 'leisure-drive.webp', 1, '2023-08-06 03:56:01', '2023-06-13 19:43:26'),
(5, 'Culinary', 'Tanjung Pinang, a stunning destination, not only offers breathtaking landscapes but also a delightful culinary journey for visitors. Among the must-try places is Ikan Bakar Pondok Ciung, where you can savor the mouthwatering flavors of grilled fish. The restaurant\'s ambiance and the taste of their perfectly grilled seafood make for an unforgettable dining experience. Another gem is Pizza Casa Italia, a unique pizzeria that combines the goodness of Italian cuisine with a mesmerizing beach view. Indulging in their delectable pizzas while enjoying the serene coastal scenery is an absolute treat for both the taste buds and the soul.', 'For coffee enthusiasts, Kedai Kopi Batu 10 is a hidden gem that should not be missed. This charming coffee shop offers a variety of aromatic coffee blends that cater to different preferences. Whether you like it strong or mild, you\'ll find your perfect cup of coffee here, providing a pleasant start or conclusion to your day. And let\'s not forget the abundance of fresh seafood in Tanjung Pinang. Seafood lovers will be delighted with the array of options available at Warung Gong Gong Bu Adel and Gunung Kijang. From succulent crabs to juicy prawns, these eateries serve up tantalizing dishes that showcase the rich marine flavors of the region. Exploring Tanjung Pinang\'s culinary scene is undoubtedly an adventure that promises to leave a lasting impression on your taste buds and create fond memories of this enchanting place.', 'culinary.webp', 1, '2023-08-06 03:56:32', '2023-06-13 19:43:26'),
(6, 'Historical', 'Penyengat Island stands as a living testament to its remarkable historical legacy, tracing its origins back to the 18th century. Initially established as a strategic fort by the Bugis people under the umbrella of the Sultanate of Johor-Riau, the island has evolved into a symbol of cultural heritage and historical significance. Stepping foot on this island is like embarking on a journey through time, where remnants of the past intertwine with the present. The stories of brave rulers, ancient traditions, and the vibrant culture of the Bugis people are etched into the very fabric of Penyengat Island. As visitors explore its enchanting landscapes and historical landmarks, they can\'t help but be captivated by the richness of its past and the resilience of its people.', 'For those eager to delve deeper into the island\'s fascinating history, the Museum Bahari Bintan offers an immersive experience that should not be missed. The museum houses a treasure trove of historical information, artifacts, and exhibits that shed light on the island\'s pivotal role in shaping the region\'s history. From ancient artifacts to detailed accounts of significant events, the museum provides a comprehensive and enlightening perspective on Penyengat Island\'s past. History enthusiasts and curious travelers alike will find themselves engrossed in the narratives that unfold within the museum\'s walls. A visit to Penyengat Island and its museum is more than just a tour; it is an opportunity to connect with the past, appreciate the present, and gain a deeper appreciation for the unique cultural heritage of this captivating island.', 'historical.webp', 1, '2023-08-06 03:57:03', '2023-06-13 19:43:26'),
(7, 'Kelong', 'In the picturesque beaches of Bintan, the sight of a kelong (or kellong) emerges as a magnificent and intriguing structure. Perched on stilts above the crystal-clear waters, this offshore platform showcases the craftsmanship and ingenuity of the locals. Constructed primarily with wood, the kelong stands as a unique attraction that beckons visitors to explore its beauty. The allure of the kelong lies not only in its remarkable architecture but also in the memorable experiences it offers. Travelers have the opportunity to engage in traditional fishing activities from the platform, immersing themselves in the local way of life and connecting with the serene marine environment. Moreover, for those seeking an extraordinary retreat, some kelongs provide lodging options, allowing guests to bask in the tranquility of the surroundings and create cherished memories that will last a lifetime.', 'Embarking on a visit to the kelong is an adventure filled with awe and wonder. As visitors approach this stunning offshore platform, they are greeted by the rhythmic sound of the waves and the breathtaking vistas of the surrounding seascape. The warmth and hospitality of the locals add to the charm of the experience, as they welcome guests with open arms and share their traditional fishing knowledge. Whether it\'s the thrill of catching fresh seafood or simply indulging in the serenity of the oceanic setting, the kelong promises an unforgettable journey that provides a unique glimpse into the cultural heritage of Bintan. So, come and witness the wonder of the kelong, and let its enchanting presence create lasting memories that will linger in your heart for years to come.', 'kelong.webp', 1, '2023-08-06 03:57:32', '2023-06-13 19:43:26'),
(8, 'Staycation', 'When it comes to finding the perfect lodging for your vacation, the options are truly limitless. For travelers on a budget, there are plenty of affordable accommodations that offer comfort and convenience without breaking the bank. On the other end of the spectrum, if you\'re seeking a lavish and exclusive getaway, luxurious resorts in bustling cities or tucked away on private beaches cater to your every whim. Whether you prefer the hustle and bustle of a vibrant city or the serenity of a secluded beach, the choices are tailored to suit your preferences.', 'If you\'re looking to unwind and escape the stresses of daily life, a relaxing staycation can be the ideal option. You don\'t have to travel far to experience breathtaking beach views, invigorating fresh air, and a rejuvenating atmosphere. Alternatively, you can venture out to explore the scenic beauty of Bintan, a destination renowned for its stunning landscapes and cultural charm. For those seeking utter tranquility, Pengudang offers a serene oasis surrounded by nature\'s beauty, providing the perfect setting to recharge and revitalize your senses. Regardless of your choice, each option promises a unique and unforgettable experience that will leave you feeling refreshed and renewed.', '-', 1, '2023-08-06 03:58:16', '2023-06-13 19:43:26'),
(9, 'Seaside Golf', 'Seaside Golf and Lagoi Bintan are two prominent tourist destinations, each catering to different preferences and offering unique experiences for travelers. Seaside Golf is a haven for golf enthusiasts, renowned for its impeccably designed courses that provide not only challenging gameplay but also stunning ocean views. Whether you are a seasoned golfer or just starting to explore the sport, the serene ambiance and picturesque surroundings make it an unforgettable experience for all. On the other hand, Lagoi Bintan entices visitors with its luxurious resorts and pristine beaches, making it a magnet for those seeking a pampering and indulgent escape. The area\'s world-class accommodations and the allure of idyllic beaches create the perfect setting for relaxation, whether you want to immerse yourself in rejuvenating spa treatments or simply soak up the sun on the powdery shores.', 'No matter which destination you choose, both Seaside Golf and Lagoi Bintan promise an exquisite vacation to unwind and immerse yourself in the beauty of nature. Whether you are a golf enthusiast seeking a challenging course with mesmerizing sea vistas or a traveler yearning for a luxurious beach escape, these destinations cater to your desires, leaving you with cherished memories and a sense of revitalization that will linger long after your vacation ends.', 'seaside-golf.webp', 1, '2023-08-06 03:58:48', '2023-06-13 19:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `tosee_content`
--

CREATE TABLE `tosee_content` (
  `tosee_id` int(15) NOT NULL,
  `name` varchar(225) NOT NULL,
  `object_type` varchar(225) NOT NULL,
  `latitude` varchar(225) NOT NULL,
  `longitude` varchar(225) NOT NULL,
  `thumbnail` varchar(225) DEFAULT NULL,
  `price` varchar(15) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `days` varchar(15) NOT NULL,
  `link` varchar(225) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `admin_id` int(15) NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tosee_content`
--

INSERT INTO `tosee_content` (`tosee_id`, `name`, `object_type`, `latitude`, `longitude`, `thumbnail`, `price`, `start_time`, `end_time`, `days`, `link`, `categories_id`, `admin_id`, `updated`, `created`) VALUES
(1, 'Kedai Kopi Batu 10', 'Restaurant', '0.909793', '104.511707', 'kedai-kopi-batu-10-1.webp', 'Free', '06:00:00', '23:00:00', 'Everyday', NULL, 5, 1, '2023-08-25 07:21:27', '2023-07-30 10:52:13'),
(2, 'Masjid Al Amal Desa Teluk Bakau', 'Public Facility', '1.019213', '104.647032', NULL, 'Free', '06:00:00', '23:00:00', 'Everyday', NULL, NULL, 1, '2023-08-24 05:59:49', '2023-07-30 11:51:17'),
(3, 'Trikora', 'Tourist Spot', '1.111139', '104.626901', 'trikora-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, 2, 1, '2023-08-25 07:18:27', '2023-07-30 11:52:07'),
(4, 'Pengudang Mangrove Tours', 'Tourist Spot', '1.168158', '104.497407', 'pengudang-mangrove-tours-1.webp', 'Rp 150.000/pers', '00:00:00', '00:00:00', 'Everyday', NULL, 1, 1, '2023-08-25 07:17:23', '2023-07-30 11:52:07'),
(5, 'Masjid Nur As\'adiah', 'Public Facility', '1.17004', '104.505277', 'masjid-nur-asaidah.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:06', '2023-07-30 11:52:07'),
(6, 'Pondok Santai Family', 'Tourist Spot', '1.107954', '104.633284', 'pondok-santai-family-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:09', '2023-07-30 11:52:07'),
(7, 'Ikan Bakar Pondok Ciung', 'Restaurant', '0.923307', '104.511103', 'ikan-bakar-pondok-ciung-1.webp', 'Paid', '10:30:00', '21:00:00', 'Everyday', NULL, 5, 1, '2023-08-25 07:20:45', '2023-07-30 11:52:07'),
(8, 'Cassia Bintan', 'Accomodation', '1.18510928272875', '104.343003313774', 'cassia-bintan-1.webp', 'Paid', '00:00:01', '23:59:59', 'Everyday', 'https://www.cassia.com/', NULL, 1, '2023-08-25 03:59:17', '2023-07-30 11:52:07'),
(9, 'Masjid Al Muhajirin Lagoi', 'Public Facility', '1.149752', '104.333206', NULL, 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-24 05:59:54', '2023-07-30 11:52:07'),
(10, 'Pujasera Lagoi', 'Restaurant', '1.150614', '104.331309', 'pujasera-lagoi-1.webp', 'Paid', '06:00:00', '23:00:00', 'Everyday', NULL, 5, 1, '2023-08-25 07:23:29', '2023-07-30 11:54:42'),
(11, 'Danau Buatan Lagoi', 'Tourist Spot', '1.174219', '104.370425', 'danau-buatan-lagoi-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:19', '2023-07-30 11:54:42'),
(12, 'Public Lagoi Bay', 'Tourist Spot', '1.177318', '104.372399', 'public-lagoi-bay-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, 2, 1, '2023-08-25 07:18:32', '2023-07-30 11:54:42'),
(13, 'Desa Wisata Ekang', 'Tourist Spot', '1.083473', '104.363461', 'desa-wisata-ekang-1.webp', 'Paid', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:25', '2023-07-30 11:54:42'),
(14, 'Warung Gong Gong Bu Adel', 'Restaurant', '0.875326', '104.492036', 'warung-gong-gong-bu-adel-1.webp', 'Paid', '10:00:00', '22:00:00', 'Everyday', NULL, 5, 1, '2023-08-25 07:20:32', '2023-07-30 11:54:42'),
(15, 'Rumah Makan Awang Sungai', 'Restaurant', '0.943888', '104.472573', 'rumah-makan-awang-sungai-1.webp', 'Paid', '09:00:00', '22:00:00', 'Everyday', NULL, 5, 1, '2023-08-25 07:23:33', '2023-07-30 11:54:42'),
(16, 'Masjid Raya Nur Ilahi', 'Public Facility', '0.88454', '104.453466', 'masjid-raya-nur-ilahi-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:32', '2023-07-30 11:54:42'),
(17, 'Jembatan Dempak Baru', 'Tourist Spot', '0.901755', '104.453533', 'jembatan-dempak-baru-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:35', '2023-07-30 12:09:29'),
(18, 'Pelantar I', 'Public Facility', '0.933311', '104.441355', 'pelantar-i-1.webp', 'Rp 5.000/person', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:40', '2023-07-30 12:09:29'),
(19, 'Goreng-goreng Pakde Petruk', 'Restaurant', '0.932194', '104.441705', 'goreng-goreng-pakde-petruk-1.webp', 'Paid', '06:00:00', '23:00:00', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:38', '2023-07-30 12:09:29'),
(20, 'Bofet Pak Haji', 'Restaurant', '0.906145', '104.464557', NULL, 'Paid', '14:00:00', '23:00:00', 'Everyday', NULL, NULL, 1, '2023-08-24 05:59:57', '2023-07-30 12:09:29'),
(21, 'Homestay Siti Rapeah', 'Accomodation', '1.167637', '104.501293', 'homestay-siti-rapeah.webp', 'Paid', '00:00:00', '00:00:00', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:43', '2023-07-30 12:09:29'),
(22, 'Pantai Batu Empang', 'Tourist Spot', '1.169211', '104.501041', 'pantai-batu-empang-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, 2, 1, '2023-08-25 07:18:43', '2023-07-30 12:09:29'),
(23, 'Dermaga Batu Empang', 'Tourist Spot', '1.170124', '104.501144', 'dermaga-batu-empang-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:48', '2023-07-30 12:09:29'),
(24, 'Warung dan Homestay \"Bunda\"', 'Accomodation', '1.168631', '104.500995', 'warung-dan-homestay-bunda-1.webp', 'Paid', '00:00:00', '00:00:00', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:51', '2023-07-30 12:09:29'),
(25, 'Trikora 3', 'Tourist Spot', '1.127099', '104.596489', NULL, 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-24 05:59:59', '2023-07-30 12:09:29'),
(26, 'Pizza Casa Italia', 'Restaurant', '1.124682', '104.601314', 'pizza-casa-italia-1.webp', '70.000', '09:30:00', '17:00:00', 'Everyday except', NULL, 5, 1, '2023-08-25 07:21:09', '2023-07-30 12:09:29'),
(27, 'Museum Bahari Bintan', 'Tourist Spot', '1.024495', '104.653121', 'museum-bahari-bintan-1.webp', 'Free', '00:00:00', '00:00:00', 'Everyday', NULL, 6, 1, '2023-08-25 07:21:59', '2023-07-30 12:09:29'),
(39, 'Rumah Makan Pak Sidin', 'Restaurant', '0.992417', '104.62512', NULL, 'Paid', '08:00:00', '18:00:00', 'Everyday', NULL, NULL, 1, '2023-08-24 06:00:12', '2023-07-30 12:11:38'),
(40, 'Masjid Raya An-Nur Kawal', 'Public Facility', '0.992887', '104.60672', NULL, 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-24 06:00:11', '2023-07-30 12:11:38'),
(41, '3 Brother Kuliner', 'Restaurant', '0.902082', '104.485893', NULL, 'Paid', '17:00:00', '02:00:00', 'Everyday', NULL, NULL, 1, '2023-08-24 06:00:09', '2023-07-30 12:11:38'),
(42, 'Dermaga Penyeberangan Menuju Pulau Penyengat', 'Public Facility', '0.932877', '104.439815', 'dermaga-penyeberangan-menuju-pulau-penyengat-1.webp', '7.000/orang', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:12:59', '2023-07-30 12:11:38'),
(43, 'Pelabuhan Pulau Penyengat', 'Public Facility', '0.930089', '104.421575', 'pelabuhan-pulau-penyegat-1.webp', '7.000/orang', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-25 01:39:44', '2023-07-30 12:11:38'),
(44, 'Masjid Raya Sultan Riau', 'Public Facility', '0.929739', '104.420409', 'masjid-raya-sultan-riau-1.webp', 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-04 07:13:05', '2023-07-30 12:11:38'),
(45, 'Taman Tepi Laut', 'Public Facility', '0.929739', '104.420409', NULL, 'Free', '00:00:01', '23:59:59', 'Everyday', NULL, NULL, 1, '2023-08-24 06:00:08', '2023-07-30 12:11:38'),
(46, 'Doulos Phos The Ship Hotel', 'Accomodation', '1.16026605517584', '104.320090969245', 'doulos-phos-the-ship-hotel-1.webp', 'Paid', '00:00:01', '23:59:59', 'Everyday', 'https://www.doulosphos.com/', NULL, 1, '2023-08-25 03:59:10', '2023-07-30 12:11:38'),
(47, 'Desa Pengudang', 'Tourist Spot', '1.17124278719294', '104.506399241454', 'desa-pengudang-1.webp', 'Paid', '00:00:00', '00:00:00', 'Everyday', NULL, NULL, 1, '2023-08-05 20:02:31', '2023-07-30 12:11:38'),
(48, 'Balai Serbaguna Desa Pengudang', 'Public Facility', '1.16834376638228', '104.501505546023', NULL, 'Paid', '00:00:00', '00:00:00', 'Everyday', NULL, NULL, 1, '2023-08-24 06:00:06', '2023-07-30 12:11:38'),
(49, 'Bintan Green Mangrove Tour & Fireflies Night Tour', 'Tourist Spot', '1.12884510017156', '104.342601867637', 'bintan-green-mangrove-tour-1.webp', 'Paid', '00:00:00', '00:00:00', 'Everyday', NULL, 1, 1, '2023-08-25 07:17:37', '2023-07-30 12:11:38'),
(50, 'Pantai Batu Junjung', 'Tourist Spot', '1.17536449733068', '104.48836871151', 'pantai-batu-junjung-1.webp', 'Paid', '00:00:00', '00:00:00', 'Everyday', NULL, 2, 1, '2023-08-25 07:18:14', '2023-07-30 12:11:38'),
(51, 'Pulau Penyengat', 'Tourist Spot', '0.928679089011065', '104.417499944352', 'pulau-penyengat-1.webp', 'Paid', '00:00:00', '00:00:00', 'Everyday', NULL, 6, 1, '2023-08-25 07:21:45', '2023-07-30 12:11:38'),
(52, 'Laguna Golf Bintan', 'Tourist Spot', '1.18218730018672', '104.339893009525', 'laguna-golf-bintan-1.webp', 'Paid', '00:00:00', '00:00:00', 'Everyday', NULL, 9, 1, '2023-08-25 07:22:58', '2023-07-30 12:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `tosee_description`
--

CREATE TABLE `tosee_description` (
  `description_id` int(15) NOT NULL,
  `tosee_id` int(11) NOT NULL,
  `promt` varchar(1000) NOT NULL,
  `narrative` varchar(3000) NOT NULL,
  `caption` varchar(1000) NOT NULL,
  `address` varchar(225) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tosee_description`
--

INSERT INTO `tosee_description` (`description_id`, `tosee_id`, `promt`, `narrative`, `caption`, `address`, `created`) VALUES
(1, 1, 'A governor-owned eatery with a variety of local food menu options. Lendir Noodles, Tarempa Noodles, Prata, etc. There is a buffet available', 'This traditional coffeeshop in Tanjung Pinang serves up several local favorites that are sure to satisfy any appetite. From the chewy and flavorful \"mie lendir\" to the crispy and flaky \"roti prata,\" customers will be transported to the heart of Indonesian cuisine with every bite. Come for the coffee. Stay for the delicious food and welcoming atmosphere that only a local institution can offer.', 'Indulge in the perfect blend of flavors at Kedai Kopi Batu 10 in Bintan  Savor the rich aroma of freshly brewed coffee and enjoy the tranquil vibes of this charming coffee shop. Your caffeine haven awaits! #KedaiKopiBatu10 #BintanCoffee #CoffeeLoversParadise', 'Jl. Arah Tj. Uban - Tj. Pinang, Pinang Kencana, Kec. Tanjungpinang Tim., Kota Tanjung Pinang, Kepulauan Riau 29125', '2023-08-05 19:15:06'),
(2, 2, 'Locals, near governmental building', 'Al Amal Mosque is known for its beautiful architectural design, featuring traditional Islamic elements blended with local aesthetics. The mosque\'s structure showcases intricate calligraphy, geometric patterns, and domes, creating a visually striking presence within the surrounding area.', 'Al Amal Mosque stands out with its stunning blend of traditional Islamic designs and local aesthetics. Admire the intricate calligraphy, patterns, and domes! #AlAmalArtistry #ArchitecturalBeauty', '', '2023-08-05 19:15:06'),
(3, 3, 'Ungated beach right beside main road, facing south china sea', 'In Bintan, there is a stunning beach named Trikora that faces the South China Sea. Visitors may readily access it since it is conveniently located close to the main road. With its white sand beaches, turquoise seas, and lush green environs, Trikora is known for its stunning natural beauty.', 'Embrace the allure of Trikora - a hidden gem of breathtaking beauty Let the azure waters and golden sands soothe your soul, while you create memories that last a lifetime. #TrikoraEscape #IslandParadise #NatureBliss', 'trikora, Kawal, Kec. Gn. Kijang, Kabupaten Bintan, Kepulauan Riau 29151', '2023-08-05 19:15:06'),
(4, 4, 'Educational tour, mangrove jungle, with very knowledgeable guide, get a chance to ride solar powered traditional boat', 'Pengudang Mangrove Tours is a popular destination for educational tours in Bintan. It offers a unique experience to explore the enchanting mangrove jungle with the guidance of highly knowledgeable guides.', '\"Embark on a mesmerizing Mangrove Tour\" Discover the secrets of nature\'s nursery, as you glide through lush greenery and encounter fascinating wildlife. Let the mangroves enchant you with their mystical charm! #MangroveTourAdventures #NatureExploration #GetCloserToWild', '5F9W+7X7, Pengudang, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:15:06'),
(5, 5, 'Locals, main mosque in pengudang', 'The mosque\'s architecture showcases a blend of traditional and modern elements, reflecting the cultural heritage of the area. Its design is inspired by Islamic aesthetics, featuring beautiful domes, minarets, and intricate calligraphy, creating a visually striking landmark within Pengudang.', 'Behold the grandeur of Masjid Nur As Adiah, A sacred sanctuary where serenity and spirituality unite. May its timeless beauty inspire us to seek peace and guidance. #MasjidNurAsAdiah #SacredSanctuary #DivineInspiration', '5GC4+24F, Jl. Hamidi, Pengudang, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:15:06'),
(6, 6, 'Free access beach, with leisure huts, food stalls', 'Leisure huts can be found along the beach at Pondok Santai Family, where tourists may find shade and relax while taking in the natural beauty of the shoreline. These huts provide a relaxing setting where guests can lay, read a book, or simply enjoy the sunshine.', 'Welcome to Pondok Santay Family Retreat. Where love and laughter bloom, and cherished memories are made. Embrace the cozy comforts of togetherness amidst nature\'s embrace. #PondokSantay #FamilyRetreat #LoveAndLaughter', 'Unnamed Road, Malang Rapat, Kec. Gn. Kijang, Kabupaten Bintan, Kepulauan Riau 29151', '2023-08-05 19:15:06'),
(7, 7, 'Traditional spiced grilled fish as specialty', 'The eatery takes pleasure in its ability to perfectly grill fish while seasoning it with a mixture of flavorful spices and herbs. The fish is grilled over an open flame after being marinated in a blend of spices that bring out more of its natural flavors. The resulting dish has a smokey, mouthwatering flavor.', 'Savor the flavors of the sea at Ikan Bakar Pondok Ciung. A culinary delight that ignites your taste buds with every bite. Indulge in the smoky goodness and let the ocean\'s bounty delight your senses. #IkanBakarPondokCiung #SeafoodSensation#CulinaryDelight', '29125, Pinang Kencana, Kec. Tanjungpinang Tim., Kota Tanjung Pinang, Kepulauan Riau 29125', '2023-08-05 19:15:06'),
(8, 8, 'Seaside resort with private beach and world class service', 'Cassia Bintan is a luxurious seaside resort that offers a remarkable experience with its private beach and world-class service. Situated in Bintan, this resort provides a tranquil and exclusive setting for guests seeking a memorable vacation.', 'At Cassia Bintan, you are able to escape to paradise. Where the beauty of nature and the comforts of today work well together. In this tropical haven, you can relax in style, soak up the sun, and make memories you\'ll never forget. #IslandGetaway #CassiaBintan #TranquilRetreat', 'Jalan Teluk Berembang Laguna Bintan Resorts, Sebong Lagoi, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau 29155', '2023-08-05 19:15:06'),
(9, 9, 'Mosque managed by PT.BRC, surrounded by trees, breezy', 'Al Muhajirin Lagoi, a mosque managed by PT.BRC Pengundang Bintan Mosque, is known for its beautiful architectural design, featuring traditional Islamic elements blended with local aesthetics. The mosque\'s structure showcases intricate calligraphy, geometric patterns, and domes, creating a visually striking presence within the surrounding area.', 'Masjid Al Muhajirin Lagoi is a place where you can find peace. A place of worship that encourages peace and a sense of togetherness. As you find peace in this holy place, let the sounds of prayers fill your heart. #Peaceful Retreat #MasjidAlMuhajirinLagoi', '', '2023-08-05 19:15:06'),
(10, 10, 'Foodcourt, masakan padang, various drinks, at reasonable price at lagoi', 'Pujasera Lagoi is a food court located in Lagoi, Bintan, offering a variety of culinary delights, particularly Padang cuisine. The food court is known for its range of dishes that showcase the flavors and spices of Padang, a cuisine originating from the West Sumatra region of Indonesia. Visitors to Pujasera Lagoi can enjoy a diverse selection of Padang dishes, including rendang (slow-cooked meat in rich coconut curry), gulai (spiced meat or vegetable stew), sambal (chili-based condiments), and a variety of grilled and fried dishes. The food court provides a casual dining environment, allowing guests to savor the flavors of Padang cuisine in a relaxed setting.', 'Experience a culinary paradise at Pujasera Lagoy A gastronomic haven where flavors from around the world come together. Treat your taste buds to a delightful journey of tastes and textures in this vibrant food haven. Bon appetit #PujaseraLagoy #FoodieParadise #GlobalFlavors', 'Bintan batam, Sri Bintan, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:15:06'),
(11, 11, 'Man-made lake, calm, with statues of Hang Tuah and Admiral Cheng Ho in the middle, surrounded by jogging track', 'Danau Buatan Lagoi is a lake that was created by humans and is in Lagoi, Bintan. The lake is a popular place to go to rest and do other fun things because it is peaceful and quiet. In the middle of Danau Buatan Lagoi, there are statues of Hang Tuah, a brave and loyal character from Malay folklore, and Admiral Cheng Ho, a famous Chinese traveler. These statues add an element of culture and history to the lake and give tourists a unique place to meet.', 'Tranquility is found at Lagoy\'s Artificial Lake. Immerse yourself in the beauty of this serene oasis, where the shimmering waters and lush surroundings create a peaceful escape. Nature\'s Gift awaits, ready to soothe your soul and rejuvenate your spirit. #LagoyArtificialLake #NatureEscape #SereneOasis.', '59FF+JFR, Bay, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:18:09'),
(12, 12, 'A bay with public access, bar, restaurant, plaza, the beach is regularly cleaned', 'Public Lagoi Bay is a bay in Lagoi, Bintan, that offers public access and a range of amenities for visitors to enjoy. The bay provides a scenic and inviting environment for recreational activities and leisurely experiences. Within Public Lagoi Bay, you can find a variety of facilities, including a bar, restaurant, and plaza. These establishments provide options for dining, refreshments, and socializing, allowing visitors to relax and enjoy their time by the bay.', 'Embrace the coastal charm of Public Lagoy Bay, a scenic destination where sun, sand, and sea unite. Get ready to bask in the warm sun, dip your toes in the crystal-clear waters, and create cherished memories with loved ones. #PublicLagoyBay #BeachsideBliss', 'Sebong Lagoi, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:18:09'),
(13, 13, 'Popular with local islander tourists, for leisure, hut styled villas, swimming pool, horse riding, archery, etc', 'Desa Wisata Ekang is a popular place on Bintan for both locals and visitors. It has a variety of services and things to do for fun, which makes it a good place to relax and have fun. Desa Wisata Ekang has hut-style houses for tourists to spend the night in, which gives them a unique and rural experience. These villas are built in the traditional way in Indonesia, which makes them cozy and charming.', 'Step into the enchanting world of Engkang Village, a captivating destination where tradition meets modernity. Immerse yourself in the rich cultural heritage, immerse in the beauty of nature, and experience the warmth of hospitality from the local. A journey of discovery awaits! #EngkangVillage #CulturalHeritage#NatureExploration', 'Teluk Sebong, Jl. Jendral Sudirman Jl. Kp. Pereh, Ekang Anculai, Sukoharjo, Kabupaten Bintan, Kepulauan Riau 29151', '2023-08-05 19:18:09'),
(14, 14, 'Serves local favorites, such as freshly caught fish with sour and spicy broth, fresh sea snails with chilli sauce, you can watch port activities here', 'Bintan\'s Warung Gong Gong Bu Adel is a local restaurant that serves a lot of the island\'s favorite meals. This small restaurant, called a \\\"warung,\\\" is known for its delicious, authentic food that shows off the flavors of the area. At Warung Gong Gong Bu Adel, one of the specialties is recently caught fish served in a sour and spicy broth. This dish sets out how fresh the seafood is and pairs it with a tasty and spicy broth that makes your taste buds dance.', 'Experience the culinary delights of Warung Gong Gong Bu Adel. A hidden gem serving up the freshest seafood flavors. Indulge in the mouthwatering gong gong dishes and let your taste buds dance with delight. A taste sensation you won\'t want to miss! #WarungGongGongBuAdel #SeafoodSensation #FoodieParadise', 'Kampung Jl. Dompak Lama, RT.01/RW.03, Dompak, Kec. Bukit Bestari, Kota Tanjung Pinang, Kepulauan Riau 29124', '2023-08-05 19:18:09'),
(15, 15, 'Serves seafood, located right beside a large river, you can eat while catching glimpses of wildlifes and boat passing by', 'Rumah Makan Awang Sungai is a dining establishment that specializes in serving seafood dishes. Situated right beside a large river, this restaurant offers a unique dining experience with picturesque views and glimpses of wildlife. The restaurant\'s prime location allows guests to enjoy their meal while being surrounded by the beauty of nature. As you dine, you may catch glimpses of wildlife, such as birds or other river-dwelling creatures, adding an element of natural serenity to your dining experience.', 'Welcome to Rumah Makan Awang Sungai Where the river flows and flavors flourish. Treat yourself to a delightful culinary journey with our mouthwatering dishes, surrounded by the serenity of nature. Come, dine, and create cherished memories by the riverside. #RumahMakanAwangSungai #RiversideDining #FlavorsOfNature', 'WFVF+934, Kp. Bugis, Kec. Tj. Pinang Kota, Kota Tanjung Pinang, Kepulauan Riau 29115', '2023-08-05 19:18:09'),
(16, 16, 'A grand mosque in bintan, view directly to Tanjung Pinang Bay', 'Raya Nur Ilahi Mosque is known for its beautiful architectural design, featuring traditional Islamic elements blended with local aesthetics. The mosque\'s structure showcases intricate calligraphy, geometric patterns, and domes, creating a visually striking presence within the surrounding area.', 'Step into the sacred haven of Masjid Raya Nur Ilahi. A place of worship that illuminates hearts with divine light. Join in prayers and seek solace in the peaceful ambiance, where faith and spirituality converge. #MasjidRayaNurIlahi #SacredSanctuary #DivineGuidance', 'VFM3+VFP, PULAU, Dompak, Bukit Bestari, Tanjung Pinang City, Riau Islands', '2023-08-05 19:18:09'),
(17, 17, 'Newly build bridge that gives you bosphorus strait feels to it', 'Jembatan Dempak Baru is a newly constructed bridge that offers a unique experience reminiscent of the Bosphorus Strait. The bridge is designed in a way that evokes the charm and ambiance of the famous strait, providing visitors with a special atmosphere during their crossing. Located in its own distinctive setting, Jembatan Dempak Baru offers scenic views that resemble the picturesque landscapes often associated with the Bosphorus Strait. As you travel across the bridge, you can enjoy panoramic vistas of surrounding areas, which may include rivers, coastlines, or other captivating natural scenery.', 'Crossing new horizons on Jembatan Dampak Baru Connecting communities and bridging dreams. Let this modern marvel take you on a journey of possibilities, as you explore the world beyond the waters. #JembatanDampakBaru #ConnectingCommunities #BridgingDreams', 'WFJR+4W6, Jl. Raya Tj. Uban - Tj. Pinang, Tj. Uban Utara, Bintan Utara, Kabupaten Bintan, Kepulauan Riau 29152', '2023-08-05 19:18:09'),
(18, 18, 'Connecting Tanjung Pinang and Senggarang with small traditional boat \"pompong\"', 'Pelantar I is a small traditional boat service that connects Tanjung Pinang and Senggarang. The boat used for this service is known as a \"pompong,\" a traditional type of vessel commonly found in the region. The purpose of Pelantar I is to provide transportation for locals and visitors between Tanjung Pinang and Senggarang. This boat service offers a convenient and efficient means of crossing the waterway between these two destinations.', 'Venture into the offshore world from Pelantar 1. Embrace the vastness of the ocean as you set sail towards new adventures. Witness the breathtaking beauty of the sea and discover the wonders it holds beneath the surface. #Pelantar1 #OffshoreExploration #OceanAdventures', 'Jln Pelantar, Tanjungpinang Kota, Kec. Tj. Pinang Kota, Kota Tanjung Pinang, Kepulauan Riau', '2023-08-05 19:18:09'),
(19, 19, 'Traditional Indonesian fried snack stall, served by transmigrants from Java', 'Goreng-goreng Pakde Petruk is a traditional Indonesian fried snack stall located in Pegundang, Bintan. This stall is known for serving a variety of delicious fried snacks that are popular among locals and visitors. The fact that transmigrant workers from Java run Goreng-goreng Pakde Petruk makes it special. Transmigrants are individuals who have relocated from one region to another within a country, typically for various reasons such as economic opportunities or government programs. In this case, the transmigrants from Java bring their culinary expertise and traditions to Bintan, offering authentic flavors and recipes from their home region.', 'Delight in the crispy goodness of Goreng-goreng Pakde Petruk. A culinary masterpiece that tantalizes your taste buds with every bite. Enjoy a variety of mouthwatering fried dishes, lovingly prepared to perfection. A true feast for the senses! #GorengGorengPakdePetruk #CrispyDelights #FoodieHaven', 'WC9W+V35, Bukit Cermin, Kec. Tanjungpinang Bar., Kota Tanjung Pinang, Kepulauan Riau', '2023-08-05 19:18:09'),
(20, 20, 'Traditional Minang restaurant, serves fried rice and martabak', 'Bofet Pak Haji is a traditional Minang restaurant known for its flavorful dishes in Bintan. This restaurant specializes in serving delicious fried rice and martabak, two popular Indonesian culinary delights. The fried rice at Bofet Pak Haji is prepared with aromatic spices and a variety of ingredients, creating a flavorful and satisfying meal. The dish typically includes rice stir-fried with vegetables, meat, and spices, resulting in a savory and fragrant combination. Martabak, on the other hand, is a beloved Indonesian street food that is often enjoyed as a snack or a meal. It consists of a crispy, pan-fried pastry filled with various ingredients, such as meat, vegetables, and eggs. The fillings are cooked until they are tender and well-seasoned, making each bite a delightful burst of flavors.', 'Experience a culinary delight at Bofet Pak Haji. A treasure trove of flavors awaits, where traditional recipes and modern creations come together in harmony. Let your taste buds revel in the richness of our dishes, crafted with love and passion. A dining experience like no other! #BofetPakHaji#CulinaryTreasures#TasteOfTradition', '', '2023-08-05 19:18:09'),
(21, 21, 'Locally owned and operated homestay and restaurant, few meters away from the beachfront', 'Homestay Siti Rapeah is a locally owned and operated establishment in Bintan that offers both homestay accommodations and a restaurant. Situated just a few meters away from the beachfront, it provides a convenient and relaxing setting for visitors. As a homestay, Siti Rapeah offers comfortable accommodations for guests, allowing them to experience the warmth and hospitality of a local home. The homestay is likely to have cozy rooms or cottages equipped with essential amenities to ensure a pleasant stay.', 'Discover a home away from home at Homestay Siti Rapeah Embrace the warmth of hospitality as you immerse yourself in the local culture and traditions. Let the comfort and charm of this homestay make your stay truly unforgettable. Welcome to your cozy sanctuary! #HomestaySitiRapeah #HomeAwayFromHome #LocalHospitality', 'JL Hangtuah, Gg Pisang Kel, Kota baru Kec Teluk Sebong, Bintan Kepulauan Riau, Ekang Anculai, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau 29154', '2023-08-05 19:21:42'),
(22, 22, 'Public beach, with serene view of the sea, blue water', 'Pantai Batu Empang is a public beach located in Pegundang, Bintan. It offers visitors a serene and picturesque view of the sea with its crystal-clear, blue waters. As a public beach, Pantai Batu Empang is accessible to both locals and tourists, providing a relaxing and enjoyable environment for everyone. The beach is known for its tranquility, allowing visitors to unwind and soak in the natural beauty of the surroundings.', 'Pantai Batu Empang is an amazing paradise. A peaceful seaside hideaway where your cares disappear with the tide. Enjoy the calm of the ocean and the beautiful sky as the sun sets. Sunsets at Pantai Batu Empang are spectacular. #PantaiBatuEmpang #BeachRetreat #SunsetMagic', '5G92+M9Q, Pengudang, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:21:42'),
(23, 23, 'A dock in Batulimpang Beach, with bench to enjoy the view', 'Dermaga Batu Empang is a dock located at Batu Empang Beach, Bintan. This dock serves as a point of access to the beach and provides visitors with a place to enjoy the view and soak in the coastal ambiance. The dock at Dermaga Batu Empang offers a convenient spot for visitors to sit and relax while taking in the surrounding scenery. With benches available, people can comfortably enjoy the view of the beach, the shimmering waters, and the coastal landscape.', 'Dermaga Batu Empang is the place where unforgettable travels begin. Enjoy the calm of the ocean and the breathtaking views of the horizon as you set sail towards unfamiliar and fascinating lands. Follow the ocean\'s lead. Sail away from #DermagaBatuEmpang, the Gateway to Adventures.  #GatewayToAdventures #SailAway ', '5G92+M9Q, Pengudang, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:21:42'),
(24, 24, 'Locally owned and operated homestay and restaurant, few meters away from the beachfront', 'Warung dan Homestay \"Bunda\" is a locally owned and operated establishment that offers both homestay accommodations and a restaurant. Situated just a few meters away from the beachfront, it provides a convenient and immersive experience for visitors. As a homestay, \"Bunda\" offers comfortable accommodations with a personal touch. Guests can expect cozy rooms or cottages equipped with essential amenities for a pleasant stay. The locally owned aspect of the homestay adds a warm and welcoming atmosphere, allowing guests to experience the hospitality of the region.', 'Warung & Homestay \"Bunda\" offers cozy accommodation and a restaurant near the beach. Experience the comfort and warm local hospitality. #BundaHomestay #LocalExperience', 'Jl. Hamidi Gg. Anggrek merah No.209, RT.7/RW.3, Pengudang, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau 29152', '2023-08-05 19:21:42'),
(25, 25, 'Public beach, with leisure hut, and restaurant. Blue water, beautiful rock formation, and white sand', 'Trikora 3 is a public beach in Bintan known for its leisure and relaxation offerings, culinary delights, and stunning natural features. The beach provides a serene environment for visitors to unwind and enjoy the beauty of their surroundings. At Trikora 3, you\'ll find leisure huts where you can relax and take in the picturesque view of the beach. These huts provide shade and comfort, allowing visitors to lounge and enjoy the coastal ambiance at their own pace.', 'Trikora 3, Bintan\'s beach haven, awaits with relaxation, delightful cuisines, and nature\'s charm. Unwind in leisure huts and savor the serene coastal vibes! #Trikora3Beauty #BintanRelaxation', '4HGW+QJV, Malang Rapat, Kec. Gn. Kijang, Kabupaten Bintan, Kepulauan Riau 29151', '2023-08-05 19:21:42'),
(26, 26, 'A pizzeria, founded by an Italian. Baked in real pizza oven with wood fire, crispy dough, and variety of topping. With beautiful beach view, small island that accessible during low tide.', 'Pizza Casa Italia is a charming pizzeria located in Bintan, founded by an Italian entrepreneur. It offers a delightful dining experience with its authentic Italian pizzas baked in a traditional wood-fired pizza oven. The pizzeria is known for its crispy and flavorful pizza dough, which is prepared using high-quality ingredients and traditional techniques. The pizzas are topped with a variety of ingredients, ranging from classic options like Margherita and Pepperoni to more creative and unique combinations, catering to different tastes and preferences.', 'Dive into authentic Italian flavors at Pizza Casa Italia in Bintan! Indulge in crispy pizzas, baked traditionally, with a range of toppings to choose from. Buon Appetito! #PizzaCasaItalia #TasteOfItaly #GourmetDelights #PizzaCasaItalia #BintanPizzaBliss', '4JF2+RG3, Malang Rapat, Kec. Gn. Kijang, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:21:42'),
(27, 27, 'A small museum managed by local tourism board. Depict marine society and life around Bintan. Very knowledgeable guide. ', 'The local tourism board oversees Museum Bahari Bintan, a small museum in Bintan. The museum focuses on showcasing the marine society and life around the Bintan region, offering visitors a glimpse into the rich maritime heritage of the area. Inside the museum, you can expect to find exhibits and displays that highlight various aspects of marine life, fishing traditions, seafaring culture, and the significance of the sea in the local community. These exhibits aim to educate and inform visitors about the historical and cultural importance of the maritime industry in Bintan.', 'Step into the maritime history at Museum Bahari Binta explore the rich heritage of seafaring traditions and maritime adventures. Delve into captivating exhibits that tell tales of brave voyages and the ocean\'s wonders. A voyage of knowledge and discovery awaits! #MuseumBahariBinta #MaritimeHeritage #OceanExploration', '2MF2+PQC, Trikora Rd, km 36,, Tlk. Bakau, Kec. Gn. Kijang, Kabupaten Bintan, Kepulauan Riau 29151', '2023-08-05 19:21:42'),
(39, 39, 'Serves otak-otak as specialty', 'Rumah Makan Pak Sidin is a local restaurant in Bintan known for its specialty dish called otak-otak. Otak-otak is a popular Indonesian delicacy made from a mixture of fish, spices, and herbs, wrapped in banana leaves, and grilled to perfection. At Rumah Makan Pak Sidin, you can expect to savor the authentic flavors of otak-otak. The restaurant takes pride in preparing this specialty dish using traditional recipes and high-quality ingredients. The fish mixture is expertly seasoned with a blend of aromatic spices, creating a flavorful and satisfying culinary experience.', 'Experience the authentic taste of Indonesian otak-otak at Rumah Makan Pak Sidin in Bintan. Dive into this flavorful delicacy, grilled to perfection with tradition and quality. #PakSidinDelights #BintanOtakOtakMagic', '', '2023-08-05 19:21:42'),
(40, 40, 'Grand Mosque with pink exterior, popular with locals', 'Raya An-Nur Kawal Mosque is known for its beautiful architectural design, featuring traditional Islamic elements blended with local aesthetics. The mosque\'s structure showcases intricate calligraphy, geometric patterns, and domes, creating a visually striking presence within the surrounding area.', 'Masjid Raya AnNur Kawal is a place of spiritual comfort and enlightenment. In your quest for faith and knowledge, allow the divine light to guide the way. Masjid Raya AnNurKawal is a place of peace and divine guidance. The Raya Sultan Riau Mosque is a stunning example of Islamic architecture, with its design incorporating aspects of local style and culture. The mosque\'s design features exquisite calligraphy, geometric designs, and domes, making it stand out from its surroundings. #MasjidRayaAnNurKawal #SacredSanctuary #DivineGuidance', '', '2023-08-05 19:21:42'),
(41, 41, 'Serves variety of seafood cooked in different ways, also serves seafood platter consisting of shrimp, crab, cuttlefish, and gong-gong.', '3 Brothers Kuliner is a restaurant in Bintan that specializes in serving a variety of seafood dishes prepared in different ways. It offers a wide range of options for seafood lovers to indulge in the freshest catches of the day. The restaurant takes pride in its diverse menu, featuring an array of seafood cooked using various methods. From grilled and steamed to fried and sauteed, you can expect a flavorful and satisfying dining experience at 3 Brothers Kuliner.', 'Dive into a seafood feast at our restaurant! From shrimp to gong-gong, savor every bite of our diverse dishes and signature platters. #SeafoodSensation #PlatterPerfection', '', '2023-08-05 19:21:42'),
(42, 42, 'Experience a swift journey with Dermaga Penyeberangan! Linking Tanjung Pinang to Penyengat Island, enjoy breathtaking coastal views during your 5-10 minute ride.', 'Depending on how rough the sea is, the boat journey from Dermaga Penyeberangan to Penyengat Island takes between five and ten minutes. During the short journey, you can enjoy stunning views of the water and land along the coast. Dermaga Penyeberangan is a ferry that links Tanjung Pinang to Penyengat Island. It is also the only way to get to this lovely island. It makes it quick and simple for people to take a boat trip and see the beauty of Penyengat Island.', 'Experience a swift journey with Dermaga Penyeberangan! Linking Tanjung Pinang to Penyengat Island, enjoy breathtaking coastal views during your 5-10 minute ride. #IslandHopping #PenyengatAdventure', 'Penyengat, Kec. Tj. Pinang Kota, Kota Tanjung Pinang, Kepulauan Riau', '2023-08-05 19:24:29'),
(43, 43, 'A bustling small port with local arem-arem and restaurants', 'On Penyengat Island in Bintan, Pelabuhan Pulau Penyegat is a busy little port. It is a busy center for transportation and trade. It has a lively atmosphere and gives tourists an unusual glimpse into the culture of the area. At Pelabuhan Pulau Penyegat, there are a lot of lovely local coffee shops and restaurants that add to the lively atmosphere of the port. These places are a great way to enjoy the scents of the area and taste real Indonesian food. From delicious local coffee to meals made with fresh ingredients, the coffee shops and restaurants at the port have a lot to offer when it comes to food.', 'Welcome to Pelabuhan Pulau Penyegat Your gateway to island paradise and maritime adventures. Feel the sea breeze and witness the beauty of Pulau Penyegat as you embark on memorable journeys. Let the ocean embrace you with its wonders and create cherished memories at this enchanting port. #PelabuhanPulauPenyegat #IslandGateway #MaritimeAdventures', 'Penyengat, Kec. Tj. Pinang Kota, Kota Tanjung Pinang, Kepulauan Riau', '2023-08-05 19:24:29'),
(44, 44, 'Old  historical mosque, with a mix of malay, indian, and turkish architecture', 'The Raya Sultan Riau Mosque is famous for its beautiful design, which combines traditional Islamic elements with local styles. The structure of the mosque has beautiful calligraphy, patterns of geometry, and domes that make it stand out from the rest of the area.', 'Find solace in the divine aura of Masjid Raya Sultan Ria Let the majesty of this grand mosque inspire your soul as you seek spiritual tranquility. With its breathtaking architecture and serene atmosphere, it beckons you to immerse in prayers and reflection. Welcome to a sacred haven of peace and devotion. #MasjidRayaSultanRia #SpiritualTranquility #DivineAura ', 'WCHC+Q55, Penyengat, Kec. Tj. Pinang Kota, Kota Tanjung Pinang, Kepulauan Riau 29114', '2023-08-05 19:24:29'),
(45, 45, 'A Large Park, with driveable dike, with a lot of street food stalls, perfect for watching sunset, jogging, and cycling', 'Taman Tepi Laut is a large park located by the seaside, offering a picturesque setting for visitors to enjoy various recreational activities. The park features a driveable dike, providing a scenic route for leisurely drives or cycling adventures. One of the highlights of Taman Tepi Laut is the abundance of street food stalls, offering a diverse selection of local culinary delights. From savory snacks to delicious desserts, visitors can indulge in a wide range of flavors while exploring the park. It\'s the perfect opportunity to satisfy your taste buds and immerse yourself in the local food culture.', 'Escape to the beauty of Taman Tepi Lau Embrace the serenity of nature as you stroll along the tranquil edges of the lake. Let the lush greenery and serene waters rejuvenate your soul and inspire moments of peace and reflection. A picturesque retreat awaits you! #TamanTepiLau #NatureRetreat #TranquilBeauty', '', '2023-08-05 19:24:29'),
(46, 46, 'An old ship that turned into a hotel', '-', 'Step aboard the realm of maritime enchantment and modern luxury at Doulos Phos: The Ship Hotel. Where every moment is a voyage, and every stay is an unforgettable chapter in your seafaring story. #DoulosPhos #MaritimeLuxury #UnforgettableVoyages', '5868+9C5, Kawasan Pariwisata Lagoi, Sebong Lagoi, Teluk Sebong, Bintan Regency, Riau Islands 29155', '2023-08-05 19:24:29'),
(47, 47, 'Sea side village with community-run tourism, beach, mangrove, and homestays', 'Pegudang Village is a quiet place to get away from the noise and bustle of city life. It is tucked away in the lush greenery of Bintan Island. The traditional houses in the town have intricate carvings and brightly colored fronts that give it a real country feel. As you walk through the town, the sounds of nature, like the soft rustling of palm trees and the melodic chirping of birds, help to calm you down. The people who live there welcome you with open arms and are eager to show you how they live and what they do. You can see how simple life is in a town as you walk through green rice fields and watch people do traditional things like fishing and farming. Pegudang Village, with its rustic beauty and friendly people, is a great place to find peace and learn about the island\'s history and culture.The Raya Sultan Riau Mosque is famous for its beautiful design, which combines traditional Islamic elements with local styles. The structure of the mosque has intricate calligraphy, geometric designs, and domes that make it stand out from the rest of the area.', 'Discover the serene Pegudang Village on Bintan Island - a picturesque escape from the city\'s hustle. Embrace traditional life, vibrant houses, and the iconic Raya Sultan Riau Mosque\'s architectural wonder. Experience tranquility and immerse yourself in local culture. #PegudangParadise #BintanBeauty #HistoricMosqueMagic', '4GW4+6WJ, Pengudang, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:24:29'),
(48, 48, 'Pengudang Multifunction Hall', 'Discover the versatility of Pengudang Multifunction Hall. Perfect for any event, gathering, or celebration', 'Discover the versatility of Pengudang Multifunction Hall. Perfect for any event, gathering, or celebration. #PengudangEvents #Multifunction', '', '2023-08-05 19:24:29'),
(49, 49, 'Bintan Green Mangrove Tour offers a unique and serene experience to explore the beautiful mangrove forest in Bintan, Indonesia. Navigate through lush canals, encounter diverse flora and fauna, and learn about the importance of preserving this vital ecosystem.', 'Bintan Green Mangrove Tour is a unique experience that offers the opportunity to explore and appreciate the beauty of the mangrove forest in Bintan, Indonesia. The tour is usually conducted using boats or kayaks to navigate through the lush and captivating mangrove canals. During the tour, participants can witness diverse flora and fauna that inhabit the area while learning about the importance of mangrove ecosystem preservation for the environment. The tour provides a chance to get close to nature and experience serenity amidst the natural beauty of Bintan.', 'Embark on the Bintan Green Mangrove Tour and journey through nature\'s masterpiece. Kayak amidst vibrant mangroves, discover diverse wildlife, and understand the importance of preserving this delicate ecosystem. Dive into Bintan\'s natural treasure! #MangroveMagic #BintanEcoAdventure #NatureEscape', 'Jalan Margo Utomo, kp sidomulyo no 15. Penghijauan - Sebong Pereh - Km 68, Sebong Lagoi, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau 29152', '2023-08-05 19:24:29'),
(50, 50, 'Batu Junjung Beach is a captivating coastal paradise in Bintan, facing the South China Sea. Conveniently located near the main road, this beach is easily accessible to visitors. Batu Junjung is renowned for its stunning natural beauty, with white sandy shores, clear turquoise waters, and lush green surroundings.', 'Batu Junjung Beach is a captivating coastal paradise located in Bintan, an island gem in Indonesia, facing the mesmerizing South China Sea. Its convenient proximity to the main road makes it easily accessible to visitors from all around, ensuring that anyone can revel in its splendor. Renowned for its breathtaking natural beauty, the beach boasts stretches of powdery white sandy shores that glisten under the tropical sun, inviting beachgoers to take leisurely strolls along the water\'s edge. The crystal-clear turquoise waters gently lap against the shoreline, offering a refreshing respite for those seeking to cool off and immerse themselves in the rejuvenating embrace of the ocean. The enchanting scene is further accentuated by the lush green surroundings, where coconut palms sway gracefully in the ocean breeze, and vibrant flora adds a burst of color to the already picturesque landscape. Whether you seek relaxation, adventure, or a simple moment of tranquility, Batu Junjung Beach promises an unforgettable escape and a glimpse of paradise on Earth.', 'Discover paradise at Pantai Batu Junjun  A hidden gem where sun-kissed sands meet crystal-clear waters. Immerse in the soothing sounds of waves and bask in the warm glow of the sun. Let the beauty of nature mesmerize you as you create unforgettable memories by the sea. #PantaiBatuJunjun #BeachBliss #SeasideEscape', 'Sebong Lagoi, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau', '2023-08-05 19:24:29'),
(51, 51, 'Explore the historical and natural beauty of Penyengat Island in Bintan Describe the experience and attractions of this island, including historical sites, local culture, natural beauty, and activities that can be enjoyed by tourists', 'Embark on a captivating journey as you step foot onto Penyengat Island in Bintan, where history and natural beauty intertwine seamlessly. Explore the echoes of a regal past through the remnants of the Johor-Riau Sultanate, from the grandeur of the Sultan\'s Palace to the iconic Raja Haji Fisabilillah Mosque. Immerse yourself in the island\'s vibrant local culture, savor traditional cuisine, and witness the intricate art of batik-making. Delight in the serenity of pristine beaches and lush landscapes, where outdoor adventures await, from snorkeling in clear waters to embracing the rhythm of the ocean on a traditional fishing boat. Let Penyengat Island\'s enchanting narrative become your own, weaving unforgettable memories of a timeless and awe-inspiring destination.', 'Unveiling the treasures of Penyengat Island where history comes alive, culture thrives, and nature\'s beauty takes center stage. Step into a world of timeless charm and endless wonders.  #PenyengatIsland #BintanExploration #CulturalHeritage', 'Penyengat, Kec. Tj. Pinang Kota, Kota Tanjung Pinang, Kepulauan Riau', '2023-08-05 19:24:29'),
(52, 52, 'Laguna Golf Bintan, a tropical golfing paradise located in Bintan, Indonesia. Designed by Greg Norman, it offers an unforgettable golfing experience amidst stunning coastal views and lush greenery, catering to players of all skill levels.', 'Laguna Golf Bintan is a paradise for golf enthusiasts located on the tropical island of Bintan, Indonesia. Surrounded by breathtaking natural beauty, this golf course offers an unforgettable golfing experience with stunning coastal views and enchanting green forests. Designed by Greg Norman, the course provides challenges for players of all skill levels with diverse routes and top-notch facilities. Moreover, the opportunity to witness mesmerizing sunsets makes a visit to Laguna Golf Bintan an extraordinary moment for golf and nature lovers.', 'Escape to paradise and swing into unforgettable moments at Laguna Golf Bintan Immerse yourself in the beauty of this tropical oasis, where lush greens meet stunning coastal views. Designed by Greg Norman, this golfing haven offers challenges and thrills for every golfer. Don\'t miss the chance to experience breathtaking sunsets that will leave you in awe.  #LagunaGolfBintan #TropicalGolfParadise #GolfingHaven #SunsetViews #UnforgettableMoments', 'Jalan Teluk Berembang Laguna Bintan Resort Lagoi 29155 Bintan Resort, Sebong Lagoi, Kec. Tlk. Sebong, Kabupaten Bintan, Kepulauan Riau 29155', '2023-08-05 19:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `tosee_images`
--

CREATE TABLE `tosee_images` (
  `images_id` int(15) NOT NULL,
  `images` varchar(225) NOT NULL,
  `tosee_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tosee_images`
--

INSERT INTO `tosee_images` (`images_id`, `images`, `tosee_id`, `created`) VALUES
(1, 'Kedai-Kopi-Batu-10-1.webp', 1, '2023-06-20 21:22:26'),
(2, 'Kedai-Kopi-Batu-10-2.webp', 1, '2023-06-20 21:22:26'),
(3, 'Kedai-Kopi-Batu-10-3.webp', 1, '2023-06-20 21:22:26'),
(4, 'Kedai-Kopi-Batu-10-4.webp', 1, '2023-06-20 21:22:26'),
(5, 'Kedai-Kopi-Batu-10-5.webp', 1, '2023-06-20 21:22:26'),
(6, 'Trikora-1.webp', 3, '2023-06-20 21:22:26'),
(7, 'Trikora-2.webp', 3, '2023-06-20 21:22:26'),
(8, 'Trikora-3.webp', 3, '2023-06-20 21:22:26'),
(9, 'Pengudang-Mangrove-Tours-1.webp', 4, '2023-06-20 21:22:26'),
(10, 'Pengudang-Mangrove-Tours-2.webp', 4, '2023-06-20 21:22:26'),
(11, 'Pengudang-Mangrove-Tours-3.webp', 4, '2023-06-20 21:22:26'),
(12, 'Pengudang-Mangrove-Tours-4.webp', 4, '2023-06-20 21:22:26'),
(13, 'Pengudang-Mangrove-Tours-5.webp', 4, '2023-06-20 21:22:26'),
(14, 'Pengudang-Mangrove-Tours-6.webp', 4, '2023-06-20 21:22:26'),
(15, 'Pengudang-Mangrove-Tours-7.webp', 4, '2023-06-20 21:22:26'),
(16, 'Pengudang-Mangrove-Tours-8.webp', 4, '2023-06-20 21:22:26'),
(17, 'Pengudang-Mangrove-Tours-9.webp', 4, '2023-06-20 21:22:26'),
(18, 'Pengudang-Mangrove-Tours-10.webp', 4, '2023-06-20 21:22:26'),
(19, 'Pengudang-Mangrove-Tours-11.webp', 4, '2023-06-20 21:22:26'),
(20, 'Pengudang-Mangrove-Tours-12.webp', 4, '2023-06-20 21:22:26'),
(21, 'Pengudang-Mangrove-Tours-13.webp', 4, '2023-06-20 21:22:26'),
(22, 'Pengudang-Mangrove-Tours-14.webp', 4, '2023-06-20 21:22:26'),
(23, 'Pengudang-Mangrove-Tours-15.webp', 4, '2023-06-20 21:22:26'),
(24, 'Pengudang-Mangrove-Tours-16.webp', 4, '2023-06-20 21:22:26'),
(25, 'Pengudang-Mangrove-Tours-17.webp', 4, '2023-06-20 21:22:26'),
(26, 'Pengudang-Mangrove-Tours-18.webp', 4, '2023-06-20 21:22:26'),
(27, 'Pengudang-Mangrove-Tours-19.webp', 4, '2023-06-20 21:22:26'),
(28, 'Pengudang-Mangrove-Tours-20.webp', 4, '2023-06-20 21:22:26'),
(29, 'Pengudang-Mangrove-Tours-21.webp', 4, '2023-06-20 21:22:26'),
(30, 'Pengudang-Mangrove-Tours-22.webp', 4, '2023-06-20 21:22:26'),
(31, 'Pengudang-Mangrove-Tours-23.webp', 4, '2023-06-20 21:22:26'),
(32, 'Pengudang-Mangrove-Tours-24.webp', 4, '2023-06-20 21:22:26'),
(33, 'Pengudang-Mangrove-Tours-25.webp', 4, '2023-06-20 21:22:26'),
(34, 'Masjid-Nur-Asadiyah-1.webp', 5, '2023-06-20 21:26:25'),
(35, 'Masjid-Nur-Asadiyah-2.webp', 5, '2023-06-20 21:26:25'),
(36, 'Pondok-Santai-Family-1.webp', 6, '2023-06-20 21:26:25'),
(37, 'Pondok-Santai-Family-2.webp', 6, '2023-06-20 21:26:25'),
(38, 'Pondok-Santai-Family-3.webp', 6, '2023-06-20 21:26:25'),
(39, 'Pondok-Santai-Family-4.webp', 6, '2023-06-20 21:26:25'),
(40, 'Pondok-Santai-Family-5.webp', 6, '2023-06-20 21:26:25'),
(41, 'Pondok-Santai-Family-6.webp', 6, '2023-06-20 21:26:25'),
(42, 'Pondok-Santai-Family-7.webp', 6, '2023-06-20 21:26:25'),
(43, 'Pondok-Santai-Family-8.webp', 6, '2023-06-20 21:26:25'),
(44, 'Pondok-Santai-Family-9.webp', 6, '2023-06-20 21:26:25'),
(45, 'Ikan-Bakar-Pondok-Ciung-1.webp', 7, '2023-06-20 21:26:25'),
(46, 'Cassia-Bintan-1.webp', 8, '2023-06-20 21:26:25'),
(47, 'Cassia-Bintan-2.webp', 8, '2023-06-20 21:26:25'),
(48, 'Cassia-Bintan-3.webp', 8, '2023-06-20 21:26:25'),
(49, 'Pujasera-Lagoi-1.webp', 10, '2023-06-20 21:26:25'),
(50, 'Danau-Buatan-Lagoi-1.webp', 11, '2023-06-20 21:30:34'),
(51, 'Danau-Buatan-Lagoi-2.webp', 11, '2023-06-20 21:30:34'),
(52, 'Danau-Buatan-Lagoi-3.webp', 11, '2023-06-20 21:30:34'),
(53, 'Danau-Buatan-Lagoi-4.webp', 11, '2023-06-20 21:30:34'),
(54, 'Danau-Buatan-Lagoi-5.webp', 11, '2023-06-20 21:30:34'),
(55, 'Public-Lagoi-Bay-1.webp', 12, '2023-06-20 21:30:34'),
(56, 'Public-Lagoi-Bay-2.webp', 12, '2023-06-20 21:30:34'),
(57, 'Public-Lagoi-Bay-3.webp', 12, '2023-06-20 21:30:34'),
(58, 'Public-Lagoi-Bay-4.webp', 12, '2023-06-20 21:30:34'),
(59, 'Public-Lagoi-Bay-5.webp', 12, '2023-06-20 21:30:34'),
(60, 'Desa-Wisata-Ekang-1.webp', 13, '2023-06-20 21:30:34'),
(61, 'Desa-Wisata-Ekang-2.webp', 13, '2023-06-20 21:30:34'),
(62, 'Desa-Wisata-Ekang-3.webp', 13, '2023-06-20 21:30:34'),
(63, 'Desa-Wisata-Ekang-4.webp', 13, '2023-06-20 21:30:34'),
(64, 'Desa-Wisata-Ekang-5.webp', 13, '2023-06-20 21:30:34'),
(65, 'Desa-Wisata-Ekang-6.webp', 13, '2023-06-20 21:30:34'),
(66, 'Desa-Wisata-Ekang-7.webp', 13, '2023-06-20 21:30:34'),
(67, 'Desa-Wisata-Ekang-8.webp', 13, '2023-06-20 21:30:34'),
(68, 'Desa-Wisata-Ekang-9.webp', 13, '2023-06-20 21:30:34'),
(69, 'Warung-Gong-Gong-Bu-Adel-1.webp', 14, '2023-06-20 21:30:34'),
(70, 'Warung-Gong-Gong-Bu-Adel-2.webp', 14, '2023-06-20 21:30:34'),
(71, 'Warung-Gong-Gong-Bu-Adel-3.webp', 14, '2023-06-20 21:30:34'),
(72, 'Warung-Gong-Gong-Bu-Adel-4.webp', 14, '2023-06-20 21:30:34'),
(73, 'Warung-Gong-Gong-Bu-Adel-5.webp', 14, '2023-06-20 21:30:34'),
(74, 'Rumah-Makan-Awang-Sungai-1.webp', 15, '2023-06-20 21:35:12'),
(75, 'Rumah-Makan-Awang-Sungai-2.webp', 15, '2023-06-20 21:35:12'),
(76, 'Rumah-Makan-Awang-Sungai-3.webp', 15, '2023-06-20 21:35:12'),
(77, 'Rumah-Makan-Awang-Sungai-4.webp', 15, '2023-06-20 21:35:12'),
(78, 'Rumah-Makan-Awang-Sungai-5.webp', 15, '2023-06-20 21:35:12'),
(79, 'Rumah-Makan-Awang-Sungai-6.webp', 15, '2023-06-20 21:35:12'),
(80, 'Masjid-Raya-Nur-Ilahi-1.webp', 16, '2023-06-20 21:35:12'),
(81, 'Masjid-Raya-Nur-Ilahi-2.webp', 16, '2023-06-20 21:35:12'),
(82, 'Masjid-Raya-Nur-Ilahi-3.webp', 16, '2023-06-20 21:35:12'),
(83, 'Masjid-Raya-Nur-Ilahi-4.webp', 16, '2023-06-20 21:35:12'),
(84, 'Masjid-Raya-Nur-Ilahi-5.webp', 16, '2023-06-20 21:35:12'),
(85, 'Masjid-Raya-Nur-Ilahi-6.webp', 16, '2023-06-20 21:35:12'),
(86, 'Jembata-Dempak-Baru-1.webp', 17, '2023-06-20 21:35:12'),
(87, 'Jembata-Dempak-Baru-2.webp', 17, '2023-06-20 21:35:12'),
(88, 'Jembata-Dempak-Baru-3.webp', 17, '2023-06-20 21:35:12'),
(89, 'Jembata-Dempak-Baru-4.webp', 17, '2023-06-20 21:35:12'),
(90, 'Pelantar-1.webp', 18, '2023-06-20 21:35:12'),
(91, 'Pelantar-2.webp', 18, '2023-06-20 21:35:12'),
(92, 'Pelantar-3.webp', 18, '2023-06-20 21:35:12'),
(93, 'Pelantar-4.webp', 18, '2023-06-20 21:35:12'),
(94, 'Pelantar-5.webp', 18, '2023-06-20 21:35:12'),
(95, 'Pelantar-6.webp', 18, '2023-06-20 21:35:12'),
(96, 'Pelantar-7.webp', 18, '2023-06-20 21:35:12'),
(97, 'Goreng-goreng-Pakde-Petruk-1.webp', 19, '2023-06-20 21:39:40'),
(98, 'Homestay-Siti-Rapeah-1.webp', 21, '2023-06-20 21:39:40'),
(99, 'Pantai-Batumpang-1.webp', 22, '2023-06-20 21:39:40'),
(100, 'Pantai-Batumpang-2.webp', 22, '2023-06-20 21:39:40'),
(101, 'Pantai-Batumpang-3.webp', 22, '2023-06-20 21:39:40'),
(102, 'Dermaga-Batumpang-1.webp', 23, '2023-06-20 21:39:40'),
(103, 'Dermaga-Batumpang-2.webp', 23, '2023-06-20 21:39:40'),
(104, 'Dermaga-Batumpang-3.webp', 23, '2023-06-20 21:39:40'),
(105, 'Dermaga-Batumpang-4.webp', 23, '2023-06-20 21:39:40'),
(106, 'Dermaga-Batumpang-5.webp', 23, '2023-06-20 21:39:40'),
(107, 'Warung-dan-Homestay-Bunda-1.webp', 24, '2023-06-20 21:39:40'),
(108, 'Warung-dan-Homestay-Bunda-2.webp', 24, '2023-06-20 21:39:40'),
(109, 'Pizza-Casa-Italia-1.webp', 26, '2023-06-20 21:39:40'),
(110, 'Pizza-Casa-Italia-2.webp', 26, '2023-06-20 21:39:40'),
(111, 'Pizza-Casa-Italia-3.webp', 26, '2023-06-20 21:39:40'),
(112, 'Pizza-Casa-Italia-4.webp', 26, '2023-06-20 21:39:40'),
(113, 'Pizza-Casa-Italia-5.webp', 26, '2023-06-20 21:39:40'),
(114, 'Pizza-Casa-Italia-6.webp', 26, '2023-06-20 21:39:40'),
(115, 'Pizza-Casa-Italia-7.webp', 26, '2023-06-20 21:39:40'),
(116, 'Pizza-Casa-Italia-8.webp', 26, '2023-06-20 21:39:40'),
(117, 'Pizza-Casa-Italia-9.webp', 26, '2023-06-20 21:39:40'),
(118, 'Pizza-Casa-Italia-10.webp', 26, '2023-06-20 21:39:40'),
(119, 'Pizza-Casa-Italia-11.webp', 26, '2023-06-20 21:39:40'),
(120, 'Museum-Bahari-Bintan-1.webp', 27, '2023-06-20 21:44:58'),
(121, 'Museum-Bahari-Bintan-2.webp', 27, '2023-06-20 21:44:58'),
(122, 'Museum-Bahari-Bintan-3.webp', 27, '2023-06-20 21:44:58'),
(123, 'Museum-Bahari-Bintan-4.webp', 27, '2023-06-20 21:44:58'),
(124, 'Museum-Bahari-Bintan-5.webp', 27, '2023-06-20 21:44:58'),
(125, '3-Brother-Kuliner-1.webp', 41, '2023-06-20 21:44:58'),
(126, 'Dermaga-Penyebrangan-Menuju-Pulau-Penyengat-1.webp', 42, '2023-06-20 21:44:58'),
(127, 'Dermaga-Penyebrangan-Menuju-Pulau-Penyengat-2.webp', 42, '2023-06-20 21:44:58'),
(128, 'Dermaga-Penyebrangan-Menuju-Pulau-Penyengat-3.webp', 42, '2023-06-20 21:44:58'),
(129, 'Pelabuhan-Pulau-Penyengat-1.webp', 43, '2023-06-20 21:44:58'),
(130, 'Pelabuhan-Pulau-Penyengat-2.webp', 43, '2023-06-20 21:44:58'),
(131, 'Pelabuhan-Pulau-Penyengat-3.webp', 43, '2023-06-20 21:44:58'),
(132, 'Masjid-Raya-Sultan-Riau-1.webp', 44, '2023-06-20 21:44:58'),
(133, 'Doulos-Phos-The-Ship-Hotel-1.webp', 46, '2023-06-20 21:44:58'),
(134, 'Doulos-Phos-The-Ship-Hotel-2.webp', 46, '2023-06-20 21:44:58'),
(135, 'Desa-Pengudang-1.webp', 47, '2023-06-20 21:44:58'),
(136, 'Desa-Pengudang-2.webp', 47, '2023-06-20 21:44:58'),
(137, 'Desa-Pengudang-3.webp', 47, '2023-06-20 21:44:58'),
(138, 'Desa-Pengudang-4.webp', 47, '2023-06-20 21:44:58'),
(139, 'Desa-Pengudang-5.webp', 47, '2023-06-20 21:44:58'),
(140, 'Desa-Pengudang-6.webp', 47, '2023-06-20 21:44:58'),
(141, 'Balai-Serbaguna-Desa-Pengudang-1.webp', 48, '2023-06-20 21:44:58'),
(142, 'Balai-Serbaguna-Desa-Pengudang-2.webp', 48, '2023-06-20 21:44:58'),
(143, 'bintan-green-mangrove-tour-1.webp', 49, '2023-08-12 03:40:10'),
(144, 'pantai-batu-junjung-1.webp', 50, '2023-08-12 03:40:10'),
(145, 'pulau-penyengat-1.webp', 51, '2023-08-12 03:40:10'),
(146, 'laguna-golf-bintan-1.webp', 52, '2023-08-12 03:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_cookie`
--

CREATE TABLE `user_cookie` (
  `id_cookie` int(15) NOT NULL,
  `cookie_name` varchar(225) NOT NULL,
  `ip_address` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `region` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `latitude` varchar(225) NOT NULL,
  `longitude` varchar(225) NOT NULL,
  `device` varchar(225) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_cookie`
--

INSERT INTO `user_cookie` (`id_cookie`, `cookie_name`, `ip_address`, `city`, `region`, `country`, `latitude`, `longitude`, `device`, `created`) VALUES
(5, 'user_1', '114.5.249.166', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'desktop', '2023-08-12 12:21:30'),
(6, 'user_2', '114.142.173.20', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'mobile', '2023-08-12 12:24:32'),
(7, 'user_3', '180.252.91.13', 'Depok', 'West Java', 'ID', '-6.4000', '106.8186', 'mobile', '2023-08-12 14:21:04'),
(8, 'user_4', '114.5.210.126', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'mobile', '2023-08-12 15:24:00'),
(9, 'user_5', '116.206.14.29', 'Jakarta', 'Jakarta', 'ID', '-6.2146', '106.8451', 'desktop', '2023-08-13 07:33:45'),
(10, 'user_6', '180.245.185.112', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'desktop', '2023-08-13 08:14:16'),
(11, 'user_7', '114.122.83.126', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'mobile', '2023-08-13 08:14:34'),
(12, 'user_8', '182.253.194.80', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'mobile', '2023-08-14 09:05:29'),
(13, 'user_9', '182.253.194.80', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'mobile', '2023-08-14 09:05:42'),
(14, 'user_10', '106.0.48.154', 'Tanjung Pinang', 'Riau Islands', 'ID', '0.9167', '104.4583', 'desktop', '2023-08-14 15:18:14'),
(15, 'user_11', '182.1.60.86', 'Pekanbaru', 'Riau', 'ID', '0.5167', '101.4417', 'mobile', '2023-08-15 01:36:18'),
(16, 'user_12', '182.2.5.163', 'Batam', 'Riau', 'ID', '1.1494', '104.0249', 'mobile', '2023-08-15 03:38:48'),
(17, 'user_13', '112.215.239.130', 'Pekanbaru', 'Riau', 'ID', '0.5167', '101.4417', 'mobile', '2023-08-15 04:17:24'),
(18, 'user_14', '124.158.175.122', 'Batam', 'Riau', 'ID', '1.1494', '104.0249', 'desktop', '2023-08-16 04:17:30'),
(19, 'user_15', '114.79.5.251', 'Jakarta', 'Jakarta', 'ID', '-6.2146', '106.8451', 'desktop', '2023-08-16 04:31:08'),
(32, 'user_25', '182.253.194.80', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'desktop', '2023-08-19 06:04:47'),
(33, 'user_26', '182.253.194.72', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'desktop', '2023-08-19 06:50:15'),
(35, 'user_28', '182.253.194.71', 'Bandung', 'West Java', 'ID', '-6.9222', '107.6069', 'desktop', '2023-08-24 01:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_guest`
--

CREATE TABLE `user_guest` (
  `guest_id` int(15) NOT NULL,
  `guest_name` varchar(225) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_guest`
--

INSERT INTO `user_guest` (`guest_id`, `guest_name`, `created`) VALUES
(1, 'guestName', '2023-08-19 04:27:29'),
(2, 'guestName', '2023-08-19 04:27:41'),
(3, 'guestName', '2023-08-19 04:27:52'),
(4, 'guestName', '2023-08-19 04:28:15'),
(5, 'guestName', '2023-08-19 04:28:25'),
(6, 'guest_6', '2023-08-19 05:04:43'),
(7, 'guest_7', '2023-08-19 05:05:23'),
(8, 'guest_8', '2023-08-19 05:05:34'),
(9, 'guest_9', '2023-08-19 05:07:18'),
(10, 'guest_10', '2023-08-19 05:08:48'),
(11, 'guest_11', '2023-08-19 05:08:54'),
(12, 'guest_11', '2023-08-19 05:08:54'),
(13, 'guest_13', '2023-08-19 05:09:05'),
(14, 'guest_13', '2023-08-19 05:09:05'),
(15, 'guest_15', '2023-08-19 05:09:15'),
(16, 'guest_16', '2023-08-19 05:10:01'),
(17, 'guest_17', '2023-08-19 05:10:07'),
(18, 'guest_18', '2023-08-19 05:11:01'),
(19, 'guest_19', '2023-08-19 05:11:08'),
(20, 'guest_20', '2023-08-19 05:11:14'),
(21, 'guest_21', '2023-08-19 05:11:22'),
(22, 'guest_22', '2023-08-19 05:12:08'),
(23, 'guest_23', '2023-08-19 05:12:32'),
(24, 'guest_24', '2023-08-19 06:00:40'),
(25, 'guest_25', '2023-08-19 06:00:50'),
(26, 'guest_26', '2023-08-19 06:01:01'),
(27, 'guest_27', '2023-08-19 06:01:54'),
(28, 'guest_28', '2023-08-19 06:01:59'),
(29, 'guest_29', '2023-08-19 06:02:12'),
(30, 'guest_30', '2023-08-19 06:04:46'),
(31, 'guest_31', '2023-08-19 06:48:51'),
(32, 'guest_32', '2023-08-19 06:53:08'),
(33, 'guest_33', '2023-08-19 06:53:17'),
(34, 'guest_34', '2023-08-19 06:53:22'),
(35, 'guest_35', '2023-08-19 06:53:30'),
(36, 'guest_36', '2023-08-24 01:18:35'),
(37, 'guest_37', '2023-08-24 01:19:01'),
(38, 'guest_38', '2023-08-24 01:19:06'),
(39, 'guest_39', '2023-08-24 01:19:22'),
(40, 'guest_40', '2023-08-24 01:19:43'),
(41, 'guest_41', '2023-08-24 01:19:54'),
(42, 'guest_42', '2023-08-24 01:20:10'),
(43, 'guest_43', '2023-08-24 01:20:54'),
(44, 'guest_44', '2023-08-24 01:21:28'),
(45, 'guest_45', '2023-08-24 01:21:47'),
(46, 'guest_46', '2023-08-24 01:21:57'),
(47, 'guest_47', '2023-08-24 01:22:08'),
(48, 'guest_48', '2023-08-24 01:22:15'),
(49, 'guest_49', '2023-08-24 01:22:25'),
(50, 'guest_50', '2023-08-24 01:22:36'),
(51, 'guest_51', '2023-08-24 01:22:46'),
(52, 'guest_52', '2023-08-24 01:23:49'),
(53, 'guest_53', '2023-08-24 01:26:19'),
(54, 'guest_54', '2023-08-24 01:26:23'),
(55, 'guest_55', '2023-08-24 01:26:39'),
(56, 'guest_56', '2023-08-25 01:31:47'),
(57, 'guest_57', '2023-08-25 08:11:06'),
(58, 'guest_58', '2023-08-25 08:14:45'),
(59, 'guest_59', '2023-08-25 08:15:03'),
(60, 'guest_60', '2023-08-25 08:15:07'),
(61, 'guest_61', '2023-08-25 08:15:43'),
(62, 'guest_62', '2023-08-25 08:18:11'),
(63, 'guest_63', '2023-08-25 08:18:40'),
(64, 'guest_64', '2023-08-25 08:19:29'),
(65, 'guest_65', '2023-08-25 08:19:38'),
(66, 'guest_66', '2023-08-25 08:19:55'),
(67, 'guest_67', '2023-08-25 08:20:47'),
(68, 'guest_68', '2023-08-25 08:21:31'),
(69, 'guest_69', '2023-08-25 08:26:13'),
(70, 'guest_70', '2023-08-25 08:31:56'),
(71, 'guest_71', '2023-08-25 08:32:05'),
(72, 'guest_72', '2023-08-25 08:34:36'),
(73, 'guest_73', '2023-08-25 08:43:20'),
(74, 'guest_74', '2023-08-25 08:52:26'),
(75, 'guest_75', '2023-08-25 08:52:48'),
(76, 'guest_76', '2023-08-25 08:54:01'),
(77, 'guest_77', '2023-08-25 08:54:18'),
(78, 'guest_78', '2023-08-25 08:54:28'),
(79, 'guest_79', '2023-08-25 08:54:32'),
(80, 'guest_80', '2023-08-25 08:55:40'),
(81, 'guest_81', '2023-08-25 08:59:22'),
(82, 'guest_82', '2023-08-25 08:59:31'),
(83, 'guest_83', '2023-08-25 09:00:44'),
(84, 'guest_84', '2023-08-25 09:02:24'),
(85, 'guest_85', '2023-08-25 09:02:30'),
(86, 'guest_86', '2023-08-25 09:02:50'),
(87, 'guest_87', '2023-08-25 09:04:37'),
(88, 'guest_88', '2023-08-25 09:06:03'),
(89, 'guest_89', '2023-08-25 09:08:43'),
(90, 'guest_90', '2023-08-25 09:08:50'),
(91, 'guest_91', '2023-08-25 09:09:01'),
(92, 'guest_92', '2023-08-25 09:09:32'),
(93, 'guest_93', '2023-08-25 09:09:39'),
(94, 'guest_94', '2023-08-25 09:09:50'),
(95, 'guest_95', '2023-08-25 09:10:05'),
(96, 'guest_96', '2023-08-25 09:10:26'),
(97, 'guest_97', '2023-08-25 09:10:41'),
(98, 'guest_98', '2023-08-25 09:10:47'),
(99, 'guest_99', '2023-08-25 09:11:10'),
(100, 'guest_100', '2023-08-25 09:11:16'),
(101, 'guest_101', '2023-08-25 09:11:24'),
(102, 'guest_102', '2023-08-25 09:16:49'),
(103, 'guest_103', '2023-08-25 09:16:54'),
(104, 'guest_104', '2023-08-25 09:17:09'),
(105, 'guest_105', '2023-08-25 09:17:30'),
(106, 'guest_106', '2023-08-25 09:17:38'),
(107, 'guest_107', '2023-08-25 09:27:04'),
(108, 'guest_108', '2023-08-25 09:27:09'),
(109, 'guest_109', '2023-08-25 09:29:51'),
(110, 'guest_110', '2023-08-25 10:00:27'),
(111, 'guest_111', '2023-08-25 10:02:53'),
(112, 'guest_112', '2023-08-25 10:02:57'),
(113, 'guest_113', '2023-08-25 10:03:43'),
(114, 'guest_114', '2023-08-25 10:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_guest_activity`
--

CREATE TABLE `user_guest_activity` (
  `guest_activity_id` int(15) NOT NULL,
  `cookie_name` varchar(225) NOT NULL,
  `pages` varchar(225) NOT NULL,
  `timespent_in` datetime NOT NULL,
  `timespent_out` datetime NOT NULL,
  `content` int(15) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_guest_questions`
--

CREATE TABLE `user_guest_questions` (
  `guest_questions_id` int(15) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `questions` varchar(3000) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_guest_questions`
--

INSERT INTO `user_guest_questions` (`guest_questions_id`, `name`, `email`, `subject`, `questions`, `created`) VALUES
(3, 'testing', 'testing@gmail.com', 'subject', 'testing quotation', '2023-08-14 09:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_like`
--

CREATE TABLE `user_like` (
  `like_id` int(15) NOT NULL,
  `ip_address` varchar(225) NOT NULL,
  `like_status` int(15) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_like`
--

INSERT INTO `user_like` (`like_id`, `ip_address`, `like_status`, `created`) VALUES
(1, '192.168.3.21', 1, '2023-08-21 11:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_search`
--

CREATE TABLE `user_search` (
  `search_id` int(15) NOT NULL,
  `word` varchar(225) NOT NULL,
  `sentence` varchar(500) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_search`
--

INSERT INTO `user_search` (`search_id`, `word`, `sentence`, `created`) VALUES
(1, 'bintan', 'bintan', '2023-08-19 07:35:44'),
(2, 'green', 'green', '2023-08-19 07:36:18'),
(3, 'batu', 'pantai batu junjung', '2023-08-19 07:36:40'),
(4, 'junjung', 'pantai batu junjung', '2023-08-19 07:36:40'),
(5, 'pantai', 'pantai batu junjung', '2023-08-19 07:36:40'),
(10, 'ikan', 'ikan bakar pondok', '2023-08-19 07:41:00'),
(11, 'pondok', 'ikan bakar pondok', '2023-08-19 07:41:00'),
(12, 'bakar', 'ikan bakar pondok', '2023-08-19 07:41:00'),
(13, 'pantai', 'pantai', '2023-08-19 07:41:11'),
(14, 'pengudang', 'beach pengudang', '2023-08-19 07:41:22'),
(15, 'beach', 'beach pengudang', '2023-08-19 07:41:22'),
(16, 'masjid', 'masjid', '2023-08-19 07:41:36'),
(17, 'lagoi', 'lagoi', '2023-08-24 05:26:40'),
(18, 'bintan', 'bintan', '2023-08-24 05:30:42'),
(19, 'bintan', 'bintan', '2023-08-24 05:32:00'),
(20, 'bintan', 'bintan', '2023-08-24 05:32:04'),
(21, 'bintan', 'bintan', '2023-08-24 05:56:12'),
(22, 'bintan', 'bintan', '2023-08-24 05:57:28'),
(23, 'masjid', 'masjid', '2023-08-24 05:57:31'),
(24, 'bintan', 'bintan', '2023-08-24 06:04:10'),
(25, 'lagoi', 'lagoi', '2023-08-24 06:04:22'),
(26, 'bintan', 'bintan', '2023-08-24 06:05:20'),
(27, 'trikora', 'trikora', '2023-08-24 06:05:23'),
(28, 'lagoi', 'lagoi', '2023-08-24 06:05:25'),
(29, 'duo', 'duo', '2023-08-24 06:05:29'),
(30, 'dos', 'dos', '2023-08-24 06:05:33'),
(31, 'dou', 'dou', '2023-08-24 06:05:41'),
(32, 'pizza', 'pizza', '2023-08-24 06:06:59'),
(33, 'eat', 'eat', '2023-08-24 06:07:03'),
(34, 'adiah', 'adiah', '2023-08-24 06:07:11'),
(35, 'bintan', 'bintan', '2023-08-24 07:33:19'),
(36, 'trikora', 'trikora', '2023-08-24 07:33:31'),
(37, 'lagoi', 'lagoi', '2023-08-24 07:33:37'),
(38, 'kedai', 'kedai', '2023-08-24 07:36:41'),
(39, 'masjid', 'masjid', '2023-08-24 07:43:08'),
(40, 'dsds', 'dsds', '2023-08-24 08:16:07'),
(41, '', '', '2023-08-24 08:18:00'),
(42, '', '', '2023-08-24 08:18:22'),
(43, '', '', '2023-08-24 08:19:57'),
(44, 'cassia', 'cassia', '2023-08-25 03:44:42'),
(45, 'dou', 'dou', '2023-08-25 03:52:17'),
(46, 'bintan', 'bintan', '2023-08-25 10:09:07'),
(47, 'and', 'and', '2023-08-25 10:09:32'),
(48, 'masjid', 'masjid', '2023-08-25 10:09:40'),
(49, 'nar', 'nar', '2023-08-25 10:11:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `todo_categories`
--
ALTER TABLE `todo_categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `tosee_content`
--
ALTER TABLE `tosee_content`
  ADD PRIMARY KEY (`tosee_id`);

--
-- Indexes for table `tosee_description`
--
ALTER TABLE `tosee_description`
  ADD PRIMARY KEY (`description_id`);

--
-- Indexes for table `tosee_images`
--
ALTER TABLE `tosee_images`
  ADD PRIMARY KEY (`images_id`);

--
-- Indexes for table `user_cookie`
--
ALTER TABLE `user_cookie`
  ADD PRIMARY KEY (`id_cookie`);

--
-- Indexes for table `user_guest`
--
ALTER TABLE `user_guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `user_guest_activity`
--
ALTER TABLE `user_guest_activity`
  ADD PRIMARY KEY (`guest_activity_id`);

--
-- Indexes for table `user_guest_questions`
--
ALTER TABLE `user_guest_questions`
  ADD PRIMARY KEY (`guest_questions_id`);

--
-- Indexes for table `user_like`
--
ALTER TABLE `user_like`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `user_search`
--
ALTER TABLE `user_search`
  ADD PRIMARY KEY (`search_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todo_categories`
--
ALTER TABLE `todo_categories`
  MODIFY `categories_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tosee_content`
--
ALTER TABLE `tosee_content`
  MODIFY `tosee_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tosee_description`
--
ALTER TABLE `tosee_description`
  MODIFY `description_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tosee_images`
--
ALTER TABLE `tosee_images`
  MODIFY `images_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `user_cookie`
--
ALTER TABLE `user_cookie`
  MODIFY `id_cookie` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_guest`
--
ALTER TABLE `user_guest`
  MODIFY `guest_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `user_guest_activity`
--
ALTER TABLE `user_guest_activity`
  MODIFY `guest_activity_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_guest_questions`
--
ALTER TABLE `user_guest_questions`
  MODIFY `guest_questions_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_like`
--
ALTER TABLE `user_like`
  MODIFY `like_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_search`
--
ALTER TABLE `user_search`
  MODIFY `search_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
