-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 11:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `pdf` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `category_id`, `author`, `description`, `image`, `pdf`, `price`, `views`, `created_at`, `updated_at`) VALUES
(1, 'မဖြစ်နိုင်ဘူးဆိုတာသေချာပြီလား', 'မဖြစ်နိုင်ဘူးဆိုတာသေချာပြီလား', 1, 'ဖေမြင့်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Knowledge/image/img3.png', 'Category/Knowledge/pdf/မဖြစ်နိုင်ဘူးဆိုတာသေချာပြီလား.pdf', 3000.00, 2, NULL, NULL),
(2, 'ပြောတတ်ဆိုတတ် ပေါင်းသင်းတတ်တဲ့သူ', 'ပြောတတ်ဆိုတတ်ပေါင်းသင်းတတ်တဲ့သူ', 1, 'ဖေမြင့်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Knowledge/image/img5.png', 'Category/Knowledge/pdf/ပြောတတ်ဆိုတတ် ပေါင်းသင်းတတ်တဲ့သူ.pdf', 3500.00, 0, NULL, NULL),
(3, 'ဂရုမစိုက်ခြင်းအနုပညာ', 'ဂရုမစိုက်ခြင်းအနုပညာ', 1, 'ချမ်းမြေ့ဝင်း', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Knowledge/image/img6.jpg', 'Category/Knowledge/pdf/ဂရုမစိုက်ခြင်းအနုပညာ.pdf', 3000.00, 0, NULL, NULL),
(4, 'ငါ့အတွက်ငါရှိတယ်', 'ငါ့အတွက်ငါရှိတယ်', 1, 'လင်းရောင်စင်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Knowledge/image/img9.jpg', 'Category/Knowledge/pdf/ငါ့အတွက်ငါရှိတယ်.pdf', 4000.00, 0, NULL, NULL),
(5, 'အားရှိတဲ့အချိန်မှာခုန်လိုက်ပါ', 'အားရှိတဲ့အချိန်မှာခုန်လိုက်ပါ', 1, 'အောင်ကိုဦး', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Knowledge/image/img13.png', 'Category/Knowledge/pdf/အားရှိတဲ့အချိန်မှာခုန်လိုက်ပါ.pdf', 5000.00, 0, NULL, NULL),
(6, 'ပန်ထွာဘုရင်မ', 'ပန်ထွာဘုရင်မ', 2, 'စိမ့် (ပညာရေး)', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Novel/image/img1.png', 'Category/Novel/pdf/ပန်ထွာဘုရင်မ.pdf', 4000.00, 0, NULL, NULL),
(7, 'လူနာဆောင်အမှတ်ခြောက်', 'လူနာဆောင်အမှတ်ခြောက်', 2, 'ဖေမြင့်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Novel/image/img7.png', 'Category/Novel/pdf/လူနာဆောင်အမှတ်ခြောက်.pdf', 5000.00, 4, NULL, NULL),
(8, 'ဘေဘီလုံမှာအချမ်းသာဆုံးပုဂ္ဂိုလ်', 'ဘေဘီလုံမှာအချမ်းသာဆုံးပုဂ္ဂိုလ်', 2, 'ဖေမြင့်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Novel/image/img8.png', 'Category/Novel/pdf/ဘေဘီလုံမှာအချမ်းသာဆုံးပုဂ္ဂိုလ်.pdf', 4000.00, 0, NULL, NULL),
(9, 'သူငယ်ချင်းတစ်ယောက်အကြောင်း', 'သူငယ်ချင်းတစ်ယောက်အကြောင်း', 2, 'မင်းလူ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Novel/image/img10.png', 'Category/Novel/pdf/သူငယ်ချင်းတစ်ယောက်အကြောင်း.pdf', 3000.00, 0, NULL, NULL),
(10, 'နှုတ်ခမ်း၏ထောင့်စွန်းများ', 'နှုတ်ခမ်း၏ထောင့်စွန်းများ', 2, 'မင်းလူ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Novel/image/img11.jpg', 'Category/Novel/pdf/နှုတ်ခမ်း၏ထောင့်စွန်းများ.pdf', 3500.00, 0, NULL, NULL),
(11, 'စီးပွားရေးတွေးခေါ်ရှင်များ', 'စီးပွားရေးတွေးခေါ်ရှင်များ', 3, 'ဖေမြင့်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Business/image/businessThinkers.png', 'Category/Business/pdf/စီးပွားရေးတွေးခေါ်ရှင်များ.pdf', 4500.00, 0, NULL, NULL),
(12, 'အမြန်ဆုံးသူဌေးဖြစ်နည်း', 'အမြန်ဆုံးသူဌေးဖြစ်နည်း', 3, 'မောင်ပေါ်ထွန်း', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Business/image/fastwaytorich.png', 'Category/Business/pdf/အမြန်ဆုံးသူဌေးဖြစ်နည်း.pdf', 3500.00, 0, NULL, NULL),
(13, 'သူဌေးကြီးဖြစ်နည်း', 'သူဌေးကြီးဖြစ်နည်း', 3, 'စွမ်းထက်အောင်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. \r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati \r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus \r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Business/image/howtobearichman.png', 'Category/Business/pdf/သူဌေးကြီးဖြစ်နည်း.pdf', 4000.00, 0, NULL, NULL),
(24, 'ကိုယ်ပိုင်စီးပွားရေးလုပ်တော့မယ်ဆိုရင်', 'ကိုယ်ပိုင်စီးပွားရေးလုပ်တော့မယ်ဆိုရင်', 3, 'အောင်ကိုဦး', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Business/image/img4.png', 'Category/Business/pdf/ကိုယ်ပိုင်စီးပွားရေးလုပ်တော့မယ်ဆိုရင်.pdf', 4000.00, 0, NULL, NULL),
(25, 'ဂျက်မားနှင့်အလီဘာဘာ', 'ဂျက်မားနှင့်အလီဘာဘာ', 3, 'ဗန်းမော်သိန်းဖေ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Business/image/jatmarandalibaba.png', 'Category/Business/pdf/ဂျက်မားနှင့်အလီဘာဘာ.pdf', 4000.00, 0, NULL, NULL),
(26, 'အထုံ', 'အထုံ', 4, 'အကြည်တော်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Comedy/image/ahtone.png', 'Category/Comedy/pdf/အထုံ.pdf', 4000.00, 0, NULL, NULL),
(27, 'ဘုံကြိုးပြတ်ငတေ', 'ဘုံကြိုးပြတ်ငတေ', 4, 'ဓနုတ်ကိုကိုဇော်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Comedy/image/bonkyoepyatngatay.png', 'Category/Comedy/pdf/ဘုံကြိုးပြတ်ငတေ.pdf', 4000.00, 0, NULL, NULL),
(28, 'မပစ်ပါနဲ့မောင်ရင်ရယ်', 'မပစ်ပါနဲ့မောင်ရင်ရယ်', 4, 'ကြက်ကလေး', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Comedy/image/dontshootmgyin.png', 'Category/Comedy/pdf/မပစ်ပါနဲ့မောင်ရင်ရယ်.pdf', 5500.00, 0, NULL, NULL),
(29, 'လူလည်ကြီးများရွာ', 'လူလည်ကြီးများရွာ', 4, 'ဖေမြင့်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Comedy/image/img2.png', 'Category/Comedy/pdf/လူလည်ကြီးများရွာ.pdf', 6000.00, 0, NULL, NULL),
(30, 'ဂျာအေးနှင့်ရွှေအိုးကြီး', 'ဂျာအေးနှင့်ရွှေအိုးကြီး', 4, 'ပေါ်ဂျာရစ်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Comedy/image/jarayeandshweoo.png', 'Category/Comedy/pdf/ဂျာအေးနှင့်ရွှေအိုးကြီး.pdf', 5000.00, 0, NULL, NULL),
(31, '၁၃၀၀ပြည့်အရေးတော်ပုံ', '၁၃၀၀ပြည့်အရေးတော်ပုံ', 5, 'စာရေးဆရာများ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/History/image/1300uprising.png', 'Category/History/pdf/၁၃၀၀ပြည့်အရေးတော်ပုံ.pdf', 3500.00, 0, NULL, NULL),
(32, 'ဒိုင်းခင်ခင်', 'ဒိုင်းခင်ခင်', 5, 'စိမ့်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/History/image/daikhinkhin.png', 'Category/History/pdf/ဒိုင်းခင်ခင်.pdf', 3000.00, 0, NULL, NULL),
(33, 'ထားဝယ်ရာဇဝင်သမိုင်း', 'ထားဝယ်ရာဇဝင်သမိုင်း', 5, 'ရွှေဝယ်အဲ့', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/History/image/daweiHistory.png', 'Category/History/pdf/ထားဝယ်ရာဇဝင်သမိုင်း.pdf', 5000.00, 0, NULL, NULL),
(34, 'ပထမမြန်မာများ', 'ပထမမြန်မာများ', 5, 'မင်းယုဝေ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/History/image/firstburmese.png', 'Category/History/pdf/ပထမမြန်မာများ.pdf', 5500.00, 0, NULL, NULL),
(35, 'ဂန္ဒီ (သို့) မဟာလူသား', 'ဂန္ဒီသို့မဟာလူသား', 5, 'မင်းပုည', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/History/image/gandi.png', 'Category/History/pdf/ဂန္ဒီ (သို့) မဟာလူသား.pdf', 4500.00, 4, NULL, NULL),
(36, 'ရာဇာဓိရာဇ်အရေးတော်ပုံကျမ်း', 'ရာဇာဓိရာဇ်အရေးတော်ပုံကျမ်း', 6, 'နိုင်းပန်လှ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/History/image/razadirizUprising.png', 'Category/History/pdf/ရာဇာဓိရာဇ်အရေးတော်ပုံကျမ်း.pdf', 2500.00, 0, NULL, NULL),
(37, 'အိမ်မက်နိမိတ်ပေါင်းချုပ်', 'အိမ်မက်နိမိတ်ပေါင်းချုပ်', 6, 'အောင်မြတ်ဦး', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Mystery/image/dream.png', 'Category/Mystery/pdf/အိမ်မက်နိမိတ်ပေါင်းချုပ်.pdf', 2500.00, 3, NULL, NULL),
(38, 'ဂမ္ဘီရမိန်းကလေး', 'ဂမ္ဘီရမိန်းကလေး', 6, 'ဆွေမြင့်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Mystery/image/ganbiyagirl.png', 'Category/Mystery/pdf/ဂမ္ဘီရမိန်းကလေး.pdf', 2500.00, 0, NULL, NULL),
(39, 'မဟာရွှေတံခါး ရှမ်ဘဲလား', 'မဟာရွှေတံခါးရှမ်ဘဲလား', 6, '	\r\nစိတြအဂ္ဂ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Mystery/image/mahrshwedakarshanpaelrr.png', 'Category/Mystery/pdf/မဟာရွှေတံခါး ရှမ်ဘဲလား.pdf', 4300.00, 0, NULL, NULL),
(40, 'မင်းဘာသိလို့လဲ', 'မင်းဘာသိလို့လဲ', 6, 'မင်းသိင်္ခ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Mystery/image/minbrthiloclal.png', 'Category/Mystery/pdf/မင်းဘာသိလို့လဲ.pdf', 4000.00, 0, NULL, NULL),
(41, 'နဂါးမလေးမောင့်ချစ်သူ', 'နဂါးမလေးမောင့်ချစ်သူ', 7, 'မြိတ်ဝင်းထိန်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Mystery/image/nagarmalaymgchitthu.png', 'Category/Mystery/pdf/နဂါးမလေးမောင့်ချစ်သူ.pdf', 3500.00, 0, NULL, NULL),
(42, 'ပုလဲနက်တစ္ဆေ', 'ပုလဲနက်တစ္ဆေ', 7, 'တြိစက္ခ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Thriller/image/blackpearlghost.png', 'Category/Thriller/pdf/ပုလဲနက်တစ္ဆေ.pdf', 4000.00, 0, NULL, NULL),
(43, 'မိစ္ဆာပူးသောဘဝများ', 'မိစ္ဆာပူးသောဘဝများ', 7, 'ဆောင်းလုလင်', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Thriller/image/falselives.png', 'Category/Thriller/pdf/မိစ္ဆာပူးသောဘဝများ.pdf', 5000.00, 0, NULL, NULL),
(44, 'သရဲကမ္ဘာ', 'သရဲကမ္ဘာ', 7, 'ဒေဝတါ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Thriller/image/ghostworld.png', 'Category/Thriller/pdf/သရဲကမ္ဘာ.pdf', 3500.00, 0, NULL, NULL),
(45, 'ကဝေသိုက်', 'ကဝေသိုက်', 7, 'တာတေ', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'Category/Thriller/image/kawaythike.png', 'Category/Thriller/pdf/ကဝေသိုက်.pdf', 4000.00, 0, NULL, NULL),
(46, 'Rockstar Developer 2025', 'RockstarDeveloper2025', 8, 'Ei Maung', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'uploads/bookImage/66b2677cd9fdc-rsd2025.png', '66b2677cd9fe1-Rockstar-Developer-2025.pdf', 5000.00, 10, NULL, NULL),
(47, 'Professional Web Developer 2023', 'ProfessionalWebDeveloper2023', 8, 'Ei Maung', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.\r\nRepudiandae quisquam error maxime necessitatibus? Obcaecati\r\nvitae earum quod cum aliquid autem? Ut fugiat animi minus\r\nmaxime quibusdam recusandae sint dolorum sequi.', 'uploads/bookImage/66b3c0c7d71b2-pwd2023.png', '	\r\n66b3c0c7d73b1-Professional-Web-Developer-2022.pdf', 5000.00, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Knowledge', 'knowledge', NULL, NULL),
(2, 'Novel', 'novel', NULL, NULL),
(3, 'Business', 'business', NULL, NULL),
(4, 'Comedy', 'comey', NULL, NULL),
(5, 'History', 'history', NULL, NULL),
(6, 'Mystery', 'mystery', NULL, NULL),
(7, 'Thriller', 'thriller', NULL, NULL),
(8, 'Computer Science', 'computer_science', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2024_11_23_151656_create_books_table', 1),
(6, '2024_11_23_151840_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Kyaw Zin', 'kyawzinthant57@gmail.com', NULL, '$2y$10$s9MFKGuqkKk8KK.jijeP1OGG08jp9sfAOY6IyCgMOOFHrItq3xa8W', 'uploads/user_image/defaultImage.jpeg', '2024-11-24 11:53:46', '2024-11-24 15:15:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD PRIMARY KEY (`email`);

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
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
