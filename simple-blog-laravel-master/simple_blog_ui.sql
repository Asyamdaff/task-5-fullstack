-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 04:37 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_blog_ui`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `image`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Apa itu React JS? Kelebihan & Cara Mempelajarinya', 'Apa itu React JS?\r\nReact JS adalah sebuah program library JavaScript untuk menunjang pengembangan user interface (UI) suatu aplikasi.\r\n\r\nLibrary JavaScript sendiri merupakan sekumpulan kode JavaScript yang sudah jadi template. Anda bisa memanfaatkan template tersebut dalam proses coding. Jadi Anda tidak perlu menuliskan secara manual untuk membuat fungsi-fungsi tertentu.\r\n\r\nDengan kata lain, library JavaScript ini bisa membuat proses coding jadi lebih efektif dan efisien.\r\n\r\nFacebook-lah yang mengembangkan program ini dan membuatnya menjadi open source. \r\n\r\nSejak rilis di tahun 2013, program ini dengan cepat bertransformasi jadi salah satu library JavaScript yang paling populer. Program ini bersaing ketat dengan Bootstrap. \r\n\r\nPlatform besar seperti Netflix, American Express, Airbnb, Facebook, WhatsApp, Instagram, BBC, Cloudflare, Dropbox, Paypal, dll bahkan menggunakan program ini untuk mengembangkan UI-nya.\r\n\r\nKelebihan React JS\r\nReact JS sebenarnya relatif lebih muda dari Bootstrap. Lalu, mengapa program ini bisa begitu populer? Apa saja kelebihannya? \r\n\r\nBerikut adalah beberapa kelebihan yang bisa jadi alasan untuk Anda memilih program ini.\r\n\r\n1. Mudah untuk Mempelajarinya  \r\napa itu react js\r\nSumber: lab.github.com\r\nReact JS memiliki banyak sekali resource tutorial dan pelatihan. Sebagai pemula, Anda bisa mempelajarinya lebih mudah. \r\n\r\nPenggunanya juga relatif banyak. Anda bisa dengan mudah mendapatkan dukungan komunitas pada saat menghadapi masalah.\r\n\r\nJika Anda sudah cukup familiar dengan JavaScript, beradaptasi dengan React Js akan lebih mudah. Anda bisa langsung menggunakannya dalam hitungan hari.\r\n\r\n2. Reusable Component\r\n\r\nSumber: Edureka Slideshare\r\nDalam JavaScripts, ada yang namanya Component. Component memungkinkan Anda memecah UI menjadi bagian-bagian kecil yang independen. Dengan kata lain, Component merupakan potongan script (template) untuk suatu bagian atau fungsi.\r\n\r\nNah, konsep React JS mengacu pada hal tersebut.\r\n\r\nDengan Component, Anda bisa mengembangkan UI secara bertahap. Jadi Anda mulai dari bagian-bagian kecil, kemudian menyusunnya menjadi bagian yang lebih besar, hingga akhirnya bisa menjadi suatu UI aplikasi web yang utuh.\r\n\r\nSetiap Component memiliki logika yang independen, bahkan bisa mengontrol rendering-nya sendiri.\r\n\r\nIndependensi tersebut memungkinkan Anda menggunakannya kembali (reusable) di bagian lain aplikasi web. \r\n\r\nSkema ini tentu saja membuat proses coding jadi lebih efisien, daripada harus melakukan coding ulang untuk suatu bagian atau fungsi yang sama.\r\n\r\nSelain pengembangan aplikasi bisa menjadi lebih simple dan efisien, program ini juga membuat pemeliharaannya juga lebih mudah. \r\n\r\nAnda juga bisa menciptakan desain dan nuansa yang konsisten pada suatu proyek.\r\n\r\n3. Adanya JSX yang Memudahkan Penulisan Component\r\napa itu react js\r\nSumber: JS.plainenglish.io\r\nDokumen HTML merupakan inti dari aplikasi web. \r\n\r\nPada saat ada user yang mengaksesnya, browser akan membaca dokumen tersebut dan menampilkannya di perangkat komputer. \r\n\r\nDi proses itu, browser akan membuat Document Object Model (DOM). DOM sendiri merupakan API yang berfungsi untuk mengatur struktur halaman web. \r\n\r\nAnda bisa membuat konten dinamis di aplikasi web dengan cara memodifikasi DOM menggunakan script dinamis seperti JavaScript. \r\n\r\nJSX sendiri merupakan ekstensi React yang memungkinkan Anda memodifikasi DOM menggunakan kode HTML yang lebih sederhana. \r\n\r\nHal yang lebih penting, JSX sudah compatible dengan berbagai browser populer.\r\n\r\nDi lain sisi, JSX bersifat optional. Anda bisa memilih untuk menggunakannya atau tidak. \r\n\r\n4. Virtual DOM yang Meningkatkan Performa\r\n\r\nSumber: topsinfosolutions.com\r\nDalam pengembangan aplikasi web dinamis, proses update DOM (Document Object Model) sedikit membuat frustasi. Pasalnya, seluruh halaman web harus di-reload untuk melihat pembaruan.\r\n\r\nVirtual DOM berhasil mengatasi hal ini.\r\n\r\nVirtual DOM akan membuat salinan DOM yang asli. \r\n\r\nPada saat Anda melakukan pembaruan, React akan memindai Virtual DOM dan mengidentifikasi di mana pembaruannya. Kemudian, melakukan perubahan khusus di bagian tersebut. \r\n\r\nSelective update semacam ini akan mengurangi beban pada proses computing dan memangkas waktu loading.', '1656296438_19Apa-itu-React-JS.png', 2, 1, '2022-06-24 04:14:17', '2022-06-24 04:14:17'),
(2, 'Apa Itu JavaScript? Fungsi dan Contohnya', 'Apa Itu JavaScript?\r\njavascript\r\n\r\nTahukah kamu bahwa JavaScript adalah bahasa pemrograman yang digunakan dalam pengembangan website agar lebih dinamis dan interaktif. Kalau sebelumnya kamu hanya mengenal HTML dan CSS, nah sekarang kamu jadi tahu bahwa JavaScript dapat meningkatkan fungsionalitas pada halaman web. Bahkan dengan JavaScript ini kamu bisa membuat aplikasi, tools, atau bahkan game pada web.\r\n\r\nBicara teknis, JavaScript atau kita singkat menjadi JS merupakan bahasa pemrograman jenis interpreter, sehingga kamu tidak memerlukan compiler untuk menjalankannya. JavaScript memiliki fitur-fitur seperti berorientasi objek, client-side, high-level programming, dan loosely typed.\r\n\r\nSejarah JavaScript\r\nbook javascript\r\n\r\nBagi kamu yang masih awam, mungkin penasaran bagaimana awal mulanya diciptakan bahasa pemrograman ini. \r\n\r\nPada tahun 1994 JavaScript mulai dikenal, pada saat itu web dan internet sudah mulai berkembang. JavaScript didesain oleh Brendan Eich yang merupakan karyawan Netscape. Transformasi nama JavaScript, dimulai dari Mocha, Mona, LiveScript, hingga akhirnya resmi bernama JavaScript. \r\n\r\nVersi awal bahasa JS hanya dipakai di kalangan Netscape beserta dengan fungsionalitas pun yang masih terbatas. Singkat cerita pada tahun 1996 JavaScript secara resmi dinamakan sebagai ECMAScript. ECMAScript 2 dikembangkan pada tahun 1998 yang dilanjutkan dengan ECMAScript 3 setahun kemudian. ECMAScript terus dikembangkan sampai akhirnya menjadi JavaScript atau JS hingga saat ini. Pada tahun 2016, 92% web diketahui telah menggunakan JavaScript. Itulah mengapa JavaScript atau JS terus berkembang.\r\n\r\nMengapa harus pakai JavaScript?\r\ngoogle image\r\n\r\nSebagai developer zaman now. JavaScript menjadi salah satu bahasa pemrograman yang sangat populer. Mengapa? Di tahun 2016 saja sudah ada sekitar 92% pembuatan web menggunakan JS, apalagi di tahun-tahun sekarang. Tentunya web yang dibuat dengan JS akan lebih dinamis dan interaktif. Banyak perusahaan top global yang sudah mengimplementasikan JS sebagai bahasa pemrograman andalannya. Kita bisa buktikan juga bahwa JS itu populer dan menjadi bahasa yang paling banyak digunakan di Github.\r\n\r\ngithub js\r\n\r\nSeperti FB, Linkedin, Trello, Medium, bahkan Google, salah satu bahasa yang digunakan di antaranya adalah JS (JavaScript). Itulah alasan mengapa para developer berlomba-lomba untuk jadi yang terbaik dalam mempelajari JavaScript.\r\n\r\nFungsi JavaScript\r\nscript image\r\n\r\nKamu pasti sudah paham tentunya dengan fungsi JavaScript. Selain membuat web jadi lebih dinamis dan interaktif, JS digunakan juga untuk proses logika data. “Intinya, fungsi JS tidak hanya soal urusan front end, tapi juga sekaligus dipakai untuk urusan back end,” imbuh developer.\r\n\r\nKeunggulan JavaScript\r\nprogramming\r\n\r\nSepertinya kamu sudah mengetahui keunggulan dari JavaScript, tapi saya akan paparkan lebih dalam lagi deh hehe. Inilah beberapa keunggulan JS yang membuat tekadmu kuat untuk mempelajarinya.\r\n\r\n1. General Purpose\r\nSaat ini JavaScript tidak hanya digunakan di sisi client (browser) saja lho. Semenjak adanya Node.js JavaScript dapat digunakan di luar dari browser. Dengan begitu kamu bisa mengembangkan back-end (server), console, program desktop, mobile, IoT, game, dan lainnya menggunakan JavaScript.\r\n\r\n2. Mudah untuk Dipelajari\r\nSetiap bahasa pemrograman memiliki tingkat kesulitan yang berbeda. Tingkat kesulitan bisa dilihat dari beberapa faktor. Menurut saya sih, syntax atau penulisan jadi salah satu faktor yang paling penting buat dipelajari. JS masih tergolong mudah dipelajari asalkan kamu serius dalam belajar dan selalu berani melakukan improvement atau bermain-main dengan itu. Masih belum percaya JS mudah dipelajari? Baiklah, ini perbandingan JS dengan beberapa bahasa lainnya. Contohnya dalam menampilkan “Hello World!” ya.', 'Javascript.png', 2, 1, '2022-06-24 04:14:17', '2022-06-24 04:14:17'),
(3, 'Apa itu React JS? Kelebihan & Cara Mempelajarinya', 'Apa itu React JS?\r\nReact JS adalah sebuah program library JavaScript untuk menunjang pengembangan user interface (UI) suatu aplikasi.\r\n\r\nLibrary JavaScript sendiri merupakan sekumpulan kode JavaScript yang sudah jadi template. Anda bisa memanfaatkan template tersebut dalam proses coding. Jadi Anda tidak perlu menuliskan secara manual untuk membuat fungsi-fungsi tertentu.\r\n\r\nDengan kata lain, library JavaScript ini bisa membuat proses coding jadi lebih efektif dan efisien.\r\n\r\nFacebook-lah yang mengembangkan program ini dan membuatnya menjadi open source. \r\n\r\nSejak rilis di tahun 2013, program ini dengan cepat bertransformasi jadi salah satu library JavaScript yang paling populer. Program ini bersaing ketat dengan Bootstrap. \r\n\r\nPlatform besar seperti Netflix, American Express, Airbnb, Facebook, WhatsApp, Instagram, BBC, Cloudflare, Dropbox, Paypal, dll bahkan menggunakan program ini untuk mengembangkan UI-nya.\r\n\r\nKelebihan React JS\r\nReact JS sebenarnya relatif lebih muda dari Bootstrap. Lalu, mengapa program ini bisa begitu populer? Apa saja kelebihannya? \r\n\r\nBerikut adalah beberapa kelebihan yang bisa jadi alasan untuk Anda memilih program ini.\r\n\r\n1. Mudah untuk Mempelajarinya  \r\napa itu react js\r\nSumber: lab.github.com\r\nReact JS memiliki banyak sekali resource tutorial dan pelatihan. Sebagai pemula, Anda bisa mempelajarinya lebih mudah. \r\n\r\nPenggunanya juga relatif banyak. Anda bisa dengan mudah mendapatkan dukungan komunitas pada saat menghadapi masalah.\r\n\r\nJika Anda sudah cukup familiar dengan JavaScript, beradaptasi dengan React Js akan lebih mudah. Anda bisa langsung menggunakannya dalam hitungan hari.\r\n\r\n2. Reusable Component\r\n\r\nSumber: Edureka Slideshare\r\nDalam JavaScripts, ada yang namanya Component. Component memungkinkan Anda memecah UI menjadi bagian-bagian kecil yang independen. Dengan kata lain, Component merupakan potongan script (template) untuk suatu bagian atau fungsi.\r\n\r\nNah, konsep React JS mengacu pada hal tersebut.\r\n\r\nDengan Component, Anda bisa mengembangkan UI secara bertahap. Jadi Anda mulai dari bagian-bagian kecil, kemudian menyusunnya menjadi bagian yang lebih besar, hingga akhirnya bisa menjadi suatu UI aplikasi web yang utuh.\r\n\r\nSetiap Component memiliki logika yang independen, bahkan bisa mengontrol rendering-nya sendiri.\r\n\r\nIndependensi tersebut memungkinkan Anda menggunakannya kembali (reusable) di bagian lain aplikasi web. \r\n\r\nSkema ini tentu saja membuat proses coding jadi lebih efisien, daripada harus melakukan coding ulang untuk suatu bagian atau fungsi yang sama.\r\n\r\nSelain pengembangan aplikasi bisa menjadi lebih simple dan efisien, program ini juga membuat pemeliharaannya juga lebih mudah. \r\n\r\nAnda juga bisa menciptakan desain dan nuansa yang konsisten pada suatu proyek.\r\n\r\n3. Adanya JSX yang Memudahkan Penulisan Component\r\napa itu react js\r\nSumber: JS.plainenglish.io\r\nDokumen HTML merupakan inti dari aplikasi web. \r\n\r\nPada saat ada user yang mengaksesnya, browser akan membaca dokumen tersebut dan menampilkannya di perangkat komputer. \r\n\r\nDi proses itu, browser akan membuat Document Object Model (DOM). DOM sendiri merupakan API yang berfungsi untuk mengatur struktur halaman web. \r\n\r\nAnda bisa membuat konten dinamis di aplikasi web dengan cara memodifikasi DOM menggunakan script dinamis seperti JavaScript. \r\n\r\nJSX sendiri merupakan ekstensi React yang memungkinkan Anda memodifikasi DOM menggunakan kode HTML yang lebih sederhana. \r\n\r\nHal yang lebih penting, JSX sudah compatible dengan berbagai browser populer.\r\n\r\nDi lain sisi, JSX bersifat optional. Anda bisa memilih untuk menggunakannya atau tidak. \r\n\r\n4. Virtual DOM yang Meningkatkan Performa\r\n\r\nSumber: topsinfosolutions.com\r\nDalam pengembangan aplikasi web dinamis, proses update DOM (Document Object Model) sedikit membuat frustasi. Pasalnya, seluruh halaman web harus di-reload untuk melihat pembaruan.\r\n\r\nVirtual DOM berhasil mengatasi hal ini.\r\n\r\nVirtual DOM akan membuat salinan DOM yang asli. \r\n\r\nPada saat Anda melakukan pembaruan, React akan memindai Virtual DOM dan mengidentifikasi di mana pembaruannya. Kemudian, melakukan perubahan khusus di bagian tersebut. \r\n\r\nSelective update semacam ini akan mengurangi beban pada proses computing dan memangkas waktu loading.', '1656296438_19Apa-itu-React-JS.png', 3, 4, '2022-06-24 06:22:05', '2022-06-26 19:20:38'),
(4, 'Eos aspernatur ducimus natus blanditiis deserunt.', 'Ullam laudantium voluptatibus et eveniet. Ab esse sit et magni et voluptas et. Ratione dolorum deleniti dignissimos.', 'bootstrap-grid.png', 2, 1, '2022-06-24 09:33:57', '2022-06-24 09:33:57'),
(5, 'Tutorial Bootstrap: Memahami Sistem Grid untuk membuat Layout', 'Apa itu Sistem Grid di Bootstrap?\r\nSistem Grid adalah sistem yang digunakan Bootstrap untuk mengatur tata letak (layout). Sistem ini terdiri dari 12 kolom dan 6 breakpoint.\r\n\r\nSistem Grid 12 Kolom\r\nSatu kolom penuh panjangnya adalah 12. Jika kolom dibagi dua maka panjangnya akan menjadi 6.\r\n\r\nJika dibagi lagi, maka panjang kolomnya akan semakin kecil, hingga yang paling kecil adalah 1. Ini artinya, kolom pada grid hanya bisa dibagi sampai 12 saja.\r\n\r\nSelain untuk menentukan tata letak, Grid juga berfungsi sebagai guide line bagi desainer. Sehingga nanti akan membuat desain lebih mudah diterapkan ke dalam kode.\r\n\r\nMemahami Breakpoint\r\nBreakpoint adalah ukuran lebar yang menentukan tampilan responsif terhadap ukuran viewport perangkat tertentu. 1\r\n\r\nSaat ini Bootstrap memiliki 6 ukuran Breakpoint, yakni none, sm, md, lg, xl, dan xxl.\r\n\r\nPerhatikan gambar berikut.\r\n\r\nbootstrap breakpoint\r\nIni adalah ukuran breakpoint sesaui dengan ukuran layar perangkat.\r\n\r\nIngat!\r\n\r\nBootstrap adalah framework yang menggunakan pendekatan mobile first, jadi kita harus memikirkan tampilan di mobile terlebih dahulu sebelum membuat tampilan untuk desktop.\r\n\r\nKarena itu, nilai default breakpoint adalah none. Ukuran ini adalah ukuran yang paling kecil, yakni sekitar 576px.', 'Provident.jpg', 2, 1, '2022-06-24 09:33:57', '2022-06-24 09:33:57'),
(6, 'Apa Itu JavaScript? Fungsi dan Contohnya', 'Apa Itu JavaScript?\r\njavascript\r\n\r\nTahukah kamu bahwa JavaScript adalah bahasa pemrograman yang digunakan dalam pengembangan website agar lebih dinamis dan interaktif. Kalau sebelumnya kamu hanya mengenal HTML dan CSS, nah sekarang kamu jadi tahu bahwa JavaScript dapat meningkatkan fungsionalitas pada halaman web. Bahkan dengan JavaScript ini kamu bisa membuat aplikasi, tools, atau bahkan game pada web.\r\n\r\nBicara teknis, JavaScript atau kita singkat menjadi JS merupakan bahasa pemrograman jenis interpreter, sehingga kamu tidak memerlukan compiler untuk menjalankannya. JavaScript memiliki fitur-fitur seperti berorientasi objek, client-side, high-level programming, dan loosely typed.\r\n\r\nSejarah JavaScript\r\nbook javascript\r\n\r\nBagi kamu yang masih awam, mungkin penasaran bagaimana awal mulanya diciptakan bahasa pemrograman ini. \r\n\r\nPada tahun 1994 JavaScript mulai dikenal, pada saat itu web dan internet sudah mulai berkembang. JavaScript didesain oleh Brendan Eich yang merupakan karyawan Netscape. Transformasi nama JavaScript, dimulai dari Mocha, Mona, LiveScript, hingga akhirnya resmi bernama JavaScript. \r\n\r\nVersi awal bahasa JS hanya dipakai di kalangan Netscape beserta dengan fungsionalitas pun yang masih terbatas. Singkat cerita pada tahun 1996 JavaScript secara resmi dinamakan sebagai ECMAScript. ECMAScript 2 dikembangkan pada tahun 1998 yang dilanjutkan dengan ECMAScript 3 setahun kemudian. ECMAScript terus dikembangkan sampai akhirnya menjadi JavaScript atau JS hingga saat ini. Pada tahun 2016, 92% web diketahui telah menggunakan JavaScript. Itulah mengapa JavaScript atau JS terus berkembang.\r\n\r\nMengapa harus pakai JavaScript?\r\ngoogle image\r\n\r\nSebagai developer zaman now. JavaScript menjadi salah satu bahasa pemrograman yang sangat populer. Mengapa? Di tahun 2016 saja sudah ada sekitar 92% pembuatan web menggunakan JS, apalagi di tahun-tahun sekarang. Tentunya web yang dibuat dengan JS akan lebih dinamis dan interaktif. Banyak perusahaan top global yang sudah mengimplementasikan JS sebagai bahasa pemrograman andalannya. Kita bisa buktikan juga bahwa JS itu populer dan menjadi bahasa yang paling banyak digunakan di Github.\r\n\r\ngithub js\r\n\r\nSeperti FB, Linkedin, Trello, Medium, bahkan Google, salah satu bahasa yang digunakan di antaranya adalah JS (JavaScript). Itulah alasan mengapa para developer berlomba-lomba untuk jadi yang terbaik dalam mempelajari JavaScript.\r\n\r\nFungsi JavaScript\r\nscript image\r\n\r\nKamu pasti sudah paham tentunya dengan fungsi JavaScript. Selain membuat web jadi lebih dinamis dan interaktif, JS digunakan juga untuk proses logika data. “Intinya, fungsi JS tidak hanya soal urusan front end, tapi juga sekaligus dipakai untuk urusan back end,” imbuh developer.\r\n\r\nKeunggulan JavaScript\r\nprogramming\r\n\r\nSepertinya kamu sudah mengetahui keunggulan dari JavaScript, tapi saya akan paparkan lebih dalam lagi deh hehe. Inilah beberapa keunggulan JS yang membuat tekadmu kuat untuk mempelajarinya.\r\n\r\n1. General Purpose\r\nSaat ini JavaScript tidak hanya digunakan di sisi client (browser) saja lho. Semenjak adanya Node.js JavaScript dapat digunakan di luar dari browser. Dengan begitu kamu bisa mengembangkan back-end (server), console, program desktop, mobile, IoT, game, dan lainnya menggunakan JavaScript.\r\n\r\n2. Mudah untuk Dipelajari\r\nSetiap bahasa pemrograman memiliki tingkat kesulitan yang berbeda. Tingkat kesulitan bisa dilihat dari beberapa faktor. Menurut saya sih, syntax atau penulisan jadi salah satu faktor yang paling penting buat dipelajari. JS masih tergolong mudah dipelajari asalkan kamu serius dalam belajar dan selalu berani melakukan improvement atau bermain-main dengan itu. Masih belum percaya JS mudah dipelajari? Baiklah, ini perbandingan JS dengan beberapa bahasa lainnya. Contohnya dalam menampilkan “Hello World!” ya.', 'Javascript.png', 1, 6, '2022-06-26 18:43:45', '2022-06-26 18:43:45'),
(7, 'Tutorial Bootstrap: Memahami Sistem Grid untuk membuat Layout', 'Apa itu Sistem Grid di Bootstrap?\r\nSistem Grid adalah sistem yang digunakan Bootstrap untuk mengatur tata letak (layout). Sistem ini terdiri dari 12 kolom dan 6 breakpoint.\r\n\r\nSistem Grid 12 Kolom\r\nSatu kolom penuh panjangnya adalah 12. Jika kolom dibagi dua maka panjangnya akan menjadi 6.\r\n\r\nJika dibagi lagi, maka panjang kolomnya akan semakin kecil, hingga yang paling kecil adalah 1. Ini artinya, kolom pada grid hanya bisa dibagi sampai 12 saja.\r\n\r\nSelain untuk menentukan tata letak, Grid juga berfungsi sebagai guide line bagi desainer. Sehingga nanti akan membuat desain lebih mudah diterapkan ke dalam kode.\r\n\r\nMemahami Breakpoint\r\nBreakpoint adalah ukuran lebar yang menentukan tampilan responsif terhadap ukuran viewport perangkat tertentu. 1\r\n\r\nSaat ini Bootstrap memiliki 6 ukuran Breakpoint, yakni none, sm, md, lg, xl, dan xxl.\r\n\r\nPerhatikan gambar berikut.\r\n\r\nbootstrap breakpoint\r\nIni adalah ukuran breakpoint sesaui dengan ukuran layar perangkat.\r\n\r\nIngat!\r\n\r\nBootstrap adalah framework yang menggunakan pendekatan mobile first, jadi kita harus memikirkan tampilan di mobile terlebih dahulu sebelum membuat tampilan untuk desktop.\r\n\r\nKarena itu, nilai default breakpoint adalah none. Ukuran ini adalah ukuran yang paling kecil, yakni sekitar 576px.', 'bootstrap-grid.png', 1, 8, '2022-06-26 18:43:45', '2022-06-26 18:43:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Pemrograman', 1, '2022-06-24 04:14:17', '2022-06-24 04:14:17'),
(6, 'Javascript', 3, '2022-06-24 06:22:38', '2022-06-24 06:22:38'),
(7, 'Laravel', 3, '2022-06-24 06:22:47', '2022-06-24 06:22:47'),
(8, 'Bootstrap', 3, '2022-06-24 06:22:54', '2022-06-24 06:22:54'),
(9, 'Tailwind', 3, '2022-06-24 06:22:59', '2022-06-24 06:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_22_141617_create_articles_table', 1),
(6, '2022_06_22_141626_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('satriadi890@gmail.com', '$2y$10$kdju40j8s6.VvvjuQu5yWeH9hFHs96VR9DKA8XC0OwPmEspjoDe9K', '2022-06-24 06:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Syaiful Albi', 'Syaiful.albi@example.org', '2022-06-24 04:14:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2lmB2bDOhD', '2022-06-24 04:14:17', '2022-06-24 04:14:17'),
(3, 'Satria Adi', 'formetutor089@gmail.com', '2022-06-27 02:07:28', '$2y$10$4ecvEEHzXXR4QeqLBVjY6u9JPrsE7JaQ1qvpr7XJE/wuW4gJI9HT6', NULL, '2022-06-24 06:18:19', '2022-06-24 06:18:19'),
(4, 'Andika Pratama', 'Andika.pratama@example.com', '2022-06-24 09:33:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1ZZIgKwmOc', '2022-06-24 09:33:57', '2022-06-24 09:33:57'),
(5, 'Wahyu Adi', 'Wahyu.adi@example.net', '2022-06-26 18:43:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7MJhxVYr9e', '2022-06-26 18:43:45', '2022-06-26 18:43:45'),
(6, 'Bagus Wicaksono', 'Bagus.wicak@example.net', NULL, '$2y$10$955VAiqHrMGQqNKgqjG0f.sqdnLEpMFTDp/d4Hv2OZcx9dvPgpOAi', NULL, '2022-06-26 19:31:20', '2022-06-26 19:31:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
