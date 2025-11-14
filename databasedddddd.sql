
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `portalid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `user` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `pass` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `lastlogin` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `lastip` varchar(15) COLLATE utf8_persian_ci DEFAULT NULL,
  `levelaccess` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `mobile` varchar(22) COLLATE utf8_persian_ci DEFAULT NULL,
  `smssend` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `level`, `portalid`, `name`, `image`, `user`, `pass`, `lastlogin`, `lastip`, `levelaccess`, `mobile`, `smssend`, `status`) VALUES
(1, 0, 342, 'پشتیبان', '', 'adtoto', '7e5315a094634567cafb67463596670a92b93927', '1398/10/28 21:01', '86.57.6.55', 'contents_add,contents_edit,contents_delete,\r\ncontents_list,message_list,message_view,comment_list,comment_view,counter_list,change_status,message_delete,comment_delete,,advertisecat_add,advertisecat_edit,advertisecat_delete,admin_change_pass,contenttype_edit,advertisecat_list,counter_chart,getrelated,change_pass,users_add,users_list,users_edit,users_delete,users_change_pass,users_increase,users_decrease,bets_list,payment_list,withdraw_list,withdraw_view,withdraw_status,tickets_list,tickets_view,tickets_status,bets_cancel,users_excel,payment_list,payment_view,payment_status,message_delete,casino_list,casino_add,casino_edit,casino_delete,casino_incomming,prematch_incomming,casino_user_list,payment_list,unit_add,changeunit_add,changeunit_edit,\r\nchangeunit_delete,unit_delete,unit_edit,user_manage', NULL, '1', '1'),
(2, 0, 0, 'مدیر ارشد', 'bwin_farsi', 'admin', 'adcd7048512e64b48da55b027577886ee5a36350', '1400/01/30 15:22', '127.0.0.1', 'admin_add,admin_edit,admin_delete,admin_levelaccess,contents_add,contents_edit,contents_delete,contents_list,advertise_add,advertise_list,advertise_edit,advertise_delete,message_list,message_view,comment_list,comment_view,counter_list,change_status,message_delete,comment_delete,admin_list,advertisecat_add,advertisecat_edit,advertisecat_delete,slideshowcat_add,slideshowcat_edit,slideshowcat_delete,admin_change_pass,contenttype_edit,advertisecat_list,counter_chart,slideshowcat_list,slideshow_add,slideshow_edit,slideshow_delete,slideshow_list,getrelated,admingroup_add,admingroup_list,admingroup_edit,admingroup_delete,admingroup_copy,admingroup_levelaccess,change_pass,users_add,users_list,users_edit,users_delete,users_change_pass,users_increase,users_decrease,bets_list,payment_list,withdraw_list,withdraw_view,withdraw_status,tickets_list,tickets_view,tickets_status,team_list,team_edit,pages_add,pages_list,pages_edit,pages_delete,pages_is_home,menu_groups_add,menu_groups_edit,menu_groups_delete,menu_groups_list,menus_add,menus_edit,menus_delete,menus_list,settings,settings_edit,game_list,game_code,game_status,api_list,api_add,api_edit,api_delete,leagues_list,leagues_edit,bets_cancel,payment_list,users_excel,day_incomming,home_game_list,home_game_status,users_view,users_message,live_game_list,paymethod_list,paymethod_add,paymethod_edit,paymethod_delete,gateway_list,gateway_add,gateway_edit,gateway_delete,sports_list,sports_add,sports_edit,sports_delete,payment_list,payment_view,payment_status,message_delete,casino_list,casino_add,casino_edit,casino_delete,casino_incomming,prematch_incomming,casino_user_list,payment_list,unit_add,changeunit_add,changeunit_edit,changeunit_delete,unit_delete,unit_edit,user_manage,gateway_manage,sport_manage,cgame_manage,setting,teamgame_list,slider,slider_manage', NULL, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `admingroup`
--

CREATE TABLE `admingroup` (
  `id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `levelaccess` text COLLATE utf8_persian_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admingroup`
--

INSERT INTO `admingroup` (`id`, `name`, `levelaccess`, `status`) VALUES
(0, 'مدیر', 'admin_add,admin_list,admin_edit,admingroup_add,admin_delete,admingroup_list,admin_levelaccess,admingroup_edit,admingroup_delete,change_status,admingroup_copy,admingroup_levelaccess,admin_change_pass,contents_add,contents_list,getrelated,contents_edit,contents_delete,contenttype_edit,comment_list,comment_view,comment_delete,message_delete,message_view,advertise_add,advertise_list,advertise_edit,advertise_delete,advertisecat_add,advertisecat_edit,advertisecat_list,advertisecat_delete,slideshow_add,slideshow_list,slideshow_edit,slideshow_delete,slideshowcat_add,slideshowcat_edit,slideshowcat_delete,slideshowcat_list,settings,settings_edit,counter_chart,counter_list,users_add,users_delete,bets_cancel,bets_list,payment_list,payment_list,payment_list,withdraw_list,withdraw_view,withdraw_status,tickets_list,tickets_view,tickets_status,team_list,team_edit,pages_edit,pages_delete,pages_is_home,pages_add,pages_list,menus_list,game_list,home_game_list,game_status,home_game_status,api_list,leagues_list,day_incomming,paymethod_list,paymethod_delete,paymethod_add,paymethod_edit,gateway_list,gateway_delete,gateway_add,gateway_edit,sports_list,sports_delete,sports_add,sports_edit', '1');

-- --------------------------------------------------------

--
-- Table structure for table `admin_levelcat`
--

CREATE TABLE `admin_levelcat` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `style` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8_persian_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin_levelcat`
--

INSERT INTO `admin_levelcat` (`id`, `name`, `style`, `image`, `sort`, `status`) VALUES
(2, 'مدیریت مطالب', 'icon-newspaper', '', 0, '0'),
(3, 'مدیریت گالری', 'icon-images2', '', 3, '0'),
(4, 'مدیریت تبلیغات', 'icon-film4', '', 4, '1'),
(5, 'مدیریت پیوندها', 'icon-link2', '', 5, '0'),
(6, 'مدیریت نظرسنجی', 'icon-stats-bars', '', 6, '0'),
(8, 'مدیریت خبرنامه', 'icon-envelop2', '', 14, '0'),
(9, 'سایر امکانات', 'icon-puzzle4', '', 33, '1'),
(11, 'مدیریت سوالات متداول', 'icon-plus-circle2', '', 11, '0'),
(12, 'مدیریت صفحات', 'icon-stack-empty', '', 13, '0'),
(13, 'مدیریت اطلاعات پایه', 'icon-profile', '', 13, '0'),
(21, 'مدیریت محصولات', 'icon-basket', '', 12, '0'),
(22, 'مدیریت اطلاعات مناطق', 'icon-map4', '', 22, '0'),
(26, 'مدیریت اعضاء', 'icon-people', '', 2, '0'),
(27, 'مدیریت مناسبت ها', 'icon-calendar3', '', 27, '0'),
(29, 'پیامهای روزانه', 'icon-bookmark', '', 5, '0'),
(32, 'مدیریت آزمون', 'icon-clipboard2', '', 1, '0'),
(33, 'مدیریت خدمات', 'icon-portfolio', '', 11, '0'),
(34, 'مدیریت پروژه', 'icon-package', '', 11, '0'),
(35, 'مدیریت واحد کاری', 'icon-collaboration', '', 11, '0'),
(36, 'مدیریت کاربران', 'icon-users', '', 1, '0'),
(37, 'ویرایش کاربران', 'icon-people', '', 2, '1'),
(38, 'آمار شرط ها', 'fa fa-soccer-ball-o', '', 2, '1'),
(39, 'امور مالی', 'icon-calculator2', '', 3, '1'),
(40, 'درخواست وجه', 'icon-cash3', '', 4, '1'),
(41, 'تیکت ها', 'icon-bubbles10', '', 5, '1'),
(42, 'مترجم خودکار', 'icon-users4', '', 6, '1'),
(43, 'مدیریت صفحات', 'icon-stack', '', 7, '1'),
(44, 'مدیریت منو', 'icon-menu2', '', 12, '1'),
(45, 'مدیریت بازی ها', 'fa fa-gamepad', '', 6, '1'),
(46, 'تنظیمات API ورزشی', 'icon-archive', '', 6, '1'),
(48, 'مدیریت درآمد', 'icon-coins', '', 0, '1'),
(50, 'تنظیمات درگاه ها', 'icon-server', '', 11, '1'),
(51, 'مدیریت ورزش ها', 'fa fa-child', '', 11, '1'),
(52, 'مدیریت کازینو', 'fa fa-child', '', 12, '1'),
(54, 'تنظیمات اسلایدر', 'fa fa-photo', '', 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `admin_levellist`
--

CREATE TABLE `admin_levellist` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `path` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `page` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `extraparam` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `showinmenu` varchar(1) COLLATE utf8_persian_ci DEFAULT '0',
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin_levellist`
--

INSERT INTO `admin_levellist` (`id`, `cat`, `name`, `path`, `page`, `sort`, `icon`, `description`, `extraparam`, `showinmenu`, `status`) VALUES
(1, 1, 'ثبت کاربر جدید', 'admin', 'admin_add', 0, '', NULL, NULL, '0', '1'),
(2, 1, 'ویرایش کاربر', 'admin', 'admin_edit', 1, '', NULL, NULL, '0', '1'),
(3, 1, 'حذف کاربر', 'admin', 'admin_delete', 2, '', NULL, NULL, '0', '1'),
(4, 1, 'سطح دسترسی', 'admin', 'admin_levelaccess', 3, '', NULL, NULL, '0', '1'),
(5, 2, 'مطلب جدید', 'contents', 'contents_add', 0, '', NULL, NULL, '1', '1'),
(6, 2, 'ویرایش مطلب', 'contents', 'contents_edit', 2, '', NULL, NULL, '0', '1'),
(7, 2, 'حذف مطلب', 'contents', 'contents_delete', 3, '', NULL, NULL, '0', '1'),
(8, 2, 'لیست مطالب', 'contents', 'contents_list', 1, '', NULL, NULL, '1', '1'),
(9, 2, 'گروه خبری جدید', 'category', 'category_add', 4, '', NULL, NULL, '1', '0'),
(10, 2, 'ویرایش گروه بندی', 'category', 'category_edit', 5, '', NULL, NULL, '0', '0'),
(11, 2, 'حذف گروه بندی', 'category', 'category_delete', 6, '', NULL, NULL, '0', '0'),
(16, 3, 'گالری جدید', 'gallery', 'gallery_add', 0, '', NULL, NULL, '1', '0'),
(17, 3, 'لیست گالری', 'gallery', 'gallery_list', 1, '', NULL, NULL, '1', '0'),
(18, 3, 'ویرایش گالری', 'gallery', 'gallery_edit', 2, '', NULL, NULL, '0', '0'),
(19, 3, 'حذف گالری', 'gallery', 'gallery_delete', 3, '', NULL, NULL, '0', '0'),
(20, 3, 'گروه بندی گالری', 'gallerycat', 'gallerycat_add', 4, '', NULL, NULL, '1', '0'),
(21, 3, 'ویرایش گروه بندی', 'gallerycat', 'gallerycat_edit', 5, '', NULL, NULL, '0', '0'),
(22, 3, 'حذف گروه بندی', 'gallerycat', 'gallerycat_delete', 6, '', NULL, NULL, '0', '0'),
(23, 8, 'ارسال خبرنامه', 'newsletter', 'newsletter_send', 3, '', NULL, NULL, '0', '0'),
(28, 5, 'پیوند جدید', 'link', 'link_add', 4, '', NULL, NULL, '1', '0'),
(29, 5, 'ویرایش پیوند متنی', 'link', 'link_edit', 5, '', NULL, NULL, '0', '0'),
(30, 5, 'حذف پیوند متنی', 'link', 'link_delete', 6, '', NULL, NULL, '0', '0'),
(31, 6, 'لیست نظرسنجی', 'polling', 'polling_list', 7, '', NULL, NULL, '1', '0'),
(32, 6, 'ویرایش نظرسنجی', 'polling', 'polling_edit', 8, '', NULL, NULL, '0', '0'),
(33, 6, 'حذف نظرسنجی', 'polling', 'polling_delete', 9, '', NULL, NULL, '0', '0'),
(38, 6, 'گروه بندی نظرسنجی', 'pollingcat', 'pollingcat_add', 10, '', NULL, NULL, '1', '0'),
(39, 6, 'ویرایش گروه نظرسنجی', 'pollingcat', 'pollingcat_edit', 11, '', NULL, NULL, '0', '0'),
(40, 6, 'حذف گروه نظرسنجی', 'pollingcat', 'pollingcat_delete', 12, '', NULL, NULL, '0', '0'),
(41, 2, 'پیامهای ارسالی', 'message', 'message_list', 14, '', NULL, NULL, '0', '1'),
(43, 2, 'مشاهده نظرات', 'message', 'message_view', 15, '', NULL, NULL, '0', '1'),
(44, 2, 'نظرات مطالب', 'comment', 'comment_list', 10, '', NULL, NULL, '0', '1'),
(45, 2, 'مشاهده نظرات مطالب', 'comment', 'comment_view', 11, '', NULL, NULL, '0', '1'),
(49, 6, 'نتایج نظرسنجی', 'polling', 'pollingresult', 20, '', NULL, NULL, '0', '0'),
(54, 8, 'عضویت در خبرنامه', 'newsletter', 'newsletter_add', 25, '', NULL, NULL, '1', '0'),
(55, 8, 'لیست اعضای خبرنامه', 'newsletter', 'newsletter_list', 26, '', NULL, NULL, '1', '0'),
(56, 8, 'ویرایش اعضای خبرنامه', 'newsletter', 'newsletter_edit', 27, '', NULL, NULL, '0', '0'),
(57, 8, 'حذف اعضای خبرنامه', 'newsletter', 'newsletter_delete', 28, '', NULL, NULL, '0', '0'),
(61, 9, 'سیستم آپلود', 'uploader', 'uploader_add', 32, '', NULL, NULL, '1', '0'),
(64, 29, 'گروه بندی پیامها', 'dailycat', 'dailycat_add', 45, '', NULL, NULL, '1', '0'),
(65, 9, 'تنظیمات اصلی سایت', 'setting', 'setting', 36, '', NULL, NULL, '0', '0'),
(76, 12, 'صفحه جدید', 'page', 'pages_edit', 46, '', NULL, NULL, '1', '0'),
(77, 12, 'لیست صفحات', 'page', 'page_list', 47, '', NULL, NULL, '1', '0'),
(78, 12, 'ویرایش صفحه', 'page', 'page_edit', 48, '', NULL, NULL, '0', '0'),
(79, 12, 'حذف صفحه', 'page', 'page_delete', 49, '', NULL, NULL, '0', '0'),
(93, 13, 'تعریف حساب جدید', 'hesab', 'hesab_add', 63, '', NULL, NULL, '0', '0'),
(94, 13, 'مدیریت حساب ها', 'hesab', 'hesab_list', 64, '', NULL, NULL, '1', '0'),
(95, 13, 'ویرایش حساب', 'hesab', 'hesab_edit', 65, '', NULL, NULL, '0', '0'),
(96, 13, 'حذف حساب', 'hesab', 'hesab_delete', 66, '', NULL, NULL, '0', '0'),
(143, 1, 'وضعیت اطلاعات', '', 'change_status', 5, '', NULL, NULL, '0', '1'),
(144, 2, 'حذف پیامها', 'message', 'message_delete', 14, '', NULL, NULL, '0', '1'),
(145, 2, 'حذف نظرات مطالب', 'comment', 'comment_delete', 12, '', NULL, NULL, '0', '1'),
(162, 21, 'گروه بندی محصولات', 'productcat', 'productcat_add', 5, '', NULL, NULL, '1', '0'),
(163, 21, 'لیست گروه محصولات', 'productcat', 'productcat_list', 6, '', NULL, NULL, '1', '0'),
(164, 21, ' ویرایش گروه محصولات', 'productcat', 'productcat_edit', 7, '', NULL, NULL, '0', '0'),
(165, 21, ' حذف گروه محصولات', 'productcat', 'productcat_delete', 8, '', NULL, NULL, '0', '0'),
(166, 21, ' محصول جدید', 'products', 'products_add', 1, '', NULL, NULL, '1', '0'),
(167, 21, 'لیست محصولات', 'products', 'products_list', 2, '', NULL, NULL, '1', '0'),
(168, 21, ' ویرایش محصولات', 'products', 'products_edit', 3, '', NULL, NULL, '0', '0'),
(169, 21, ' حذف محصولات', 'products', 'products_delete', 4, '', NULL, NULL, '0', '0'),
(186, 26, 'اضافه کردن کاربر', 'members', 'members_add', 1, '', NULL, NULL, '1', '0'),
(187, 26, 'لیست کاربران', 'members', 'members_list', 2, '', NULL, NULL, '1', '0'),
(188, 26, 'ویرایش کاربر', 'members', 'members_edit', 3, '', NULL, NULL, '0', '0'),
(189, 26, 'حذف کاربر', 'members', 'members_delete', 4, '', NULL, NULL, '0', '0'),
(194, 29, 'ویرایش گروه پیامها', 'dailycat', 'dailycat_edit', 45, '', NULL, NULL, '0', '0'),
(195, 29, 'حذف گروه پیامها ', 'dailycat', 'dailycat_delete', 45, '', NULL, NULL, '0', '0'),
(236, 13, 'درج مدرک تحصیلی', 'grade', 'grade_add', 9, '', NULL, NULL, '0', '0'),
(237, 13, 'ویرایش مدرک', 'grade', 'grade_edit', 86, '', NULL, NULL, '0', '0'),
(238, 13, 'حذف مدرک', 'grade', 'grade_delete', 87, '', NULL, NULL, '0', '0'),
(254, 5, 'گروه بندی پیوندها', 'linkcat', 'linkcat_add', 103, '', NULL, NULL, '1', '0'),
(255, 5, 'ویرایش گروه پیوندها', 'linkcat', 'linkcat_edit', 104, '', NULL, NULL, '0', '0'),
(256, 5, 'حذف گروه پیوندها', 'linkcat', 'linkcat_delete', 105, '', NULL, NULL, '0', '0'),
(279, 2, 'لیست گروه خبری', 'category', 'category_list', 4, '', NULL, NULL, '1', '0'),
(280, 2, 'نوع مطلب جدید', 'contenttype', 'contenttype_add', 4, '', NULL, NULL, '1', '0'),
(281, 2, 'لیست نوع مطلب', 'contenttype', 'contenttype_list', 4, '', NULL, NULL, '1', '0'),
(282, 1, 'تغییر رمز عبور کاربر', 'admin', 'admin_change_pass', 7, '', NULL, NULL, '0', '1'),
(283, 5, 'لیست گروه پیوندها', 'linkcat', 'linkcat_list', 106, '', NULL, NULL, '1', '0'),
(284, 5, 'لیست پیوندها', 'link', 'link_list', 4, '', NULL, NULL, '1', '0'),
(285, 3, 'لیست گروه بندی گالری', 'gallerycat', 'gallerycat_list', 5, '', NULL, NULL, '1', '0'),
(286, 2, 'حذف نوع مطلب', 'contenttype', 'contenttype_delete', 4, '', NULL, NULL, '0', '0'),
(287, 2, 'ویرایش نوع مطلب', 'contenttype', 'contenttype_edit', 4, '', NULL, NULL, '0', '1'),
(289, 29, 'لیست گروه پیامها', 'dailycat', 'dailycat_list', 46, '', NULL, NULL, '1', '0'),
(290, 29, 'پیام جدید', 'dailymessage', 'dailymessage_add', 35, '', NULL, NULL, '1', '0'),
(291, 29, 'حذف پیامها ', 'dailymessage', 'dailymessage_delete', 36, '', NULL, NULL, '0', '0'),
(292, 29, 'ویرایش پیامها', 'dailymessage', 'dailymessage_edit', 37, '', NULL, NULL, '0', '0'),
(293, 29, 'لیست پیامها', 'dailymessage', 'dailymessage_list', 38, '', NULL, NULL, '1', '0'),
(296, 32, 'حذف گروه دوره ها', 'coursecat', 'coursecat_delete', 105, '', NULL, NULL, '0', '0'),
(297, 32, 'لیست گروه دوره ها', 'coursecat', 'coursecat_list', 7, '', NULL, NULL, '1', '0'),
(298, 32, 'گروه بندی دوره ها', 'coursecat', 'coursecat_add', 6, '', NULL, NULL, '1', '0'),
(299, 32, 'دوره جدید', 'courses', 'courses_add', 4, '', NULL, NULL, '1', '0'),
(300, 32, 'لیست دوره ها', 'courses', 'courses_list', 5, '', NULL, NULL, '1', '0'),
(301, 32, 'ویرایش دوره', 'courses', 'courses_edit', 6, '', NULL, NULL, '0', '0'),
(302, 32, 'حذف دوره', 'courses', 'courses_delete', 7, '', NULL, NULL, '0', '0'),
(303, 32, 'مبحث جدید', 'coursepart', 'coursepart_add', 8, '', NULL, NULL, '0', '0'),
(304, 32, 'لیست مباحث', 'coursepart', 'coursepart_list', 9, '', NULL, NULL, '0', '0'),
(305, 32, 'ویرایش مبحث', 'coursepart', 'coursepart_edit', 5, '', NULL, NULL, '0', '0'),
(306, 32, 'حذف مبحث', 'coursepart', 'coursepart_delete', 6, '', NULL, NULL, '0', '0'),
(307, 32, 'سطح بندی جدید', 'questionlevel', 'questionlevel_add', 8, '', NULL, NULL, '1', '0'),
(308, 32, 'لیست سطوح ', 'questionlevel', 'questionlevel_list', 9, '', NULL, NULL, '1', '0'),
(309, 32, 'ویرایش سطح بندی', 'questionlevel', 'questionlevel_edit', 5, '', NULL, NULL, '0', '0'),
(310, 32, 'حذف سطح بندی', 'questionlevel', 'questionlevel_delete', 6, '', NULL, NULL, '0', '0'),
(311, 32, 'سطح جدید سوالات', 'examlevel', 'examlevel_add', 13, '', NULL, NULL, '0', '0'),
(312, 32, 'لیست سطح سوالات', 'examlevel', 'examlevel_list', 14, '', NULL, NULL, '0', '0'),
(313, 32, 'ویرایش سطح سوالات', 'examlevel', 'examlevel_edit', 5, '', NULL, NULL, '0', '0'),
(314, 32, 'حذف سطح سوالات', 'examlevel', 'examlevel_delete', 6, '', NULL, NULL, '0', '0'),
(315, 32, 'مبحث جدید آزمون', 'exampart', 'exampart_add', 15, '', NULL, NULL, '0', '0'),
(316, 32, 'لیست مباحث آزمون', 'exampart', 'exampart_list', 16, '', NULL, NULL, '0', '0'),
(317, 32, 'ویرایش مباحث آزمون', 'exampart', 'exampart_edit', 5, '', NULL, NULL, '0', '0'),
(318, 32, 'حذف مبحث آزمون', 'exampart', 'exampart_delete', 6, '', NULL, NULL, '0', '0'),
(319, 32, 'وابستگی جدید', 'examdepend', 'examdepend_add', 8, '', NULL, NULL, '0', '0'),
(320, 32, 'لیست وابستگی ها', 'examdepend', 'examdepend_list', 9, '', NULL, NULL, '0', '0'),
(321, 32, 'ویرایش وابستگی', 'examdepend', 'examdepend_edit', 5, '', NULL, NULL, '0', '0'),
(322, 32, 'حذف وابستگی', 'examdepend', 'examdepend_delete', 6, '', NULL, NULL, '0', '0'),
(323, 32, 'آزمون جدید', 'exam', 'exam_add', 1, '', NULL, NULL, '1', '0'),
(324, 32, 'لیست آزمونها', 'exam', 'exam_list', 2, '', NULL, NULL, '1', '0'),
(325, 32, 'ویرایش آزمون', 'exam', 'exam_edit', 5, '', NULL, NULL, '0', '0'),
(326, 32, 'حذف آزمون', 'exam', 'exam_delete', 6, '', NULL, NULL, '0', '0'),
(327, 13, 'مدیریت مدرک تحصیلی', 'grade', 'grade_list', 9, '', NULL, NULL, '1', '0'),
(328, 13, 'مدیریت سوالات امنیتی', 'secquestion', 'secquestion_list', 2, '', NULL, NULL, '1', '0'),
(329, 13, 'درج سوال امنیتی', 'secquestion', 'secquestion_add', 1, '', NULL, NULL, '0', '0'),
(330, 13, 'ویرایش سوال امنیتی', 'secquestion', 'secquestion_edit', 86, '', NULL, NULL, '0', '0'),
(331, 13, 'حذف سوال امنیتی', 'secquestion', 'secquestion_delete', 87, '', NULL, NULL, '0', '0'),
(332, 22, 'مدیریت شهرستانها', 'shahrestan', 'shahrestan_list', 6, '', NULL, NULL, '1', '0'),
(333, 22, 'درج شهرستان', 'shahrestan', 'shahrestan_add', 5, '', NULL, NULL, '0', '0'),
(334, 22, 'ویرایش شهرستان', 'shahrestan', 'shahrestan_edit', 86, '', NULL, NULL, '0', '0'),
(335, 22, 'حذف شهرستان', 'shahrestan', 'shahrestan_delete', 87, '', NULL, NULL, '0', '0'),
(336, 22, 'مدیریت استانها', 'ostan', 'ostan_list', 6, '', NULL, NULL, '1', '0'),
(337, 22, 'درج استان', 'ostan', 'ostan_add', 5, '', NULL, NULL, '0', '0'),
(338, 22, 'ویرایش استان', 'ostan', 'ostan_edit', 86, '', NULL, NULL, '0', '0'),
(339, 22, 'حذف استان', 'ostan', 'ostan_delete', 87, '', NULL, NULL, '0', '0'),
(340, 22, 'مدیریت کشورها', 'country', 'country_list', 6, '', NULL, NULL, '1', '0'),
(341, 22, 'درج کشور', 'country', 'country_add', 5, '', NULL, NULL, '0', '0'),
(342, 22, 'ویرایش کشور', 'country', 'country_edit', 86, '', NULL, NULL, '0', '0'),
(343, 22, 'حذف کشور', 'country', 'country_delete', 87, '', NULL, NULL, '0', '0'),
(344, 26, 'پیوستهای اعضاء', 'memberattach', 'memberattach_add', 4, '', NULL, NULL, '0', '0'),
(345, 26, 'لیست پیوستهای اعضاء', 'memberattach', 'memberattach_list', 5, '', NULL, NULL, '0', '0'),
(346, 26, 'ویرایش پیوستهای اعضاء', 'memberattach', 'memberattach_edit', 6, '', NULL, NULL, '0', '0'),
(347, 26, 'حذف پیوستهای اعضاء', 'memberattach', 'memberattach_delete', 7, '', NULL, NULL, '0', '0'),
(348, 6, 'لیست گروه نظرسنجی', 'pollingcat', 'pollingcat_list', 10, '', NULL, NULL, '1', '0'),
(349, 6, 'نظرسنجی جدید', 'polling', 'polling_add', 6, '', NULL, NULL, '1', '0'),
(356, 13, 'مدیریت بانک ها', 'bank', 'bank_list', 10, '', NULL, NULL, '1', '0'),
(357, 13, 'درج بانک', 'bank', 'bank_add', 8, '', NULL, NULL, '0', '0'),
(358, 13, 'ویرایش بانک', 'bank', 'bank_edit', 86, '', NULL, NULL, '0', '0'),
(359, 13, 'حذف بانک', 'bank', 'bank_delete', 87, '', NULL, NULL, '0', '0'),
(360, 33, 'خدمات جدید', 'services', 'services_add', 0, '', NULL, NULL, '1', '0'),
(361, 33, 'ویرایش خدمات', 'services', 'services_edit', 2, '', NULL, NULL, '0', '0'),
(362, 33, 'حذف خدمات', 'services', 'services_delete', 3, '', NULL, NULL, '0', '0'),
(363, 33, 'لیست خدمات', 'services', 'services_list', 1, '', NULL, NULL, '1', '0'),
(364, 33, 'گروه بندی خدمات', 'servicecat', 'servicecat_add', 5, '', NULL, NULL, '1', '0'),
(365, 33, 'لیست گروه خدمات', 'servicecat', 'servicecat_list', 6, '', NULL, NULL, '1', '0'),
(366, 33, ' ویرایش گروه خدمات', 'servicecat', 'servicecat_edit', 7, '', NULL, NULL, '0', '0'),
(367, 33, ' حذف گروه خدمات', 'servicecat', 'servicecat_delete', 8, '', NULL, NULL, '0', '0'),
(368, 11, 'سوال جدید', 'faq', 'faq_add', 0, '', NULL, NULL, '1', '0'),
(369, 11, 'ویرایش سوال', 'faq', 'faq_edit', 2, '', NULL, NULL, '0', '0'),
(370, 11, 'حذف سوال', 'faq', 'faq_delete', 3, '', NULL, NULL, '0', '0'),
(371, 11, 'لیست سوالات', 'faq', 'faq_list', 1, '', NULL, NULL, '1', '0'),
(372, 11, 'گروه بندی سوالات', 'faqcat', 'faqcat_add', 5, '', NULL, NULL, '1', '0'),
(373, 11, 'لیست گروه سوالات', 'faqcat', 'faqcat_list', 6, '', NULL, NULL, '1', '0'),
(374, 11, 'ویرایش گروه سوالات', 'faqcat', 'faqcat_edit', 7, '', NULL, NULL, '0', '0'),
(375, 11, 'حذف گروه سوالات', 'faqcat', 'faqcat_delete', 8, '', NULL, NULL, '0', '0'),
(377, 27, 'مناسبت جدید', 'eventcalendar', 'eventcalendar_add', 1, '', NULL, NULL, '1', '0'),
(378, 27, ' لیست مناسبت ها', 'eventcalendar', 'eventcalendar_list', 2, '', NULL, NULL, '1', '0'),
(379, 27, ' ویرایش مناسبت', 'eventcalendar', 'eventcalendar_edit', 3, '', NULL, NULL, '0', '0'),
(380, 27, ' حذف مناسبت', 'eventcalendar', 'eventcalendar_delete', 4, '', NULL, NULL, '0', '0'),
(418, 26, ' دریافت اطلاعات استان', 'members', 'getostan', 4, '', NULL, NULL, '0', '0'),
(419, 26, ' دریافت اطلاعات شهرستان', 'members', 'getshahrestan', 4, '', NULL, NULL, '0', '0'),
(420, 6, 'درج گزینه نظرسنجی', 'polling', 'pollingitem_add', 6, '', NULL, NULL, '0', '0'),
(421, 6, 'حذف گزینه نظرسنجی', 'polling', 'pollingitem_delete', 6, '', NULL, NULL, '0', '0'),
(422, 6, 'ویرایش گزینه نظرسنجی', 'polling', 'pollingitem_edit', 6, '', NULL, NULL, '0', '0'),
(423, 6, 'لیست گزینه های نظرسنجی', 'polling', 'pollingitem_list', 6, '', NULL, NULL, '0', '0'),
(424, 6, 'جزئیات نتایج نظرسنجی', 'polling', 'pollingresult_details', 20, '', NULL, NULL, '0', '0'),
(425, 28, 'دریافت گروه زیرمنو', 'menu', 'getmenusubcat', 43, '', NULL, NULL, '0', '0'),
(426, 27, ' دریافت نام ماه های سال', 'eventcalendar', 'getmonthname', 4, '', NULL, NULL, '0', '0'),
(427, 2, 'دریافت مطالب مرتبط', 'contents', 'getrelated', 1, '', NULL, NULL, '0', '1'),
(428, 9, 'مدیریت فایل ها', '../filemanager', 'dialog', 1, '', NULL, NULL, '0', '0'),
(429, 32, 'سوالات \r\n\r\nانتخابی جدید', 'examquestions', 'examquestions_add', 8, '', NULL, NULL, '0', '0'),
(430, 32, 'لیست سوالات انتخابی', 'examquestions', 'examquestions_list', 9, '', NULL, NULL, '0', '0'),
(431, 32, 'حذف سوالات انتخابی', 'examquestions', 'examquestions_delete', 6, '', NULL, NULL, '0', '0'),
(432, 32, 'سوالات \r\n\r\nجدید', 'questions', 'questions_add', 1, '', NULL, NULL, '0', '0'),
(433, 32, 'لیست سوالات', 'questions', 'questions_list', 2, '', NULL, NULL, '0', '0'),
(434, 32, 'ویرایش سوالات', 'questions', 'questions_edit', 5, '', NULL, NULL, '0', '0'),
(435, 32, 'حذف سوالات', 'questions', 'questions_delete', 6, '', NULL, NULL, '0', '0'),
(436, 9, 'حذف فایل/فولدر در سیستم آپلود', 'uploader', 'uploader_delete', 32, '', NULL, NULL, '0', '0'),
(437, 9, 'آپلود فایل در سیستم آپلود', 'uploader', 'getuploads', 32, '', NULL, NULL, '0', '0'),
(438, 9, 'فولدر جدید در سیستم آپلود', 'uploader', 'uploader_newfolder', 32, '', NULL, NULL, '0', '0'),
(439, 9, 'تغییرنام در سیستم آپلود', 'uploader', 'uploader_rename', 32, '', NULL, NULL, '0', '0'),
(451, 1, 'تغییر رمز عبور', '', 'change_pass', 5, '', NULL, NULL, '0', '1'),
(452, 34, 'گروه بندی پروژه ها', 'projectcat', 'projectcat_add', 5, '', NULL, NULL, '1', '0'),
(453, 34, 'لیست گروه پروژه ها', 'projectcat', 'projectcat_list', 6, '', NULL, NULL, '1', '0'),
(454, 34, ' ویرایش گروه پروژه ها', 'projectcat', 'projectcat_edit', 7, '', NULL, NULL, '0', '0'),
(455, 34, ' حذف گروه پروژه ها', 'projectcat', 'projectcat_delete', 8, '', NULL, NULL, '0', '0'),
(456, 34, ' پروژه جدید', 'projects', 'projects_add', 1, '', NULL, NULL, '1', '0'),
(457, 34, 'لیست پروژه ها', 'projects', 'projects_list', 2, '', NULL, NULL, '1', '0'),
(458, 34, ' ویرایش پروژه', 'projects', 'projects_edit', 3, '', NULL, NULL, '0', '0'),
(459, 34, ' حذف پروژه', 'projects', 'projects_delete', 4, '', NULL, NULL, '0', '0'),
(460, 35, 'گروه بندی واحد کاری', 'departmentcat', 'departmentcat_add', 5, '', NULL, NULL, '1', '0'),
(461, 35, 'لیست گروه واحد کاری', 'departmentcat', 'departmentcat_list', 6, '', NULL, NULL, '1', '0'),
(462, 35, ' ویرایش گروه واحد کاری', 'departmentcat', 'departmentcat_edit', 7, '', NULL, NULL, '0', '0'),
(463, 35, ' حذف گروه واحد کاری', 'departmentcat', 'departmentcat_delete', 8, '', NULL, NULL, '0', '0'),
(464, 35, ' اعضای واحد جدید', 'departmentmem', 'departmentmem_add', 1, '', NULL, NULL, '1', '0'),
(465, 35, 'لیست اعضای واحد', 'departmentmem', 'departmentmem_list', 2, '', NULL, NULL, '1', '0'),
(466, 35, ' ویرایش اعضای واحد', 'departmentmem', 'departmentmem_edit', 3, '', NULL, NULL, '0', '0'),
(467, 35, ' حذف اعضای واحد', 'departmentmem', 'departmentmem_delete', 4, '', NULL, NULL, '0', '0'),
(468, 36, 'ثبت کاربر جدید', 'users', 's_users_edit', 0, '', NULL, NULL, '0', '0'),
(469, 36, 'ویرایش کاربر', 'users', 'users_edit', 1, '', NULL, NULL, '0', '0'),
(470, 36, 'حذف کاربر', 'users', 'users_delete', 2, '', NULL, NULL, '0', '0'),
(471, 36, 'سطح دسترسی', 'users', 'users_levelaccess', 3, '', NULL, NULL, '0', '0'),
(472, 36, 'تغییر رمز عبور کاربر', 'users', 'users_change_pass', 7, '', NULL, NULL, '0', '0'),
(473, 36, 'وضعیت اطلاعات', 'users', 'change_status', 5, '', NULL, NULL, '0', '0'),
(474, 36, 'ثبت گروه \r\n\r\nکاربری', 'users', 'admingroup_add', 1, NULL, NULL, NULL, '0', '0'),
(475, 36, ' مدیریت گروه کاربری', 'users', 'admingroup_list', 2, NULL, NULL, NULL, '1', '0'),
(476, 36, ' ویرایش گروه کاربری', 'users', 'admingroup_edit', 3, NULL, NULL, NULL, '0', '0'),
(477, 36, ' حذف گروه کاربری', 'users', 'admingroup_delete', 4, NULL, NULL, NULL, '0', '0'),
(478, 36, ' دسترسی گروه کاربری', 'users', 'admingroup_copy', 5, NULL, NULL, NULL, '0', '0'),
(479, 36, ' دسترسی گروه کاربری', 'users', 'admingroup_levelaccess', 6, NULL, NULL, NULL, '0', '0'),
(480, 36, 'تغییر رمز عبور', 'users', 'change_pass', 5, '', NULL, NULL, '0', '0'),
(481, 36, 'مدیریت کاربران', 'users', 'users_list', 0, '', NULL, NULL, '1', '0'),
(482, 37, 'اضافه کردن کاربر', 'users', 'user_manage', 1, '', NULL, NULL, '1', '1'),
(483, 37, 'لیست کاربران', 'users', 'users_list', 2, '', NULL, NULL, '1', '1'),
(484, 37, 'ویرایش کاربر', 'users', 'users_edit', 3, '', NULL, NULL, '0', '1'),
(485, 37, 'حذف کاربر', 'users', 'users_delete', 4, '', NULL, NULL, '0', '1'),
(486, 37, 'تغییر رمز عبور اعضاء', 'users', 'users_change_pass', 5, '', NULL, NULL, '0', '1'),
(487, 37, 'افزایش شارژ حساب اعضا', 'users', 'users_increase', 6, '', NULL, NULL, '0', '1'),
(488, 37, 'کاهش شارژ حساب اعضا', 'users', 'users_decrease', 7, '', NULL, NULL, '0', '1'),
(489, 38, 'لیست شرط ها', 'bets', 'bets_list', 0, NULL, NULL, NULL, '1', '1'),
(490, 39, 'کل تراکنش ها', 'payment', 'payment_list', 0, NULL, NULL, NULL, '1', '1'),
(491, 39, ' لیست درخواست وجه ', 'withdraw', 'withdraw_list', 0, NULL, NULL, NULL, '1', '1'),
(492, 39, ' نمایش درخواست وجه ', 'withdraw', 'withdraw_view', 0, NULL, NULL, NULL, '0', '1'),
(493, 39, ' تغییر وضعیت وجه ', 'withdraw', 'withdraw_status', 0, NULL, NULL, NULL, '0', '1'),
(494, 41, ' لیست تیکت ها ', 'tickets', 'tickets_list', 0, NULL, NULL, NULL, '1', '1'),
(495, 41, ' نمایش تیکت ها ', 'tickets', 'tickets_view', 0, NULL, NULL, NULL, '0', '1'),
(496, 41, ' تغییر وضعیت وجه ', 'tickets', 'tickets_status', 0, NULL, NULL, NULL, '0', '1'),
(497, 41, ' ارسال تیکت ', 'tickets', 'tickets_add', 0, NULL, NULL, NULL, '1', '0'),
(498, 42, 'تیم جدید', 'translate', 'team_add', 5, '', NULL, NULL, '1', '0'),
(499, 42, 'لیست تیم ها', 'translate', 'team_list', 6, '', NULL, NULL, '1', '1'),
(500, 42, 'ویرایش تیم ها', 'translate', 'team_edit', 7, '', NULL, NULL, '0', '1'),
(501, 42, ' حذف تیم ها', 'translate', 'team_delete', 7, '', NULL, NULL, '0', '0'),
(502, 43, 'صفحه جدید', 'pages', 'pages_edit', 8, '', NULL, NULL, '1', '1'),
(503, 43, 'لیست صفحات', 'pages', 'pages_list', 9, '', NULL, NULL, '1', '1'),
(504, 43, 'ویرایش صفحات', 'pages', 'pages_edit', 7, '', NULL, NULL, '0', '1'),
(505, 43, ' حذف صفحات', 'pages', 'pages_delete', 7, '', NULL, NULL, '0', '1'),
(506, 43, 'تغییر به صفحه اصلی', 'pages', 'pages_is_home', 7, '', NULL, NULL, '0', '1'),
(515, 9, 'تنظیمات', 'settings', 'settings', 32, '', NULL, NULL, '1', '1'),
(516, 9, 'ویرایش تنظیمات', 'settings', 'settings_edit', 32, '', NULL, NULL, '0', '1'),
(518, 45, 'لیست بازی های امروز', 'game', 'game_list', 6, '', NULL, '?cat=0', '1', '1'),
(519, 45, 'کد معادل', 'game', 'game_code', 7, '', NULL, NULL, '0', '1'),
(520, 45, 'تغییر وضعیت بازی', 'game', 'game_status', 7, '', NULL, NULL, '0', '1'),
(522, 46, 'لیست api ها', 'api', 'api_list', 6, '', NULL, '', '1', '1'),
(523, 46, 'افزودن api جدید', 'api', 'api_add', 7, '', NULL, NULL, '1', '1'),
(524, 46, 'ویرایش api', 'api', 'api_edit', 7, '', NULL, NULL, '0', '1'),
(525, 46, 'حذف api', 'api', 'api_delete', 6, '', NULL, NULL, '0', '1'),
(526, 42, 'لیست لیگ ها', 'translate', 'leagues_list', 6, '', NULL, '', '1', '1'),
(527, 42, 'ویرایش لیگ ها', 'translate', 'leagues_edit', 7, '', NULL, NULL, '0', '1'),
(528, 38, 'لغو شرط ها', 'bets', 'bets_cancel', 0, NULL, NULL, NULL, '0', '1'),
(531, 39, 'درآمد کلی سایت', 'incomming', 'day_incomming', 0, '', NULL, NULL, '1', '1'),
(532, 45, ' بازی های صفحه اصلی', 'game', 'home_game_list', 6, '', NULL, '', '1', '1'),
(533, 45, 'تغییر وضعیت بازی صفحه اصلی', 'game', 'home_game_status', 7, '', NULL, NULL, '0', '1'),
(536, 37, ' نمایش اعضا', 'users', 'users_view', 7, '', NULL, NULL, '0', '1'),
(537, 37, ' پیام به اعضا', 'users', 'users_message', 7, '', NULL, NULL, '1', '1'),
(538, 45, ' بازی های زنده', 'game', 'live_game_list', 6, '', NULL, '', '1', '1'),
(543, 50, 'لیست درگاه ها', 'gateway', 'gateway_list', 6, '', NULL, '', '1', '1'),
(544, 50, 'افزودن درگاه جدید', 'gateway', 'gateway_manage', 7, '', NULL, NULL, '1', '1'),
(545, 50, 'ویرایش درگاه ها', 'gateway', 'gateway_edit', 7, '', NULL, NULL, '0', '1'),
(546, 50, 'حذف درگاه ها', 'gateway', 'gateway_delete', 6, '', NULL, NULL, '0', '1'),
(547, 51, 'لیست ورزش ها', 'sports', 'sports_list', 6, '', NULL, '', '1', '1'),
(548, 51, 'افزودن ورزش جدید', 'sports', 'sport_manage', 7, '', NULL, NULL, '1', '1'),
(549, 51, 'ویرایش ورزش ها', 'sports', 'sports_edit', 7, '', NULL, NULL, '0', '1'),
(550, 51, 'حذف ورزش ها', 'sports', 'sports_delete', 6, '', NULL, NULL, '0', '1'),
(552, 39, 'نمایش کارت به کارت', 'payment', 'payment_view', 0, NULL, NULL, '', '0', '1'),
(553, 39, 'تغییر وضعیت کارت به کارت', 'payment', 'payment_status', 0, NULL, NULL, '', '0', '1'),
(554, 37, ' حذف پیام به اعضا', 'users', 'message_delete', 7, '', NULL, NULL, '0', '1'),
(571, 54, 'اسلایدر ها', 'slider', 'slider', 1, '', NULL, '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `category` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `file` varchar(64) COLLATE utf8_persian_ci DEFAULT NULL,
  `url` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `alt` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `target` varchar(6) COLLATE utf8_persian_ci DEFAULT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `maxcount` int(11) DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `expiredate` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `portalid` int(11) NOT NULL DEFAULT 0,
  `style` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id`, `title`, `category`, `file`, `url`, `alt`, `type`, `target`, `viewcount`, `maxcount`, `date`, `expiredate`, `description`, `sort`, `width`, `height`, `portalid`, `style`, `status`) VALUES
(2, 'رشد کاری', '1', 'thok_515.gif', 'https://t.me/betfars_group', NULL, '2', NULL, 0, NULL, NULL, NULL, '<p>بر خلوت&zwnj;نشین بیداد روا می&zwnj;دارند<br />\r\nو بر او لای و لجن پرتاب می&zwnj;کنند.</p>\r\n', 4, NULL, NULL, 0, 'flaticon-diagram', '1'),
(3, 'رشد کاری', '1', 'casino_opengraph_en.jpg', NULL, NULL, '2', NULL, 0, NULL, NULL, NULL, '<p>بر خلوت&zwnj;نشین بیداد روا می&zwnj;دارند<br />\r\nو بر او لای و لجن پرتاب می&zwnj;کنند.</p>\r\n', 2, NULL, NULL, 0, 'flaticon-search', '1'),
(6, 'داوود حیدری', '2', '2.jpg', '#', NULL, '2', NULL, 0, NULL, NULL, NULL, '<p>برنامه نویس</p>\n', 3, NULL, NULL, 0, NULL, '1'),
(7, 'میترا احمدی', '2', '3.jpg', '#', NULL, '2', NULL, 0, NULL, NULL, NULL, '<p>کارشناس شبکه</p>\r\n', 3, NULL, NULL, 0, NULL, '1'),
(8, 'رضا زاهدی', '2', '6.jpg', '#', NULL, '2', NULL, 0, NULL, NULL, NULL, '<p>کارشناس الکترونیک</p>\r\n', 1, NULL, NULL, 0, NULL, '1'),
(9, 'رشد کاری', '1', 'GettyImages-131575273-57fbca623df78c690f7aeced.jpg', 'bets/inplayBet', NULL, '2', NULL, 0, NULL, NULL, NULL, NULL, 3, NULL, NULL, 0, 'flaticon-diagram', '1'),
(10, 'استانبول تراول', '0', '12006098_web.jpg', 'https://t.me/betfars_group', 'تراول', '1', '_blank', 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `advertisecat`
--

CREATE TABLE `advertisecat` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `pagename` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `header` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `style` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `keywords` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `memtype` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `portalid` int(11) NOT NULL DEFAULT 0,
  `showinmenu` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `showinhome` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `advertisecat`
--

INSERT INTO `advertisecat` (`id`, `code`, `pagename`, `name`, `type`, `level`, `description`, `header`, `image`, `style`, `keywords`, `memtype`, `portalid`, `showinmenu`, `showinhome`, `sort`, `status`) VALUES
(1, '1', NULL, 'سمت چپ', '1', 0, NULL, '', '', NULL, NULL, '0', 0, '0', '0', 1, '1'),
(3, '2', 'رضایت نامه', 'سمت راست', '1', 0, '<p>لورم ایپسوم یا طرح&zwnj;نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی&zwnj;معنی&nbsp;<br />\r\nدر صنعت چاپ، صفحه&zwnj;آرایی و طراحی گرافیک گفته می&zwnj;شود.</p>\r\n', '', '', NULL, NULL, '0', 0, '0', '0', 2, '1');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate`
--

CREATE TABLE `affiliate` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `invited_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `api_token`
--

CREATE TABLE `api_token` (
  `id` int(11) NOT NULL,
  `api_token` varchar(60) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_token`
--

INSERT INTO `api_token` (`id`, `api_token`, `status`) VALUES
(2, '439314a4c6fa4697c09408d7476e5609', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `category` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_persian_ci NOT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `image2` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `title` text COLLATE utf8_persian_ci DEFAULT NULL,
  `url` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `hoffset` int(11) DEFAULT NULL,
  `voffset` int(11) DEFAULT NULL,
  `style` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `portalid` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `category`, `type`, `image`, `image2`, `title`, `url`, `description`, `hoffset`, `voffset`, `style`, `sort`, `portalid`, `status`) VALUES
(15, '0', '1', 'left1.jpg', '', 'fvddfd', NULL, '<p>gv33.123</p>\r\n', NULL, NULL, NULL, 13, 0, '1'),
(16, '0', '1', 'left2.jpg', '', '2103', NULL, '<p>135</p>\r\n', NULL, NULL, NULL, 12, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `bets`
--

CREATE TABLE `bets` (
  `id` int(10) UNSIGNED NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL COMMENT 'mix OR single',
  `stake` int(10) UNSIGNED NOT NULL,
  `effective_odd` float NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pay_stake_status` int(11) NOT NULL DEFAULT 0 COMMENT '0: suspend, 1: deposit to the user''s account, 2: loose, 3: settle'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `bet_form`
--

CREATE TABLE `bet_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `odd` varchar(45) NOT NULL DEFAULT 'ضریب',
  `match_id` varchar(50) NOT NULL,
  `bookmaker_id` int(11) DEFAULT NULL,
  `pick` varchar(500) NOT NULL DEFAULT 'انتخاب کاربر',
  `home_team` varchar(500) NOT NULL DEFAULT 'نام تیم میزبان',
  `away_team` varchar(500) NOT NULL,
  `home_score` varchar(255) DEFAULT NULL,
  `away_score` varchar(255) DEFAULT NULL,
  `home_score_ft` varchar(255) DEFAULT NULL,
  `away_score_ft` varchar(255) DEFAULT NULL,
  `home_score_live` varchar(255) DEFAULT NULL,
  `away_score_live` varchar(255) DEFAULT NULL,
  `match_time` varchar(5) DEFAULT NULL,
  `soccer_type` varchar(50) DEFAULT NULL,
  `bet_type` varchar(250) NOT NULL,
  `bets_id` int(11) NOT NULL,
  `bets_user_id` int(10) UNSIGNED NOT NULL,
  `odd_label` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `bet_keys` varchar(100) DEFAULT NULL,
  `goal_score` tinyint(1) DEFAULT NULL,
  `status` varchar(10) NOT NULL COMMENT 'The status of the match',
  `result_status` varchar(255) NOT NULL DEFAULT '0' COMMENT '0: suspend, 1: win , 2: loose',
  `favorite` int(1) NOT NULL DEFAULT 0,
  `sport` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carter`
--

CREATE TABLE `carter` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `user_id` text NOT NULL,
  `trans_id` varchar(50) DEFAULT NULL,
  `card4` text NOT NULL,
  `time` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(255) DEFAULT NULL,
  `paygiricod` varchar(50) DEFAULT NULL,
  `transaction_states` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `savano` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carttocart`
--

CREATE TABLE `carttocart` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_holder` varchar(500) NOT NULL,
  `account_number` varchar(500) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `sheba` varchar(50) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `webmoney` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `casino`
--

CREATE TABLE `casino` (
  `id` int(10) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_fa` varchar(50) NOT NULL,
  `url` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `min_amount` int(10) NOT NULL,
  `max_amount` int(10) NOT NULL,
  `percent_play` int(10) NOT NULL,
  `multi_player` int(2) NOT NULL,
  `sort` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `casino`
--

INSERT INTO `casino` (`id`, `name_en`, `name_fa`, `url`, `image`, `min_amount`, `max_amount`, `percent_play`, `multi_player`, `sort`, `status`) VALUES
(3, 'blackjack', 'بلک جک', '/Newgame/games/blackjack/', 'blackjack.png', 1000, 30000, 10, 0, 3, 1),
(2, 'baccarat', 'باکارات', '/Newgame/games/baccarat/', 'baccarat2.jpg', 10000, 30000, 10, 0, 2, 1),
(1, 'roulette', 'رولت', '/Newgame/games/roulette/', 'rol.png', 10000, 30000, 10, 0, 1, 1),
(5, 'rps', 'سنگ کاغذ قیچی', '/Newgame/games/rps/', 'rps.png', 10000, 30000, 10, 1, 5, 1),
(4, 'slot', 'ماشین اسلات', '/Newgame/games/slot/', 'slot2.jpg', 10000, 30000, 10, 0, 4, 1),
(6, 'backgammon', 'تخته نرد', '/Newgame/backgammon/', 'backgommon.png', 10000, 30000, 10, 1, 6, 1),
(8, 'crash', 'انفجار', '/newGames/games/crash/', 'crash2.jpg', 10000, 30000, 10, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `casino_settings`
--

CREATE TABLE `casino_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` varchar(20) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `pagename` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `header` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `style` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `contenttype` int(11) NOT NULL,
  `keywords` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `memtype` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `portalid` int(11) NOT NULL DEFAULT 0,
  `showinmenu` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `showinhome` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `change_unit`
--

CREATE TABLE `change_unit` (
  `id` int(11) NOT NULL,
  `fromid` int(11) DEFAULT NULL,
  `toid` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `change_unit`
--

INSERT INTO `change_unit` (`id`, `fromid`, `toid`, `amount`) VALUES
(1, 3, 2, 17000),
(2, 1, 2, 0.1),
(3, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `text` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `contentid` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `name` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `text` text COLLATE utf8_persian_ci NOT NULL,
  `reply` text COLLATE utf8_persian_ci DEFAULT NULL,
  `date` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `read` varchar(1) COLLATE utf8_persian_ci NOT NULL,
  `portalid` int(11) NOT NULL DEFAULT 0,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `contentid`, `title`, `name`, `email`, `text`, `reply`, `date`, `ip`, `read`, `portalid`, `status`) VALUES
(1, 2, '45', '4', 'info@dokibet.xyz', '47', '<p>56</p>\r\n', '1399/01/11', '::1', '1', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `entry_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_family` varchar(100) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` longtext NOT NULL,
  `contact_page_desc` mediumtext DEFAULT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `is_ticket` tinyint(4) NOT NULL,
  `is_announcement` tinyint(4) NOT NULL DEFAULT 0,
  `is_site_contact` tinyint(1) DEFAULT 0,
  `seen_status_contact` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `category` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `title` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `title2` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `setdate` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `settime` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `lastupdate` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `mintext` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `text` text COLLATE utf8_persian_ci DEFAULT NULL,
  `textbody` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `image2` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `imagealt` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `author` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `startdate` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `enddate` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `scoreplus` int(11) NOT NULL DEFAULT 0,
  `scoreminus` int(11) NOT NULL DEFAULT 0,
  `starcount` int(11) NOT NULL DEFAULT 0,
  `starsum` float NOT NULL DEFAULT 0,
  `password` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `passcount` int(11) DEFAULT NULL,
  `urltype` varchar(1) COLLATE utf8_persian_ci DEFAULT '0',
  `url` varchar(250) COLLATE utf8_persian_ci DEFAULT NULL,
  `relatedview` varchar(1) COLLATE utf8_persian_ci DEFAULT '1',
  `related` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `memtype` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `comment` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `commentview` varchar(1) COLLATE utf8_persian_ci DEFAULT '0',
  `viewcount` int(11) DEFAULT 0,
  `keywords` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `portalid` int(11) NOT NULL,
  `fixed` varchar(1) COLLATE utf8_persian_ci DEFAULT '0',
  `sort` int(11) NOT NULL,
  `special` varchar(1) COLLATE utf8_persian_ci DEFAULT '0',
  `showinhome` varchar(1) COLLATE utf8_persian_ci DEFAULT '1',
  `user` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `view` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `category`, `title`, `title2`, `setdate`, `settime`, `lastupdate`, `mintext`, `text`, `textbody`, `image`, `image2`, `imagealt`, `author`, `startdate`, `enddate`, `scoreplus`, `scoreminus`, `starcount`, `starsum`, `password`, `passcount`, `urltype`, `url`, `relatedview`, `related`, `memtype`, `comment`, `commentview`, `viewcount`, `keywords`, `portalid`, `fixed`, `sort`, `special`, `showinhome`, `user`, `view`, `status`) VALUES
(1, '0', 'تمرکز هواوی بر ایمن‌سازی شهرهای هوشمند', NULL, '1396/08/25', '1510834473', '1396/08/25 15:49:33', 'هواوی با اشاره به فعالیت‌های خود در شهر لونگانگ چین، اعلام کرد که استفاده از راهکارهای اینترنت اشیاء (IoT) و ...', '<p>هواوی با اشاره به فعالیت&zwnj;های خود در شهر لونگانگ چین، اعلام کرد که استفاده از راهکارهای اینترنت اشیاء (IoT) و کاربردهای فناوری جدید برای ایمن&zwnj;تر کردن شهرها، بخشی مهم و کلیدی از استقرار شهرهای هوشمند است.</p>\r\n', '<p>شرکت هواوی به جای تمرکز بر ایجاد راهکارهای شهر هوشمند، به دنبال مفهوم شهرهای ایمن&zwnj;تر از طریق فناوری و کاربردهای اینترنت اشیاء (IoT) است.<br />\r\nآگوستین چیو، متخصص ایمنی عمومی شرکت هواوی در صحبت&zwnj;های خود در روز نوآوری آسیا-اقیانوسیه توضیح داد که چگونه شرکت هواوی، ایمنی عمومی منطقه لانگانگ در شنژن چین را بهبود می&zwnj;بخشد.<br />\r\n<br />\r\nبه گزارش&nbsp;<a href=\"http://www.itna.ir/\" target=\"_blank\">ایتنا</a>&nbsp;از&nbsp;<a href=\"https://rayvarz.com/news/iot/16312\">رایورز</a>&nbsp;دولت منطقه لانگانگ چین و هواوی در زمینه ایجاد یک چارچوب برای شهر ایمن و با تمرکز بر جمع&zwnj;آوری اطلاعات، همگرایی و برنامه&zwnj;های کاربردی همکاری دارند.<br />\r\nچیو اذعان داشت که لانگانگ یکی از مناطقی است که کمترین تعداد پلیس را دارد و بسیاری از مأموران شهر هم غیرمسلح بوده و به صورت داوطلبانه کار پلیس را انجام می&zwnj;دهند.<br />\r\n&nbsp;<br />\r\nچیو توضیح داد: &laquo;ما برای تشخیص، پاسخگویی و کاهش جرایم، دوره&zwnj;ای برگزار نموده و انواع مختلف فناوری&zwnj;های نوین را بررسی کردیم. اصل کلیدی و مهمی این بود که می&zwnj;خواهم تمام منابع و دارایی&zwnj;های خود را به هم متصل نمایم و لذا باید از اطلاعات به عنوانی منبع و پایه&zwnj;ای برای رسیدن به هوش پیش&zwnj;بینانه استفاده کنم.&raquo;<br />\r\n<br />\r\nوی افزود: &laquo;این کار نیازمند بهبود زمان پاسخ است. از آن مهم&zwnj;تر، مدیران من باید این توانایی را داشته باشند تا بتوانند موقعیت و جایگاه مؤثرتری داشته باشند. ما می&zwnj;خواستیم که در یک منطقه، توانایی آنالیز عمیق و مؤثر داده&zwnj;ها و اطلاعات را داشته باشیم.&raquo;<br />\r\n&nbsp;<br />\r\nهواوی و لانگانگ در طول این پروژه 7000 دوربین اچ.دی را در کل منطقه بکار گرفته و 34000 دوربین قدیمی در مراکز خرید، پارک&zwnj;ها و پمپ بنزین&zwnj;ها را به هم متصل نمودند. در نتیجه پروژه شهر ایمن، سرقت به میزان 53.2 درصد کاهش یافت.<br />\r\n&nbsp;<br />\r\nنکته مهم اینکه این موضوع قدرت فناوری&zwnj;های IT را نمایان می&zwnj;سازد. البته گفتنی است که زمانی می&zwnj;توان این قدرت را مشاهده نمود که به درستی بکار گرفته شود.<br />\r\n&nbsp;</p>\r\n', '01.jpg', '', NULL, 'مدیر', '1396/08/25 15:36:48', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, '0', '0', '1', 1, 'هواوی, شهر ایمن, شهر هوشمند, اینترنت اشیاء, کاهش جرایم, مراکز خرید, فناوری‌های IT', 0, '0', 1, '0', '1', 'admin', '1', '1'),
(2, '0', 'رمز عبارت‌گونه چیست؟', NULL, '1396/08/25', '1510834653', '1396/10/11 19:43:05', 'در این مقاله، خواهید آموخت که چگونه با استفاده از یک نوع رمز عبور که رمز عبارتگونه نامیده می‌شود، رمز عبوری قوی ایجاد کرده ...', '<p>در این مقاله، خواهید آموخت که چگونه با استفاده از یک نوع رمز عبور که رمز عبارتگونه نامیده می&zwnj;شود، رمز عبوری قوی ایجاد کرده و به آسانی آن را به خاطر بسپارید.</p>\r\n', '<p>شما تقریبا هر روز از رمز عبور استفاده میکنید. از دسترسی به ایمیل و بانکداری آنلاین تا خرید اینترنتی کالا و یا دسترسی به گوشی&zwnj;های هوشمندتان. با این حال رمز عبور یکی از نقاط ضعف شما نیز هست، اگر کسی رمز عبور شما را بدست آورد، می&zwnj;تواند هویت شما را سرقت، پول شما را انتقال و یا به اطلاعات شخصی شما دسترسی پیدا کند. رمز عبور قوی برای حفاظت از خود ضروری است. در این مقاله، خواهید آموخت که چگونه با استفاده از یک نوع رمز عبور که رمز عبارتگونه نامیده می&zwnj;شود، رمز عبوری قوی ایجاد کرده و به آسانی آن را به خاطر بسپارید.<br />\r\n<br />\r\n<strong>رمز عبارت&zwnj;گونه</strong><br />\r\nچالشی که همه ما با آن روبرو هستیم این است که هکرهای سایبری، روش&zwnj;های پیچیدهای برای حدس زدن و یافتن رمز عبور توسعه دادهاند، و هر روز هم ماهرتر می&zwnj;شوند. این به این معنی است که اگر رمزهای عبور ضعیف که حدس زدن آنها آسان است انتخاب کنید، هکرها می&zwnj;توانند رمزهای عبور شما را به راحتی بدست آوردند. یک گام مهم برای حفاظت از خود استفاده از رمز عبوری قوی است. هر چه رمز شما کاراکترهای بیشتری داشته باشد، قوی&zwnj;تر و حدس آن برای هکر سخت&zwnj;تر است. اما، به خاطر سپردن رمز عبور پیچیده و طولانی مشکل است. بنابراین توصیه می&zwnj;کنیم از رمزهای عبارت گونه استفاده کنید. اینها عبارات یا جملات ساده&zwnj;ای هستند که به آسانی قابل به خاطر سپردن هستند، اما به دست آوردن یا حدس زدن آنها سخت است. در اینجا مثالی می&zwnj;زنیم.</p>\r\n\r\n<p>Where is Carrier Digit?</p>\r\n\r\n<p>دلیلی که این رمز عبارت گونه را خیلی قوی می&zwnj;کند، نه تنها طول 23 حرفی آن است، بلکه از حروف بزرگ و علایم نقطه&zwnj;گذاری نیز استفاده می&zwnj;شود (به یاد داشته باشید، فاصله و علامت سوال از علائم هستند). شما میتوانید رمز عبارت&zwnj;گونه را حتی قوی تر کنید اگر حروف را با اعداد و یا علایم جایگزین کنید، مثل جایگزین کردن حرف a با نماد @ و یا حرف o با عدد صفر. اگر وب&zwnj;سایت یا برنامه&zwnj;ای تعداد کاراکتر های عددی که در رمز می&zwnj;توانید بکار ببرید را محدود می&zwnj;کند، حداکر تعداد کاراکتر&zwnj;های مجاز را استفاده کنید.<br />\r\n<br />\r\n<strong>استفاده از رمزهای عبارتگونه بصورت امن</strong><br />\r\nهمچنین&nbsp;باید دقت کنید که چگونه از رمزهای عبارت گونه استفاده می&zwnj;کنید. استفاده از یک رمز عبارتگونه کمکی نخواهد کرد اگر خرابکارها بتوانند به راحتی آن را سرقت و یا کپی کنند.<br />\r\n<br />\r\n۱. حتما از رمزهای عبور مختلف برای هر حساب و یا دستگاه خود استفاده کنید. به عنوان مثال، هرگز از همان رمز عبوری که برای کار و یا حساب بانکی خود استفاده می&zwnj;کنید، برای حساب&zwnj;های شخصی خود، مانند فیس&zwnj;نما، آپارات و یا تلگرام استفاده نکنید. به این ترتیب، اگر یکی از حساب&zwnj;های شما هک شد، حساب&zwnj;های دیگر هنوز در امان هستند. اگر رمزهای عبور زیادی برای بخاطر سپردن دارید (که بسیار معمول است)، به فکر استفاده از یک برنامه مدیریت رمز عبور باشید. این برنامه&zwnj;ای</p>\r\n\r\n<p>حرف o با عدد صفر&nbsp;است که تمام رمزهای عبور شما را بطور امن ذخیره می&zwnj;کند. به این ترتیب تنها رمز عبوری که شما لازم است به یاد داشته باشید، رمز عبور ورود به رایانه و این برنامه مدیریت رمز عبور می&zwnj;باشد.<br />\r\n<br />\r\n۲. هرگز رمز عبور خود یا تکنیکی که برای ایجاد یا انتخاب آنها به کار می&zwnj;برید را با کسی در میان نگذارید، از جمله همکاران خود. به یاد داشته باشید، رمز عبور یک راز است. اگر کس دیگری می&zwnj;داند، آن عبارت دیگر امن نیست. اگر شما تصادفا رمز خود را با شخص دیگری به اشتراک گذاشتید، و یا فکر می&zwnj;کنید که عبارت عبور شما ممکن است به خطر افتاده باشد و یا به سرقت رفته باشد، لازم است تا آن را بلافاصله تغییر دهید.<br />\r\n<br />\r\n۳. درست مانند رمز عبور کلمه&zwnj;ای، از انتخاب رمزهای عبارت گونه متداول و آنهایی که به آسانی قابل حدس زدن هستند بپرهیزید.<br />\r\nبه عنوان مثال، عبارت</p>\r\n\r\n<p>&raquo;With eighteen years training experience&laquo;</p>\r\n\r\n<p>یک رمز عبارت گونه خوبی نیست از آن جهت که شناخته شده است.<br />\r\n<br />\r\n۴. از رایانه های عمومی مانند رایانه&zwnj;های داخل هتل&zwnj;&zwnj;ها و یا کتابخانه ها برای ورود به حساب کاری یا بانک استفاده نکنید. از آنجا که هر کسی می&zwnj;تواند از این رایانه&zwnj;ها استفاده کند، ممکن است این رایانه&zwnj;ها با برنامه های مخرب که تمام کلیدهای تایپ شده را ثبت می&zwnj;کند آلوده شده باشد. تنها با استفاده از رایانه و یا دستگاه&zwnj;های تلفن همراه قابل اعتماد به حساب محل کار خود و یا حساب&zwnj;های بانکی وارد شوید.<br />\r\n<br />\r\n۵. مراقب وبسایت&zwnj;هایی باشید که از شما میخواهند به سوالات شخصی پاسخ دهید. این سوال ها موقعی مورد استفاده قرار میگیرند که شما رمز عبور خود را فراموش کرده باشید و نیاز به بازنشانی آن هستید. مشکل این است که پاسخ به این پرسش ها اغلب می&zwnj;تواند در اینترنت، و یا حتی در صفحه شخصی شبکه های اجتماعی شما یافت. حتما اگر شما به سوالات شخصی پاسخ میدهید، تنها جوابهایی را انتخاب کنید که در دسترس عموم نیست و یا اطلاعات ساختگی استفاده کنید. نرم افزارهای مدیریت رمز عبور می&zwnj;تواند در این انتخاب و ذخیره این پاسخها به شما کمک کنند.<br />\r\n<br />\r\n6. بسیاری از حساب های آنلاین خدماتی به نام احراز هویت دو عامی یا دو مرحله ای ارائه می&zwnj;کنند. در این حالت شما نیاز به بیش از فقط رمز عبور برای ورود هستید، مثل رمز عبور به گوشی&zwnj;های هوشمند شما فرستاده می&zwnj;شود. این گزینه بسیار امن&zwnj;تر از رمز عبارت گونه تنها است. در صورت امکان، همیشه از این روشهای قوی&zwnj;تر احراز هویت استفاده کنید.<br />\r\n<br />\r\n۷. دستگاه های موبایل، اغلب نیاز به PIN برای محافظت از دسترسی به آنها است. به یاد داشته باشید PIN چیزی بیش از رمز عبور نیست. هرچه PIN طولانی&zwnj;تر باشد، امن&zwnj;تر است. بسیاری از دستگاه&zwnj;های تلفن همراه به شما اجازه تغییر شماره PIN به رمز عبارت گونه واقعی را میدهند.<br />\r\n<br />\r\n۸. در نهایت، اگر شما دیگر از حسابی استفاده نمی&zwnj;کنید، حتما آن را ببندید، حذف و یا غیر فعال کنید.<br />\r\n(منبع:&nbsp;<a href=\"http://www.cdigit.com/\">CDIGIT</a>)</p>\r\n', '02.jpg', '', NULL, 'مدیر', '1396/08/25 15:44:34', NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '1', NULL, '0', '1', '1', 23, 'رمز عبور, ایمیل, بانکداری آنلاین, خرید اینترنتی, گوشی‌های هوشمند, رمز عبارت‌گونه, حساب بانکی, حساب‌های شخصی, محافظت', 0, '0', 2, '0', '1', 'admin', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contenttype`
--

CREATE TABLE `contenttype` (
  `id` int(11) NOT NULL,
  `pagename` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `style` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `portalid` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `contenttype`
--

INSERT INTO `contenttype` (`id`, `pagename`, `name`, `type`, `description`, `image`, `style`, `portalid`, `sort`, `status`) VALUES
(1, NULL, 'عادی', '0', '<p>dxcvxcv</p>\r\n', '', NULL, 0, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `content_categories`
--

CREATE TABLE `content_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content_type_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `list_tpl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_category_content_entries`
--

CREATE TABLE `content_category_content_entries` (
  `content_entry_id` int(10) UNSIGNED NOT NULL,
  `content_category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_entries`
--

CREATE TABLE `content_entries` (
  `content_type_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(200) NOT NULL,
  `title` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `full_story` longtext NOT NULL,
  `short_story` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `blank_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_entry_fields`
--

CREATE TABLE `content_entry_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_entry_id` int(10) UNSIGNED NOT NULL,
  `content_type_field_type_id` int(10) UNSIGNED NOT NULL,
  `valuable_id` int(10) UNSIGNED NOT NULL,
  `valuable_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_entry_field_int`
--

CREATE TABLE `content_entry_field_int` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_entry_field_id` int(10) UNSIGNED DEFAULT NULL,
  `value` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_entry_field_int`
--

INSERT INTO `content_entry_field_int` (`id`, `content_entry_field_id`, `value`, `created_at`, `updated_at`) VALUES
(7, NULL, 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `content_entry_field_long`
--

CREATE TABLE `content_entry_field_long` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_entry_field_id` int(10) UNSIGNED DEFAULT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_entry_field_long`
--

INSERT INTO `content_entry_field_long` (`id`, `content_entry_field_id`, `value`, `created_at`, `updated_at`) VALUES
(7, NULL, 'زاریهیسش', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `content_entry_field_short`
--

CREATE TABLE `content_entry_field_short` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_entry_field_id` int(10) UNSIGNED DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_entry_relations`
--

CREATE TABLE `content_entry_relations` (
  `content_entry_1_id` int(10) UNSIGNED NOT NULL,
  `content_entry_2_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_field_types`
--

CREATE TABLE `content_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `slug` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dest_table` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_types`
--

INSERT INTO `content_field_types` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `dest_table`) VALUES
(3, 'متن کوتاه', 'short_text', 1, '2015-09-09 03:34:32', '2015-09-09 02:27:28', 'short'),
(4, 'متن بلند', 'long_text', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'long'),
(5, 'تصویر', 'image', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'short'),
(6, 'تاریخ', 'date', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'int'),
(7, 'قیمت', 'price', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'int'),
(8, 'لیست انتخابی', 'enum', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'short'),
(9, 'ویدئو', 'video', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'short'),
(10, 'صدا', 'voice', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'short'),
(11, 'فایل متنی', 'docs', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'short'),
(12, 'فایل', 'file', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'short'),
(13, 'پیوند', 'link', 1, '2015-09-09 01:31:32', '2015-09-09 01:31:32', 'short');

-- --------------------------------------------------------

--
-- Table structure for table `content_pages`
--

CREATE TABLE `content_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `compiler` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tpl` varchar(100) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_pages`
--

INSERT INTO `content_pages` (`id`, `name`, `slug`, `status`, `compiler`, `created_at`, `updated_at`, `tpl`, `short_description`, `description`) VALUES
(1, 'صفحه اصلی', 'صفحه-اصلی', 1, 'none', '2018-08-18 21:09:11', '2018-11-13 21:39:04', 'home', '<p>صفحه اصلی</p>\r\n\r\n<p>زسزسزس</p>\r\n', '																				<p>صفحه اصلی </p>\r\n																		'),
(2, 'صفحه مورد نظر یافت نشد!', 'صفحه-مورد-نظر-یافت-نشد', 1, 'none', '2018-08-18 21:09:11', '2018-03-12 11:41:52', '404', '<p>خطای 404</p>\r\n', '<p>اوه متاسفیم! صفحه مورد نظر شما یافت نشد و یا لینک آن تغییر کرده است!</p>\r\n');
INSERT INTO `content_pages` (`id`, `name`, `slug`, `status`, `compiler`, `created_at`, `updated_at`, `tpl`, `short_description`, `description`) VALUES
(4, 'قوانین و تعاریف پیش بینی', 'betGuide', 1, 'none', '2018-08-18 21:09:11', '2019-07-18 17:11:18', '', '<p>راهنمای پیش بینی</p>\r\n', '										<h1 style=\"text-align:center\"> </h1>\r\n\r\n<p><strong><span style=\"font-size:18px\">Universebet</span></strong></p><p><strong><span style=\"font-size:18px\">طبق استانداردهای جهانی در تمامی مسابقات نتیجه بازی حتی بازیهای حذفی در فوتبال تنها طی ۹۰ دقیقه قانونی رسمی یا زمان توافق شده  ( مثلا زمان توافق شده  در بازیهای جوانان 80 دقیقه هست ) به علاوه زمان های تلف شده مورد قبول می باشد بجز مواردی که مشخص شده است مثل شرط \"کدام تیم به مرحله بعدی صعود میکند که نتیجه کل بازی مورد محاسبه قرار می گیرد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در مورد پیش بینی نیمه ها نیز به همین صورت وقت قانونی هر نیمه یا وقت توافق شده هر نیمه به علاوه وقت های تلف شده هر نیمه  ملاک خواهد بود و در کل اطلاع از قوانین آپشنهای مختلف مسئولیت کاربر میباشد و اگر کاربری اطلاع کاملی از نحوه محاسبه یک آپشن ندارد نباید در آن شرکت کند که ما در قسمت های بعدی به تعاریف و راهنمایی در مورد اپشن های مختلف پرداخته ایم.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">نتایج اکثر بازیها بصورت اتوماتیک بعد از بازی ثبت میگردد چنانچه نتیجه یک بازی توسط سایت ارائه دهنده سرویس دیرتر اعلام شد و کاربر به بازیهای مد نظر بعدی خود نرسید، ایرادی به سایت وارد نیست و کاربر حق اعتراض ندارد، کاربر باید به نحوی برنامه ریزی کند که مبلغ کافی برای همه بازیهای مد نظر خود داشته باشد که چنانچه تاخیری احیانا برای ثبت نتیجه ای بوجود آمد، مشکلی برای ثبت بازی بعدی خود نداشته باشد</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><strong><span style=\"font-size:22px\">تعاریف و قوانین آپشن های بازی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">برای دسترسی به آپشن های بازیهای فوتبال و ثبت فرم در کنار ضرایب هر بازی بر روی علامت + کلیک کنید تا صفحه ی مربوط به آپشن های بازی مربوطه نمایش داده شود.حال به معرفی آپشن ها می پردازیم :</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">برنده بازی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Match Winner )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">کدام تیم در وقت قانونی بازی برنده مسابقه میشود. شامل سه حالت که به ترتیب با \"1\" برد تیم میزبان و \"X\" مساوی و \"2\" برد تیم میهمان میباشد</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">مساوی برگشت شرط</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">  ( Home/Away )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این نوع ایتم چنانچه بازی مساوی شود مبلغ پیش بینی به کاربر عودت داده می شود. ولی اگر مسابقه مساوی نشود پیش بینی برنده است که تیم برنده را درست حدس کرده باشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">کدام تیم به مرحله بعدی صعود میکند؟</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( To Qualify )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این آیتم مشخص کننده تیم صعود کننده به مرحله بعدی است و بنابراین گزینه تساوی ندارد. توجه کنید تنها در این آیتم در صورت تساوی در وقت قانونی ملاک وقتهای اضافه و یا پنالتی خواهد بود و همچنین اگر بازی رفت و برگشت باشد ملاک تیم صعود کننده در پایان بازی برگشت خواهد بود، خواه این بازی در پایان بازی برگشت در 90 دقیقه تمام شده باشد یا در 120 دقیقه یا وقت اضافی، در این بازیها در صورت تساوی در دو بازی رفت و برگشت یا اگر بازی تک بازی باشد در همان بازی، مسابقه آنقدر ادامه پیدا میکند تا در وقت اضافی یا ضربات پنالتی که یک تیم به مرحله بعدی صعود نماید. توجه کنید ممکن است یک تیم بازنده بازی برگشت باشد یا نتیجه مساوی شود ولی به مرحله بعدی صعود کند، بنابراین ملاک صعود تیم به مرحله بعدی فارق از نتیجه بازی است.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> شانس دوبرابر</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Double Chance )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این آیتم هر گزینه دو انتخاب را برای کاربر پوشش میدهد و شانس کاربر در انتخاب هر گزینه دو برابر میشود. به این ترتیب که اگر کاربر گزینه\"1\" X\" or\" را انتخاب کند در صورتی که بازی را تیم میزبان ببرد یا مساوی شود پیش بینی برنده است، اگر کاربر گزینه \"1or2\" را انتخاب کند در صورتی که تیم میزبان یا تیم میهمان برنده شوند پیش بینی برنده است و در صورتی که کاربر گزینه  X\" or 2\"  را انتخاب کند در صورتی که بازی مساوی شود یا تیم میهمان برنده شود، پیش بینی برنده خواهد بود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> شانس دوبرابر  - نیمه اول</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Double Chance - 1st Half )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند آیتم شانس دوبرابر میباشد ولی نتیجه بازی در وقت قانونی نیمه اول ملاک خواهد بود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> برنده نیمه اول</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( 1st Half Winner )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند آیتم برنده بازی میباشد با این تفاوت که نتیجه بازی در وقت قانونی نیمه اول ملاک خواهد بود. درصورتیکه بازی‌ قبل از پایان نیمه اول نیمه کاره رها و لغو شود، پیش بینی های نیمه اول لغو میشوند. چنانچه بازی‌ در نیمه دوم نیمه کاره رها و لغو شود، پیش بینی های نیمه اول معتبر میباشند.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> برنده نیمه دوم</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( 2nd Half Winner )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند آیتم برنده بازی میباشد با این تفاوت که نتیجه بازی در وقت قانونی نیمه دوم ملاک خواهد بود. در صورت نیمه کاره لغو شدن بازی‌ در نیمه دوم، پیش بینی های نیمه اول معتبر و پیش بینی های نیمه دوم لغو می گردند.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> پرگل ترین نیمه بازی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> ( Highest Scoring Half )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این  پیش بینی باید مشخص کنید در کدام نیمه بازی تعداد گلهای بیشتری به ثمر میرسد. در صورتی که بازی صفر صفر شود یا هر دو نیمه تعداد گلهای مساوی داشته باشند پیش بینی تساوی برنده میشود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> برنده هر دو نیمه</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Win Both Halves )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این پیش بینی مشخص میکنید کدام تیم هر دو نیمه بازی را میبرد. در صورتی  که تیم انتخاب شده هر دو نیمه را ببرد ،پیش بینی برنده است.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> نیمه اول / کل بازی دابل</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( HT/FT Double )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> در این پیش بینی بصورت همزمان در هر گزینه نتیجه نیمه اول و کل بازی را پیش بینی مینمایید. به این صورت که گزینه اول به معنی نتیجه نیمه اول و گزینه دوم به معنی نتیجه کل بازی است و باید هر دوپیش بینی همزمان اتفاق بیوفتد تا پیش بینی برنده شود مثلا ر/ ئال مادرید بارسلونا به معنی برد نیمه اول توسط ر‌‌ئال مادرید و برد کل بازی توسط بارسلونا هست و باید رئال مادرید نیمه اول را برنده شود و در کل بازی هم بارسلونا برنده شود که این شرط بازنده نباشد. توجه کنید در انگلیسی از چپ به راست گزینه اول مربوط به نیمه اول و گزینه دوم مربوط به کل بازی است و هر جا متن انگلیسی بود این قاعده وجود دارد، ولی در فارسی برعکس میباشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> دروازه بسته میزبان ( کلین شیت میزبان )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Clean Sheet – Home )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">به معنی بسته بودن دروازه تیم میزبان است یعنی تیم میهمان نمیتواند گلی به ثمر برساند و در این صورت گزینه \"بله\" برنده است و در غیر اینصورت گزینه \"نه\" برنده است .</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> دروازه بسته مهمان( کلین شیت میهمان )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Clean sheet - away )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">به معنی بسته بودن دروازه تیم میهمان است یعنی تیم میزبان نمیتواند گلی به ثمر برساند و در این صورت گزینه \"بله\" برنده است و در غیر اینصورت گزینه \"نه\" برنده است.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> آیا هر دو تیم گل می زنند؟</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Both Teams To Score )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">از تعریف شرط مشخص هست که در صورتی که شما گزینه \"بله\" را انتخاب کرده باشید و هر دو تیم گل بزنند شرط برنده است ولی چنانچه بازی صفر صفر شود یا یکی از تیمها گلی نزند پیش بینی شما باخته است.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> آیا هر دو تیم در نیمه اول گل می زنند؟</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Both Teams To Score - 1st Half ) </span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند آیتم بالا با این تفاوت که معیار وقت قانونی نیمه اول بازی میباشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> آیا هر دو تیم در نیمه دوم گل می زنند؟</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Both Teams To Score - 2nd Half )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند آیتم بالا با این تفاوت که معیار وقت قانونی نیمه دوم بازی میباشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> برنده بازی با دروازه بسته</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Win To Nil )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">از تعریف ان مشخص هست که پیش بینی در صورتی برنده است که تیم انتخابی برنده بازی باشد بدون اینکه گلی دریافت کند.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> زوج یا فرد</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Odd/Even )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این ایتم باید مشخص کنید مجموع گلهای مسابقه زوج است یا فرد . نتیجه صفر - صفر زوج حساب میشود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> زوج یا فرد در نیمه اول</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Odd/Even 1st Half )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این ایتم باید مشخص کنید مجموع گلهای مسابقه دروقت قانونی نیمه اول زوج است یا فرد.نتیجه صفر صفر زوج حساب میشود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> برنده حداقل یکی از نیمه ها</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( To Win Either Half )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این ایتم تیم انتخابی باید حداقل یک نیمه بازی را ببرد تا پیش بینی برنده باشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> نتیجه بازی / آیا هر دو تیم گل میزنند؟</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Results/Both Teams To Score )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این ایتم بطور همزمان هم برنده بازی و هم اینکه آیا هر دو تیم گل میزنند یا خیر را بررسی میکند. آیتم اول به معنی برنده بازی در وقت قانونی و آیتم دوم به معنی آیا هر دو تیم گل میزنند یا خیر میباشد، که کاربر باید هر دو مورد را درست حدس زده باشد که پیش بینی برنده باشد به عنوان مثال در بازی چلسی و منچستر اگر کاربر گزینه میزبان/بله را انتخاب کند به این معنی است که چلسی باید برنده بازی باشد و هر دو تیم در وقت قانونی گل بزنند که پیش بینی برنده باشد . توجه کنید در انگلیسی از چپ به راست گزینه اول مربوط به نتیجه و گزینه دوم مربوط به گل زنی هردو تیم است .</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> تیم میزبان حداقل یک گل میزند</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Home Team Score a Goal )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">طبق این ایتم فارغ از نتیجه بازی تیم میزبان حداقل باید یک گل یا بیشتر بزند که گزینه \" بله \" برنده باشد اگر میزبان گل نزند گزینه  \"خیر\" برنده است  .</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> تیم میهمان حداقل یک گل میزند</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Away Team Score a Goal )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">طبق این ایتم فارق از نتیجه بازی تیم میهمان حداقل باید یک گل یا بیشتر بزند که گزینه \" بله \" برنده باشد اگر میهمان گل نزند گزینه  \"خیر\" برنده است  .</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> برنده بازی در 10 دقیقه ابتدایی</span></strong></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:right\"><strong><span style=\"font-size:18px\">( First 10 min Winner )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">با اینایتم تنها نتیجه بازی در 10 دقیقه اول بازی یعنی تا دقیقه 10 بازی مورد نظر است و تنها گلهای این دقایق محاسبه میشوند . توجه کنید دقیقه 10 بازی یعنی از دقیقه 00 تا دقیقه 9:59 و مثلا دقیقه 10:02 یعنی ده دقیقه و دو ثانیه جزو ده دقیقه اول بازی نیست.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> زننده اولین گل بازی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( First Team To Score )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">تیمی که اولین گل بازی را به ثمر میرساند را مشخص می کند .</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> زننده آخرین گل بازی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Last Team To Score )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">تیمی که آخرین گل بازی را به ثمر میرساند را مشخص می کند.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">مجموع گل های بازی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Goals Over/Under )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این ایتم مجموع گلهای مسابقه را در نظر گرفته با توجه به عددی که کاربر انتخاب کرده است مشخص میکند گل مورد نظر بالاتر از آن عدد هست یا پایینتر.  مثلا اگر کاربر بالای 2.5 گل را انتخاب کرده باشد و نتیجه بازی 2-1 شده باشد یعنی 3 گل در بازی به ثمر رسیده و عدد سه بزرگتر از عدد 2.5 میباشد و پیش بینی برنده است . ولی در خصوص مواردی که عدد شرط به جای 0.5  مثلا   0.25 یا 0.75  در قسمت اعشاری داشت، حالتهای دیگری به جز برد و باخت نیز خواهیم داشت مثل نیم برد و نیم باخت و برگشت شرط ، این حالتها را به همراه تعاریف مربوطه در جداول زیر بطور کامل مشخص کرده ایم :</span></strong></p>\r\n\r\n<p><img src=\"data:image/png;base64,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\" style=\"float:right\"></p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p><strong><span style=\"font-size:18px\">برای آشنایی با حالت های مختلف گل بالا / پایین میتوانید از جدول زیر استفاده کنید :</span></strong></p>\r\n\r\n<p><img src=\"data:image/png;base64,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\"></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">و برای مواردی که در جدول آورده نشده است نیز به این صورت عمل کنید که مجموع گلهای بازی را از عدد آور/آندر در حالت آور کم کنید  و در حالت آندر عدد آور/آندر را از مجموع گلهای بازی کسر کنید و نتیجه حاصل را در شرایط زیر مقایسه کنید  :</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل برابر صفر بود  آنگاه پیش بینی شما فسخ می شود و مبلغ پیش بینی برگشت داده می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل برابر 0.25-  بود آنگاه نتیجه پیش بینی شما نیم باخت می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل برابر 0.25+  بود آنگاه نتیجه پیش بینی شما نیم برد می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل بزرگتر از 0.25+  بود آنگاه نتیجه پیش بینی شما برد می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل کوچکتر از 0.25 -  بود آنگاه نتیجه پیش بینی شما باخت می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">تاکید میشود این فرمولها و این قوانین جهانی هستند و این مطالب تنها راهنما برای کاربر میباشد و کاربر باید کاملا آگاهی داشته باشد که هر آپشن به چه صورت محاسبه میشود و با اطلاع کامل در مسابقه شرکت کند. مسئولیت آگاهی و اطلاع با کاربر میباشد و هرگونه اعتراضی نسبت به عدم آگاهی برای محاسبات مورد پذیرش نیست.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> مجموع گلهای بازی در نیمه اول</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Goals Over/Under 1st Half )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند آیتم بالا میباشد ولی فقط گلهای وقت قانونی نیمه اول محاسبه میگردد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> مجموع گلهای بازی در نیمه دوم</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Goals Over/Under 2nd Half  )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند آیتم بالا میباشد ولی فقط گلهای وقت قانونی نیمه دوم  محاسبه میگردد</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">مجموع گل های میزبان</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> ( Total - Home )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این آیتم تنها تعداد گلهای تیم میزبان را در نظر میگیرد و با توجه به عدد انتخاب شده برای شرط مشخص میکند که تعداد گلهای میزبان از عدد انتخاب شده بزرگتر هست یا کمتر میباشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">  مجموع گل های میهمان</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Total - Away )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این آیتم تنها تعداد گلهای تیم میهمان را در نظر میگیرد و با توجه به عدد انتخاب شده برای شرط مشخص میکند که تعداد گلهای میهمان از عدد انتخاب شده بزرگتر هست یا کمتر میباشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> برنده بازی / مجموع گلهای بازی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Result/Total Goals )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این ایتم هر دو گزینهمجوع گل های بازی یا اور آندر  و نتیجه بازی با هم بررسی میشوند به این صورت که گزینه اول مربوط به برنده مسابقه و گزینه دوم مربوط به بالا یا پایین بودن گلهای بازی است.  مثلا آرسنال  /اُور ۲.۵ به معنی این است که آرسنال برنده بازی میشود و تعداد گلهای بازی در مجموع بالاتر از۲.۵یا اُور خواهد شد. توجه کنید در حالت انگلیسی از چپ به راست اولین گزینه مربوط به برنده بازی و دومین گزینه مربوط به گلهای بازی است و در فارسی عکس این حالت میباشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">تعداد دقیق مجموع گلهای بازی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Exact Goals Number )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این ایتم باید مجموع گلهای بازی بصورت دقیق بررسی شود و  یعنی اگر کاربر عدد 3 را برای تعداد دقیق گل انتخاب کرده باشد یعنی بازی 3 گل دارد بنابراین تمام نتایجی که مجموع گلهای میزبان و مهمان  عدد 3 بشود پیش بینی برنده هست و اگر تعداد دقیق مجموع گل های میزبان و مهمان  بالاتر یا پایینتر شود پیش بینی بازنده میشود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">تعداد دقیق مجموع گلهای بازی در نیمه اول</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( 1st Half Exact Goals Number )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند ایتم بالا با این تفاوت که تنها گلهای وقت قانونی نیمه اول در نظر گرفته میشود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> تعداد دقیق مجموع گلهای بازی در نیمه دوم</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( 2nd Half Exact Goals Number )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند ایتم بالا با این تفاوت که تنها گلهای وقت قانونی نیمه دوم  در نظر گرفته میشود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> تعداد دقیق گلهای میزبان</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Home Team Exact Goals Number )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این ایتم تعداد دقیق گلهای تیم میزبان با عدد انتخاب شده در شرط مقایسه میشود و در صورت برابر بودن پیش بینی برنده است.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> تعداد دقیق گلهای میهمان</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Away Team Exact Goals Number )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در این شرط تعداد دقیق گلهای تیم میهمان با عدد انتخاب شده در شرط مقایسه میشود و در صورت برابر بودن پیش بینی برنده است.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> نتیجه دقیق</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Correct Score )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این ایتم نتیجه بازی را مشخص میکند و پیش بینی در صورتی برنده است که کاربر دقیقا نتیجه را درست پیش بینی کرده باشد .ضمنا در حالت انگلیسی گلهای میزبان در سمت چپ و گلهای میهمان در سمت راست قرار دارند، در حالت فارسی برعکس.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> نتیجه دقیق نیمه اول</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Correct Score 1st Half )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همانند ایتم بالا میباشد ولی فقط گلهای وقت قانونی بازی در نیمه اول ملاک است. در مورد فارسی و انگلیسی بودن نیز همانند آیتم نتیجه دقیق میباشد.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> هندیکپ آسیایی</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">( Asian Handicap )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">هندیکپ آسیایی نوع خاصی‌ از هندیکپ است که برای مسابقات فوتبال استفاده می شود. هندیکپ با توجه به قدرت هر یک از تیم‌‌ها تعیین می‌شود. این گزینه باعث می شود که ضرایب تیم‌‌ها به هم نزدیکتر باشند و هیجان بیشتری ایجاد گردد.در هندیکپ آسیایی برخلاف پیش بینی روی نتیجه مسابقه که سه گزینه برای پیش بینی وجود داشت تنها دو گزینه برای پیش بینی وجود دارد. اساس کار هندیکپ به این صورت است که با اضافه کردن یا کسر کردن تعدادی گل از یکی از دو طرف مسابقه موازنه برقرار میشود.<br>\r\nدر پیش بینی هندیکپ علاوه بر برد و باخت سه مفهوم جدید هم اضافه میشوند. که در جدول زیر آمده اند :</span></strong></p>\r\n\r\n<p><img src=\"data:image/png;base64,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\"></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">برای آشنایی با حالت های مختلف هندیکپ آسیایی میتوانید از جدول زیر استفاده کنید :</span></strong></p>\r\n\r\n<p><img src=\"data:image/png;base64,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\"></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">همچنین ممکن است مواردی وجود داشته باشد که در جدول بالا ذکر نگردیده باشند ولی کابر اگر در آن مسابقه شرکت میکند باید از قوانین آن با توجه به اینکه این قوانین بر طبق استانداردهای جهانی میباشند آگاهی کافی داشته باشد. بطور کلی برای مواردی که در جدول بالا وجود ندارند به این صورت عمل نمایید   :گلهای میهمان را از گلهای میزبان کسر کنید و با عدد هندیکپ جمع کنید توجه کنید علامتهای منفی باید لحاظ شوند، سپس با توجه به عدد حاصل بدست اومده نتیجه شرط را محاسبه کنید :</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل برابر صفر بود آنگاه  شرط فسخ می شود و مبلغ پیش بینی برگشت داده می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل برابر 0.25 - بود آنگاه پیش بینی نیم باخت می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل برابر  0.25 +بود آنگاه پیش بینی نیم برد می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل بزرگتر از 0.25 + بود آنگاه پیش بینی برنده می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">اگر حاصل کوچکتر از 0.25 -  بود آنگاه پیش بینی بازنده می شود.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">تاکید میشود این فرمولها و این قوانین جهانی هستند و این مطالب تنها راهنما برای کاربر میباشد و کاربر باید کاملا آگاهی داشته باشد که هر آپشن به چه صورت محاسبه میشود و با اطلاع کامل در مسابقه شرکت کند. مسئولیت آگاهی و اطلاع با کاربر میباشد و هرگونه اعتراضی نسبت به عدم آگاهی برای محاسبات مورد پذیرش نیست.</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> هندیکپ آسیایی نیمه اول</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\"> ( Asian Handicap First Half )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این آیتم مثل هندیکپ آسیایی میباشد با این تفاوت که تنها گلهای وقت قانونی نیمه اول منظور میشوند .</span></strong></p>\r\n\r\n<p><span style=\"font-size:20px\">هندیکپ سه حالته یا اروپایی </span></p>\r\n\r\n<p><span style=\"font-size:20px\">(Handicap Result)</span></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">در هندیکپ ۳تایی‌ یا اروپایی شرطبندی به شکلی‌ است که قابلیت مساوی نیز هست یعنی جمعاً (۳) حالت شرط وجود دارد در این حالت از تیم انتخاب شده تعداد مشخصی گل کسر یا اضافه میشود مثلا اگر هندیکپ برد -1 انتخاب شود از تیم انتخاب شده شما یک گل کسر میشود و تیم مورد نظر شما باید با اختلاف دو گل یا بیشتر برنده شود تا شرط شما برنده گردد چنانچه تای یا مساوی -1 انتخاب شود تیم مهمان باید با اختلاف یک گل بازی را ببرد تا شرط شما مساوی شود و شما برنده شوید . همینطور برای حالت مثبت نیز میتوان این توضیحات را بسط داد..</span></strong><br>\r\n </p>\r\n\r\n<p><strong><span style=\"font-size:18px\">هندیکپ (۱-) : در صورتی‌ که تیم منتخب شما با اختلاف (۲) گل یا بیشتر برنده شود، شرط برنده است.</span></strong><br>\r\n </p>\r\n\r\n<p><strong><span style=\"font-size:18px\">هندیکپ مساوی (tie)  : فرض کنید شما هندیکپ مساوی +1 را انتخاب کرده اید . این بدین معناست که بعد از دادن یک گل آوانس به تیم مهمان نتیجه بازی مساوی شود، پیش بینی شما برنده است به عنوان مثال شما هندیکپ +1 مساوی را انتخاب کردید پس تیم مهمان باید با اختلاف یک گل بازنده شود تا حالت مساوی در پیش بینی شما ایجاد شود و پیش بینی شما برنده گردد. حال برای هندیکپ مساوی -1 در نظر بگیرید شما مساوی -1 پیش بینی کرده اید این یعنی اگر از مهمان یک گل کم شود بازی مساوی شود یعنی اگر مهمان با اختلاف یک گل ببرد پیش بینی شما برنده می شود .</span></strong><br>\r\n<br>\r\n<strong><span style=\"font-size:18px\">هندیکپ (۱+) : در صورتی که تیم‌ منتخبتان برنده شود یا بازی‌ مساوی شود، پیش بینی برنده است. ولی اگر تیم منتخب شما با یک گل یا بیشتر ببازد پیش بینی بازنده است . حالت +2 را به عنوان مثال دیگر در نظر بگیرید اگر تیم منتخب شما برنده شود یا بازی مساوی شود یا با اختلاف یک گل شکست بخورد پیش بینی شما برنده است ولی اگر با اختلاف دو گل یا بیشتر ببازد پیش بینی شما بازنده خواهد بود.<br>\r\n </span></strong><br>\r\n </p>\r\n\r\n<p><strong><span style=\"font-size:20px\">هندیکپ سه حالته یا اروپایی نیمه اول</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:20px\">(Handicap Result 1st Half)</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این پیش بینی مثل هندیکپ اروپایی یا سه حالته میباشد با این تفاوت که تنها گلهای وقت قانونی نیمه اول منظور میشوند.<br>\r\n </span><br>\r\n<span style=\"font-size:20px\">برنده تعداد کرنرها </span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:20px\">(Corners 1x2 )</span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این پیش بینی مشخص میکند کدام تیم بیشترین تعداد کرنر در وقت قانونی بازی به ثمر میرساند.<br>\r\n </span><br>\r\n<span style=\"font-size:20px\">تعداد کرنرها آور-آندر </span></strong></p>\r\n\r\n<p><strong><span style=\"font-size:20px\">(Corners Over Under)</span></strong><br>\r\n </p>\r\n\r\n<p><strong><span style=\"font-size:18px\">این پیش بینی مشخص میکند مجموع کرنرهای بازی از یک عدد مشخص بالاتر میباشد یا پایینتر یا مساوی است .</span></strong></p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n									');
INSERT INTO `content_pages` (`id`, `name`, `slug`, `status`, `compiler`, `created_at`, `updated_at`, `tpl`, `short_description`, `description`) VALUES
(6, 'سوالات متداول', 'faq', 1, 'none', '2018-08-18 21:09:11', '2020-01-15 10:17:35', '', '<p>سوالات متداول&nbsp;&nbsp;</p>\r\n', '																														<p><span style=\"font-size:20px\">سوالات متداول</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">ثبت نام</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">شرایط و نحوه ثبت نام در matinbet به چه صورت است؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">ثبت نام در وبسایت مجانی است و هر فرد بالای 18 سال میتواند در وبسایت ثبت نام کند.. ثبت نام در سایت بسیار ساده است کافی است از صفحه اول بر روی لینک ثبت نام کلیک کرده و مشخصات خود را وارد کنید .<br>\r\nدقت کنید مشخصات را حتما به صورت دقیق و صحیح وارد کنید زیرا هرگونه تغییر پسورد ، ایجاد مشکل در واریز و برداشت توسط ایمیل و شماره همراه شما انجام می شود .</span><br>\r\n </p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:20px\">آیا میتوانم در </span><span style=\"font-size: 20px;\">matinbet</span><span style=\"font-size:20px\"> چند حساب کاربری ایجاد نمایم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">ایجاد چندین حساب کاربری در </span><span style=\"font-size: 20px;\">matinbet</span><span style=\"font-size: 20px;\"> </span><span style=\"font-size:20px\">بر خلاف قوانین و مقررات است و کاربری که اقدام به این عمل نماید به عنوان متخلف شناخته میشود و تمامی حسابهای کاربری و مبالغ موجود در آنها مسدود میشود.<br>\r\n </span></p>\r\n\r\n<p><span style=\"font-size:20px\">در صورتی که رمز عبور خود را فراموش کرده باشم چه کار باید بکنم؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در مواردی که رمز عبور خود را فراموش کرده اید از قسمت بازیابی رمز عبور در صفحه اصلی استفاده نمایید و با توجه به دستورالعملی که در این قسمت نوشته شده است به بازیابی رمز عبور خود اقدام نمایید. بدیهی است رمز عبور تنها به ایمیلی که در هنگام ثبت نام در سایت ثبت کرده اید ارسال میشود، و برای بازیابی رمز عبور راهکار دیگری وجود ندارد.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">برای بازیابی رمز عبور نیاز به ایمیل ثبت نامی میباشد ولی من رمز عبور ایمیل را فراموش کرده ام یا ایمیل من مسدود شده است در این صورت چکار باید بکنم؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">متاسفانه هویت شما از طریق ایمیل ثبت نامی شما قابل تشخیص خواهد بود و در صورتی که رمز ایمیل را فراموش کرده اید باید رمز عبور ایمیل خود را از طریق همان سرویس دهنده ایمیل بازیابی کنید. اگر حساب ایمیل شما در دسترس نباشد یا مسدود شده باشد یا امکان بازیابی رمز عبور آن نباشد، حساب شما در سایت فوریو بت نیز از دست رفته خواهد بود و راهکار دیگری برای بازیابی وجود ندارد . در این موارد با هماهنگی بخش پشتیبانی میتوانید حساب جدید باز کنید به شرطی که حساب قبلی از طریق سایت نیز مسدود شود ضمنا اگر مبلغی در این حساب قدیمی باشد، آن مبلغ هم مسدود میشود و امکان انتقال آن وجود ندارد، بنابراین بهتر است همیشه از دسترس بودن ایمیل خود اطمینان داشته باشید.<br>\r\n </span></p>\r\n\r\n<p><span style=\"font-size:20px\">چگونه حساب کاربری خود را حذف یا مسدود نمایم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در صورتی که نیاز به مسدود شدن حساب کاربری خود دارید باید یک ایمیل از ایمیلی که با آن در سایت ثبت نام کردید به آدرس ایمیل سایت ارسال فرمایید.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">برای تغییر کلمه عبور خود باید چه کنم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">برای تغییر کلمه عبور وارد بخش حساب کاربری در صفحه اصلی سایت شوید و در گزینه تغییر کلمه عبور با وارد کردن کلمه عبور فعلی و کلمه عبور جدید کلمه عبور خود را تغییر دهید.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">حساب کاربری<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">چگونه میتوانم موجودی حسابم را افزایش دهم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">به این منظور وارد حساب کاربری خود شوید و از قسمت شارژ حساب اقدام به افزایش موجودی حساب خود کنید. این گزینه در قسمت بالایی سایت بعد از ورود ، در گزینه حساب من در قسمت بالایی سایت و در قسمت سمت راست در حساب کاربری وجود دارد . و پس از وارد کردن مبلغ به تومان وارد درگاه بانکی می شوید و با استفاده از اطلاعات کارت و رمز دوم پرداخت خود را انجام می دهید و به موجودی حساب شما اضافه می شود .<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">چرا من نمیتوانم شارژ حساب انجام دهم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">مشکل شارژ حساب  بستگی به روشی دارد که شما برای افزایش موجودی انتخاب کرده اید اگر از روش درگاه بانکی مستقیم قصد شارژ حساب دارید مطمئن شوید در کارت شما موجودی وجود دارد و کارت شما توسط بانک شما مسدود نشده یا محدودیتهای تراکنشهای روزانه در آن رعایت شده باشد. در پاره ای از موارد این مشکل از سمت سیستم بانکی کشور و شتاب و شاپرک میباشد که اگر چند لحظه بعد امتحان کنید احتمالا مشکل شما حل میگردد. اگر ایراد از سمت سایت باشد از طریق اطلاعیه های سایت اعلام میگردد و بنابراین به اطلاعیه های سایت هم دقت کنید اگر با همه این موارد بازهم موفق به خرید اعتبار نمیگردید با بانک خود تماس بگیرید و یا با ارسال تیکت از بخش پشتیبانی راهنمایی بخواهید .<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">چرا با وجود اینکه از درگاه مستقیم شارژ حساب انجام داده ام و از کارت بانکی من مبلغ کسر شده است ولی موجودی من در سایت افزایش نیافته؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">معمولا بلافاصله بعد از خرید اعتبار از طریق درگاه مستقیم، موجودی حساب شما در سایت افزایش مییابد ولی چنانچه این اتفاق نیافتاد، به احتمال بسیار زیاد واریز شما ناموفق بوده و حتی اگر از حساب بانکی شما کسر شده باشد و پیامک خرید موفق هم برای شما ارسال شده باشد تا دو ساعت بعد از سمت بانک اصلاحیه ارسال میشود و به موجودی حساب بانکی شما برمیگردد. ولی چنانچه بعد ا زدو ساعت همچنان به حساب بانکی شما برنگشت با قسمت پشتیبانی اینترنتی بانکی که از درگاه آن خرید کرده اید تماس بگیرید و مشخصات واریز را اعلام کنید تا به حساب شما برگشت بزنند در صورتی که اعلام کردند واریز موفق بوده از آنها شماره خرید بگیرید و به همراه مشخصات واریز شامل مبلغ و تاریخ و ساعت دقیق و شماره کارتی که با آن واریز کرده اید به بخش پشتیبانی سایت ارسال نمایید تا در اسرع وقت پیگیری گردد.<br>\r\n <br>\r\n <br>\r\nچگونه میتوانم درخواست برداشت  بدهم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">برای درخواست برداشت از بخش درخواست برداشت باید اقدام کنید .این گزینه بعد از ورود در قسمت حساب من در بالای سایت و در سمت راست گزینه حساب کاربری و جود دارد . مبلغ درخواستی شما در هر روشی که انتخاب میکنید باید در حداقل و حداکثر سقف ذکر شده قرار داشته باشد و شما مبلغ درخواستی را در موجودی داشته باشید، به محض درخواست این مبلغ از موجودی شما کسر میگردد و به لیست درخواستهای تایید نشده وارد میشود که باید منتظر تایید و سپس واریز آن توسط سایت باشید. لطفا دقت فرمایید شماره حساب ، شماره کارت ، شماره شبا به صورت صحیح و دقیق وارد نمایید و همچنین حتما و حتما و حتما اطلاعات کارتی را وارد نمایید که با آن پرداخت انجام داده اید . در غیر این صورت درخواست شما لغو می شود .<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">چرا نمیتوانم درخواست جایزه بدهم و با پیغام خطا مواجه میشوم یا درخواست من لغو می شود؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">این خطا هنگامی اتفاق میوفتد که شما مبلغ مورد نظر را در حساب نداشته باشید و یا اطلاعات وارد شده کارت با اطلاعات کارتی که با آن پرداخت کرده اید متفاوت هست (دقت کنید برداشت حتما باید با کارتی انجام شود که با آن پرداخت انجام شده است )همچنین ممکن است  اطلاعات وارد شده مثل شماره کارت ، شماره حساب ، شماره شبا و همچنین نام صاحب حساب کامل یا صحیح نیست .<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">آیا میتوانم بلافاصله بعد از واریز به سایت و بدون شرکت در مسابقات سایت درخواست واریز وجه نمایم؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">خیر متاسفانه این امکان به دلیل اینکه این مبالغ با نرخ تبادل ارز از مبلغ واریز شده به یک ارز دیگر تبدیل میشود و در حساب سایت قرار میگیرد، امکان پذیر نیست و این عمل برای سایت هزینه دارد و بنابراین امکان این امر بدون شرکت در مسابقات وجود ندارد مگر اینکه این تفاوت نرخ ارز از مبلغ کسر گردد و سپس به حساب کاربر واریز شود. بنابراین چنانچه کاربر واریز نماید و بلافاصله درخواست جایزه بدون شرکت در مسابقات نماید، لطفا در جریان باشید که درصدی از مبلغ کسر میگردد. همچنین به اندازه مبلغ واریزی باید در مسابقات شرکت نمایید و اگر کمتر از مبلغ شرکت کنید و در هنگام درخواست بیشتر از آن درخواست دهید، بازهم برای مابه التفاوت مبلغ اگر درخواست جایزه داده شود درصدی به عنوان کارمزد کسر میگردد.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">مدت زمان پرداخت به حساب من چقدر میباشد ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در خصوص درخواست برداشت به حساب بانکی چندین روش دریافت وجه در حساب شما وجود دارد. در حالتی که شما واریز از طریق کارتهای شتاب را انتخاب کرده باشید درخواستهای برداشت ابتدا ظرف کمتر از 48 ساعت و معمولا تا 24 ساعت توسط سایت بررسی میگردند و سپس درخواست شما برای واریز اقدام میگردد. بعد از تایید، واریز به حساب بانکی شما از یک تا هفتاد و دو ساعت و در بعضی روزها ممکن است به دلیل تعطیلی یا مشکلات دیگر حتی بیشتر بطول میانجامد، البته تلاش سایت درانجام واریزها در کمتر از 24 ساعت میباشد، ولی چنانچه تاخیری بوجود بیاید که از دست سایت خارج باشد این زمان طبق زمانبندی گفته شده ممکن است بیشتر بطول بیانجامد.</span><br>\r\n </p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:20px\">آیا میتوانم درخواست برداشت خود را لغو نمایم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">درخواستهای برداشت چنانچه هنوز توسط سایت تایید نشده باشند قابلیت لغو توسط کاربر را دارند و به محض اینکه کاربر درخواست را لغو کند مبلغ به حساب کاربر برمیگردد. توجه کنید چنانچه درخواستی را لغو کنید و مجدد درخواست بدید زمان واریز به حساب شما از زمان درخواست مجدد محاسبه میشود.  همچنین درخواستهای تایید شده به هیچ عنوان امکان لغو ندارند و در این خصوص تقاضا داریم پیام ارسال نفرمایید.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">درخواست برداشت داده ام چرا با اینکه تایید شده واریز نشده است؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">فرآیند واریز بطور کامل در سوال \"مدت زمان پرداخت جایزه به حساب من چقدر میباشد؟\" توضیح داده شده است بنابراین انتظار میرود کاربران محترم با توجه به این توضیحات در صورتی که تاخیری ناخواسته ایجاد شده صبر داشته باشند و سوال درمورد جایزه ارسال نفرمایند. سیستم سایت به نحوی هست که همه واریزها انجام خواهد شد و تاخیرها غالبا به خاطر تعداد بالای واریزها و وجود روزهای تعطیل میباشد. سایت همه تلاش خود را میکند در کمترین زمان ممکن جوایز را به حساب کاربران واریز نماید. تنها در صورتی که بیش از 4 روز کاری از زمان تایید درخواست شما میگذرد و واریز به حساب شما انجام نشده با پشتیبانی سایت تماس بگیرید . دقت کنید حتما قبلا از تماس حساب خود را چک کنید و گاهی دیده میشود واریز انجام شده و اس ام اس بانک برای شما نیامده است و تصور شما بر واریز نشدن است ، بنابراین حتما حساب بانکی خود را از اینترنت بانک یا دستگاه خودپرداز چک کنید سپس به پشتیبانی پیام دهید. قبلا از همکاری شما صمیمانه سپاسگذاریم.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">چرا درخواست برداشت من تایید نشده است ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">درخواستهای برداشت هر روز یکبار توسط سایت تایید میشوند و در لیست واریزها قرار میگیرند که به حساب کاربران واریز گردند هر درخواستی بعد از تایید درخواستها توسط سایت به روز بعد موکول میشود مثلا ممکن است سایت ساعت 8 شب درخواستها را تایید کرده باشد بنابراین هر درخواستی که بعد از ساعت 8 شب ارسال شود ، تایید آن به روز بعدی موکول میشود. بهتر است اگر نیاز به واریز سریع وجه دارید درخواست خود را قبل از ساعت 8 شب ارسال کنید که احتمال اینکه در لیست واریز روز بعدی قرار بگیرید بالا برود. البته سایت همیشه تلاش میکند این زمان تایید را به آخر شب نزدیک کند که تعداد زیادی از درخواستها در لیست واریز روز بعدی قرار داشته باشند. با اینحال اگر درخواست شما از شب قبل تایید نشده یعنی بعد از تایید سایت درخواست ارسال کردید و باید تا شب روز بعد صبر کنید تا درخواست شما تایید شود. مجدد استدعا داریم در این خصوص چنانچه پاسخ شما در این توضیحات میباشد پیام ارسال نفرمایید. قبلا از همکاری شما صمیمانه سپاسگذاریم.</span></p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:20px\">آیا میتوانم آدرس ایمیلی که در سایت برای من ثبت شده است را تغییر دهم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">خیر امکان ویرایش یا تغییر آدرس ایمیل وجود ندارد و شما باید با یک ایمیل معتبر در سایت ثبت نام نمایید. بدیهی است چنانچه برای حساب کاربری شما مشکلی پیش بیاید مثل فراموشی نام کاربری یا موارد دیگر تنها از طریق ایمیلی که در هنگام ثبت نام درج کرده اید قادر به پیگیری خواهید بود وسایت این ایمیل را معتبر میداند.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">آیا میتوانم نام کاربری خود را تغییر دهم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">خیر ، کاربران نمی توانند نام کاربری خود را تغییر دهند.<br>\r\n </span></p>\r\n\r\n<p><br>\r\n<span style=\"font-size:20px\">در چه مواردی موجودی حساب من بدون خرید اعتبار افزایش پیدا میکند ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">پاداشها و بانوسها و طرحهای تشویقی سایت میتوانند از مواردی باشند که حساب کاربر بدون خرید اعتبار افزایش یابد. در این خصوص راهنماهای مربوطه را مطالعه کنید.</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\"> <br>\r\nآیا میتوانم با دو نام کاربری در مسابقات شرکت کنم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">خیر شما نمیتوانید با دو یا چند نام کاربری در مسابقات شرکت کنید و در صورت مشاهده همه حسابهای کاربری شما مسدود میگردد. لطفا در خصوص این مورد قوانین سایت را مطالعه بفرمایید.<br>\r\nشرایط استفاده از طرح تشویق سایت به چه صورت هست؟<br>\r\nطرح درخت تشویق یا طرح تشویق سایت به منظور استفاده از کاربران جهت تبلیغ برای سایت و پرداخت درصدی از شارژ نفرات معرفی شده به کاربر میباشد که باعث ایجاد انگیزه و درآمدزایی برای کاربر گردد. همه کاربران میتوانند از این طرح استفاده نمایند و محدودیتی وجود ندارد، برای استفاده از این روش از راهنمای مربوطه استفاده کنید.<br>\r\n <br>\r\n <br>\r\nشرکت در مسابقات</span><br>\r\n </p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:20px\">چگونه میتوانم در مسابقات سایت شرکت نمایم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">برای شرکت در مسابقات سایت لازم است به حساب کاربری خود در سایت وارد شوید و سپس با توجه به مسابقه ای که قصد شرکت در آن را دارید، وارد آن شوید و برای دیدن همه اپشن های بازی گزینه + را که در جلوی هر بازی وجود دارد کلیک کنید سپس همه ضرایب بازی نمایش داده می شود که می توانید با استفاده از آن ها پیش بینی نمایید . در این خصوص می توانید با استفاده از راهنمای هر بخش در مسابقه شرکت نمایید.<br>\r\n </span></p>\r\n\r\n<p><br>\r\n<span style=\"font-size:20px\">چگونه میتوانم مسابقاتی را که قبلا شرکت کرده ام مشاهده نمایم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">بخشی به نام سابقه پش بینی وجود دارد که با رنگ زرد متمایز شده است و شما میتوانید از آن جهت مشاهده سابقه مسابقات استفاده نمایید.<br>\r\n </span></p>\r\n\r\n<p><br>\r\n<span style=\"font-size:20px\">حداقل و حداکثر مبلغ شرکت در مسابقات سایت به چه میزان است ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در هر نوع از مسابقات سایت برای شرکت درمسابقات یا ثبت هر فرم یک حداقل و حداکثر برای شرکت در مسابقه و برای مبلغ جایزه در نظر گرفته شده است که کاربر موظف است در محدوده مشخص شده مبالغ خود را تنظیم نماید.<br>\r\n <br>\r\n <br>\r\nدر مسابقات ترکیبی شرکت کرده ام ولی ضریب کل من که بیشتر از 100 بوده با عدد 100 محاسبه شده است چرا؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">طبق قوانین سایت ضریب کل در مسابقات ترکیبی حداکثر 100 میباشد یعنی کاربران چنانچه ضریب بیشتر از 100 ثبت کرده باشند برای ایشان همان ضریب 100 محاسبه میشود.<br>\r\n </span></p>\r\n\r\n<p><br>\r\n<span style=\"font-size:20px\">چگونه میتوانم فرم شرط خود را کنسل کنم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">توجه کنید به محض ثبت فرم شما در مسابقات تکی و ترکیبی به هیچ عنوان امکان لغو کنسل کردن آن به هر دلیلی وجود ندارد . بنابراین دقت نمایید که اشتباهی رخ ندهد که قابل برگشت نیست .</span><br>\r\n </p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:20px\">مسابقه ای که تکی انتخاب کردم یا یک یا چند بازی از مسابقات فرم ترکیبی من لغو شده یا زمانش تغییر کرده، تکلیف چیست؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در این خصوص به قوانین سایت مراجعه فرمایید و یا به پشتیبانی تیکت ارسال نمایید .</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\"> <br>\r\nانواع مسابقات سایت</span><br>\r\n </p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:20px\">مسابقات تکی چیست؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">ساده ترین نوع مسابقه سایت میباشد، که در آن با توجه به ضریبی که سایت برای یک رویداد بازی ارائه میدهد در ازای مبلغی که کاربر بر روی بازی قرار میدهد، در صورت محقق شدن آن رویداد و برنده شدن، جایزه ای به کاربر تعلق میگیرد و درصورت باخت هیچ مبلغی تعلق نمیگیرد. برای اطلاعات بیشتر راهنمای مسابقات تکی را مطالعه کنید.</span><br>\r\n </p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:20px\">مسابقه ترکیبی یا کمبو چیست ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در این مسابقه شما به جای پیش بینی بر روی بازیها به صورت جداگانه، بر روی چند مسابقه بطور همزمان شرطبندی مینمایید و ضرایب این مسابقات در هم ضرب میشود و در صورت برنده شدن این ضریب کل در مبلغی که شما بر روی کل فرم قرارداده اید ضرب شده و جایزه شما تعیین میگردد. توجه کنید برای برنده شدن در مسابقات ترکیبی یا کمبو باید همه انتخابهای شما صحیح باشد و یا بازنده نباشد ، اگر یک بازی در لیست انتخابی شما باخت کامل باشد فرم شما بصورت کامل بازنده است. برای اطلاعات بیشتر راهنمای مسابقات ترکیبی را مطالعه فرمایید.<br>\r\n </span></p>\r\n\r\n<p><br>\r\n<span style=\"font-size:20px\">پیش بینی زنده یا شرطبندی لایو چیست ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در این مسابقات شما در طول برگزاری یک مسابقه میتوانید بر روی آن شرطبندی نمایید و پیش بینی خود را با توجه به شرایط بازی ثبت نمایید. قوانین این مسابقه تقریبا شبیه به مسابقات تکی هست با این تفاوت که بصورت لایو پیش بینی انجام میگردد.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">آیا امکان تغییر یا لغو مسابقه تکی یا ترکیبی که انتخاب کرده ام وجود دارد؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">متاسفانه به هیچ عنوان بعد از ثبت فرم شما در مسابقات تکی و ترکیبی و پیش بینی زنده امکان تغییر یا لغو فرم وجود ندارد بنابراین باید با دقت پیش بینی خود را ثبت کنید. این مورد از قوانین سایت میباشد.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">تا چه مبلغی میتوانم در مسابقات تکی و ترکیبی و پیش بینی زنده شرکت کنم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">حداکثر مبلغ شرکت در مسابقات تکی و ترکیبی در بخش مسابقات تکی/ترکیبی - شرکت در مسابقه درج شده است و شما ملزم به رعایت سقف تعیین شده هستید میتوانید راهنمای شرکت در مسابقات تکی یا ترکیبی و قوانین و مقررات سایت را در این خصوص مطالعه بفرمایید.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">تا چه مبلغ جایزه ای میتوانم در مسابقات تکی یا ترکیبی و پیش بینی زنده برنده شوم ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">حداکثر مبلغ جایزه در مسابقات تکی و ترکیبی در بخش مسابقات مربوطه درج شده است و شما ملزم به رعایت سقف تعیین شده هستید میتوانید راهنمای شرکت در مسابقات تکی یا ترکیبی و پیش بینی زنده و بخصوص قوانین و مقررات سایت را در این خصوص مطالعه بفرمایید.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در هنگام ثبت فرم در مسابقات تکی و ترکیبی و پیش بینی زنده پیغام خطا ظاهر میشود ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">پیغام خطا در هنگام ثبت فرم در مسابقات تکی و ترکیبی یا پیش بینی زنده یا بدلیل رعایت نکردن حداکثر و حداقل مبالغ شرکت در مسابقه و سقف جایزه میباشد و یا مربوط به بازی میباشد که فرصت شرکت در آن به اتمام رسیده است . لطفا با راهنمایی پیغام اعلام شده موارد را رفع نمایید و اگر بازهم مشکل داشتید از با پشتیبانی سایت مطرح کنید<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در صورت لغو یک یا چند بازی در مسابقات گروهی تکی یا ترکیبی ، تکلیف چیست ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در این خصوص صفحه قوانین و مقررات سایت توضیحات کامل را ارائه داده است لطفا مطالعه فرمایید.<br>\r\n </span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">مسابقه ترکیبی شرکت کرده ام ولی همه مسابقات من تصحیح نشده است ؟</span><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:20px\">در مسابقات ترکیبی توجه کنید منطق سایت به صورتی میباشد که به محض اینکه به اولی باخت در فرم ترکیبی میرسد بررسی مابقی بازیهای فرم را متوقف میکند بنابراین چنانچه در فرم خود باخت داشته باشید بازیهای بعدی دیگه محاسبه نمیشود و کل فرم شما بازنده میباشد.</span></p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n																											'),
(7, 'جدول مسابقات', 'leagueTables', 1, 'none', '2018-08-18 21:09:11', '2018-04-04 17:56:41', 'CompetitionTables', '<p>CompetitionTables</p>\r\n', '<p>CompetitionTables</p>\r\n'),
(30, 'قوانین و مقررات', 'rules', 1, 'none', '2018-08-18 21:09:11', '2020-01-15 10:14:24', NULL, '<p>قوانین و مقررات</p>\r\n', '																																																		<p><strong>• ضمن عرض خوش آمد گویی لازم به ذکر است حضور شما در این مجموعه  باعث خرسندی ماست و همراهی و اعتماد شما دوستان عزیز باعث افتخار و اعتبار ماست . افزایش حضور شما کاربران محترم تعهد این مجموعه را برای حراست از اطلاعات شخصی و اموال شما را بیشتر از قبل می کند و بدین منظور برای پیشگیری از سوء استفاده های ممکن از شما تقاضا داریم به توصیه های نوشته شده در قسمت قوانین را جدی گرفته و نهایت دقت را در واریز وجه ، درخواست برداشت ، حفاظت از نام کاربری و رمز عبور و همچنین درست وارد کردن مشخصات فردی مثل شماره همراه ، ایمیل ، نام و نام خانوادگی داشته باشین .</strong><br>\r\n </p>\r\n\r\n<p><strong>مجددا متذکر می شویم کلیه پیگیری ها با مشخصات فردی منطبق با کارت و حساب بانکی و همچنین شماره همراه صحیح و ایمیل شما می باشد .</strong></p>\r\n\r\n<p><br>\r\n<strong>نکته مهم :</strong><br>\r\n </p>\r\n\r\n<p><strong>• در قسمت های مختلف اشاره شده است که درخواست برداشت باید حتما با  کارتی باشد که با آن پرداخت انجام شده است و همچنین نام صاحب حساب با نام کاربری یکی باشد در غیر این صورت مجموعه matinbet </strong><strong>از واریز وجه خودداری میکند. این اقدام برای جلوگیری از سوء استفاده های ممکن از حساب کاربری و موجودی شما کاربران محترم می باشد و مجموعه </strong>matinbet <strong>نهایت حساسیت و جدیت را در این موضوع دارد لطفا همکاری های لازم را داشته باشین .</strong></p>\r\n\r\n<p> </p>\r\n\r\n<p>• ثبت نام و یا ایجاد حساب کاربری در سایت به معنای آگاهی کامل و تعهد کاربر به قبول کردن همه قوانین و مقررات سایت بدون استثنا می باشدهمچنین قوانین و مقررات سایت میتواند با نظر و صلاحدید سایت ، تغییر نمایدو تغییر در قوانین و مقررات سایت از طریق اطلاعیه های سایت اعلام میگردد ولی به معنی این نیست که کاربر مسئول آگاهی از محتویات این صفحه نیست و همواره باید در خصوص قوانین و مقررات سایت آگاهی کامل داشته باشد.</p>\r\n\r\n<p>• کاربر در هنگام ثبت نام حتما باید 18 سال شمسی تمام یا بیشتر داشته باشد. سایت این حق را برای خود محفوظ میدارد به منظور اطمینان از این موضوع از کاربر مدارک مورد نیاز درخواست کند . محتوا، نحوه ارسال و تعداد این مدارک به تشخیص سایت میباشد. ضمنا ممکن است سایت به حساب یک کاربر شک کند و تا زمان دریافت مدارک مورد نیاز حساب کاربر را معلق نماید و اگر این مدارک در بازه زمانی تعیین شده توسط سایت ارسال نگردید و یا با توجه به مدارک دریافت شده مشخص شد کاربر زیر 18 سال سن دارد ، حساب کاربر به طور دائم با تمام موجودی جوایز و موجودی حساب کاربری مسدود میگردد.</p>\r\n\r\n<p>• اطلاعات کاربر در سایت محفوظ میباشد. سایت موظف است امنیت اطلاعات کاربران را تضمین نماید که امکان دسترسی به   اطلاعات کاربران برای هیچ کس به جز مجموعه سایت امکانپذیر نباشد.</p>\r\n\r\n<p>• اگر کاربر اعتراض و یا شکایتی نسبت به سایت دارد باید این مورد بصورت مکتوب از طریق پیامرسانی ظرف مدت 7 روز به سایت ارسال شود. مواردی که بعد از 7 روز ارسال شود مورد پذیرش سایت نیست و پیگیری نمیشوند.</p>\r\n\r\n<p>• در مواردی که حساب کاربر مشکوک به فعالیت مجرمانه همانند مبالغ دزدی یا کارتهای اعتباری هک شده باشد، حساب کاربر معلق میگردد و کاربر موظف است تا مدارک مورد نیاز جهت تایید حساب کاربری را به سایت ارسال نماید این مدارک توسط سایت اعلام میشود و شامل عکس از کاربر با مشخصات خاص ، اثبات آدرس محل سکونت ، عکس از کارت بانکی، عکس از مدارک هویتی،... میباشد. چنانچه کاربر در زمان مشخص شده مدارک را ارسال ننماید، سایت میتواند حساب کاربر را مسدود نماید</p>\r\n\r\n<p>• اگر کاربر شک کرد که از  حساب کاربری او شخص دیگری استفاده میکند باید بلافاصله رمز عبور در سایت و رمز ایمیل خود را تغییر دهد . هر تراکنش انجام شده اعم از برداشت جایزه یا واریز به حساب کاربری ، با مسئولیت صاحب حساب کاربری میباشد . بنابراین استفاده از رمزهای ضعیف و قابل حدس یا دادن اطلاعات حساب کاربری به شخص دیگر که باعث شود حساب کاربری کاربر هک شود یا از مبالغ آن به هر نحوی استفاده شود، با مسئولیت خود صاحب حساب کاربری میباشد و matinbet در این خصوص مسئولیتی ندارد.</p>\r\n\r\n<p>• در خصوص بازیهای آنلاین یا پیش بینی آنلاین، vip90 تمام تلاش خود را میکند تا اطلاعات دقیق باشد، ولی ممکن است شرایطی اتفاق بیافتد که به خاطر تاخیر در بروز شدن ضرایب یا تاخیر در بسته شدن اپشن ها این اطلاعات اشتباه باشد. در این شرایط سایت حق دارد تا پیش بینی ها و بازیهایی که به خاطر تاخیر در بسته شدن یا تاخیر در بروزرسانی ، به اشتباه ثبت شده اند را لغو کند . بطور مثال بعد از زده شدن گل ، اپشن ها و ضرایب  بسته نشده باشند و کاربر شرط را ثبت کرده باشد . چنانچه کاربر این موضوع را مشاهده کرد موظف است به سایت اطلاع دهد . به هر حال هر زمان سایت متوجه این اشتباه شود، میتواند تمام موارد را کسر کند و همچنین میتواند تمامی بازیهایی که بعد از این پیش بینی  توسط کاربر ثبت شده باشند را نیز لغو کند واگر سایت تشخیص دهد این عمل از طرف کاربر به عمد اتفاق افتاده است مجموعه vip90میتواندحساب کاربر را مسدود نماید. بنابراین درپیش بینی های آنلاین دقت کنید حتما این مورد را در نظر داشته باشید . و از صحت برد خود اطمینان حاصل کنید . همچنین توجه کنید تصمیم به لغو یا عدم لغو این موارد با سایت میباشد.</p>\r\n\r\n<p>• هرگونه تلاش برای فریب دادن سایت توسط کاربر مانند ارائه اطلاعات اشتباه به سایت  یا استفاده از دو یا چند حساب کاربری باعث میشود سایت حساب کاربر را مسدود نماید.</p>\r\n\r\n<p>• بیشترین مبلغی که کاربر در یک روز میتواند برنده شود مبلغ 10 میلیون تومان و در یک ماه 40 میلیون تومان است . بدیهی است مبالغ بیشتر از این مقدار از حساب کاربر کسر میگردد.</p>\r\n\r\n<p>• حداقل و حداکثر مبلغ شرکت در مسابقات تکی و بیشترین مبلغ جایزه در هر مسابقه تکی در صفحه شرکت در مسابقات تکی درج میگردد و کاربر ملزم به رعایت این مبالغ می باشد. یعنی مبلغ شرکت در هر مسابقه باید به صورتی انتخاب شود که با ضرب شدن ضریب انتخاب در آن از سقف بیشترین مبلغ جایزه در هر مسابقه تکی، بیشتر نگردد. ولی به شرط رعایت بیشترین مبلغ جایزه میتواند در سایر بازیها نیز همزمان شرکت نماید</p>\r\n\r\n<p>• حداقل جایزه قابل برداشت از طریق حساب بانکی پنجاه هزار تومان است و   حداکثر مبلغی که سایت به کاربر پرداخت میکند در هر روز دو میلیون تومان و در هر ۳۰ روز مبلغ بیست میلیون تومان است. سایت به صلاحدید خود این قانون را در مورد برخی کاربران که فعالیت مستمر در سایت دارند، می تواند نادیده بگیرد.ضمنا کاربر برای برداشت جایزه خود باید مشخصات همان کارتی را بدهد که با ان حساب کاربری خود را شارژ کرده است.در غیر این صورت مجموعه matinbet این حق را دارد برای اطمینان از عدم سوء استفاده افراد از کاربر مدارک لازم را  جهت احراز هویت در خواست کند.</p>\r\n\r\n<p>• کاربرانی که از ادامه فعالیت در سایت منع میشوند حق ایجاد حساب کاربری جدید ندارند . در صورتیکه سایت متوجه این موضوع شود که کاربری که از ادامه فعالیت منع گردیده بود مجدد در سایت ثبت نام نموده است همه مبالغ و جوایز کاربر و حساب کاربری او مسدود میشود.</p>\r\n\r\n<p>• حساب کاربری کاربر باید با اطلاعات صحیح ثبت شده باشد . نام و نام خانوادگی صحیح. حساب کاربری دیگر نباید از یک محل (آی پی کامپیوتر) یا هر مکانی که کامپیوتر و اینترنت بصورت اشتراکی دارد ایجاد گردد و یا اداره گردد. همچنین حساب کاربری دیگری نباید توسط افراد دیگر خانواده و یا هم خانه ای ایجاد گردد. سایت می تواند حساب کاربری هر کاربری که درصدد فریب دادن سایت و تقلب در سایت  از طریق ایجاد حسابهای کاربری مختلف و شرکت در مسابقات باشد را مسدود نماید و مبالغ حساب وی را بلوکه نماید. بدیهی است تشخیص این موضوع با سایت میباشد بنابراین پیشنهاد میگردد برای شرکت در مسابقات تکی و ترکیبی، سیستیم و آی پی که هر کاربر برای ورود به حساب کاربری خود استفاده میکند مختص خود او باشد و نام کاربری دیگری برای ورود به سایت از این سیستم و آی پی استفاده نکند. به بیان ساده استفاده دو یا چند نام کاربری از یک سیستم و آی پی تخلف میباشد ولی استفاده یک نام کاربری از دو یا چند سیستم و آی پی مجاز است. پیشنهاد میشود برای ورود به سایت حداقل یکبار از آی پی ایران استفاده کنید زیرا در مواردی که سایت به یک حساب شک میکند آی پی ایران را ملاک قرار میدهد و کاربرانی که از یک آی پی ایران استفاده کرده باشند متخلف شناخته میشوند. همچنین در مواردی که سایت به چند حسابی که در مسابقات تکی و ترکیبی شرکت کرده اند، شک کند میتواند از کاربر درخواست فایل اسکن شده کارت ملی و شناسنامه را نماید که لازم است کاربر این فایل را از طریف ایمیل ارسال نماید.لازم به ذکر است این قانون در مسابقات تکی و ترکیبی اجرا میشود. بنابراین تاکید میشود هر خانواده از یک حساب کاربری استفاده نمایند. ایجاد حساب کاربری برای سایر اعضای خانواده تخلف میباشد.</p>\r\n\r\n<p>• کاربر نمیتواند حساب کاربری خود را به شخص دیگری منتقل کند و تعهد مینماید که نام کاربری و رمز عبور خود را با رعایت مسایل امنیتی نزد خود محفوظ نگه میدارد. کاربر با مشخصات ثبت شده در هنگام ثبت نام در سایت تنها کسی است که اجازه مشارکت و فعالیت در سایت را دارد و تنها کسی است که مجاز میباشد تا جوایز را جمع آوری و دریافت کند.</p>\r\n\r\n<p> </p>\r\n\r\n<p>• اگر مشخص شود کاربر در حال تقلب در سایت از طریق استفاده از فرمولهای ریاضی برای ثبت بازیهای خود یا استفاده از روشهای کامپیوتری ، نرم افزاری یا هر روشی اتوماتیک دیگر برای فریب سایت و تقلب میباشد، و یا تیم فنی سایت تشخیص دهند که کاربر در حال سوءاستفاده از قسمت پیشبینی آنلاین سایت بصورت انفرادی یا گروهی با همکاری چند کاربر دیگر میباشد مجموعه matinbet میتواند حساب کاربر را مسدود نماید.</p>\r\n\r\n<p>• اگر کاربر به عمد حساب خود را شارژ نماید و سپس درخواست برگشت پول به حساب بانکی خود را داشته باشد بدون اینکه در بازی شرکت کند تنها به دلیل سوءاستفاده از نرخهای تبادل ارز سایت حساب کاربر مسدود می شود.</p>\r\n\r\n<p>• در صورتی که کاربر به هر نحوی سایت یا اعضای تیم پشتیبانی سایت را تهدید نماید،یا توهین کند بدون هیچ گونه بررسی حساب کاربر مسدود میشود. این شامل هر نوع تهدید و توهینی  میباشد.</p>\r\n\r\n<p>• مواردی که در بخش راهنمای مسابقات سایت نوشته شده است نیز به عنوان قانون سایت مورد استناد میباشند و در صورتی که  موردی در این صفحه ذکر نشده باشد و در صفحات راهنما درج شده باشد به آن بخش مراجعه میگردد.</p>\r\n\r\n<p>• نتایج اکثر بازیها بصورت اتوماتیک بعد از بازی ثبت میگردد . چنانچه نتیجه یک بازی توسط سایت ارائه دهنده سرویس دیرتر اعلام شد و کاربر به بازیهای مد نظر بعدی خود نرسید، ایرادی به سایت وارد نیست و کاربر حق اعتراض ندارد، کاربر باید به نحوی برنامه ریزی کند که مبلغ کافی برای همه بازیهای مد نظر خود داشته باشد که چنانچه احیانا تاخیری برای ثبت نتیجه ای بوجود آمد، مشکلی برای ثبت بازی بعدی خود نداشته باشد. نتایج پیش بینی های نیمه اول بعد از نیمه اول ثبت میشوند ولی ممکن است در برخی موارد همراه شرطهای نیمه دوم ثبت گردند که در این موارد، نیازی به ارسال پیام از سمت کاربر نیست و کاربر موظف است تا ثبت نتیجه بازی صبر کند.</p>\r\n\r\n<p>• طبق استانداردهای جهانی در تمامی مسابقات نتیجه بازی حتی بازیهای حذفی در فوتبال تنها طی ۹۰ دقیقه قانونی رسمی یا زمان توافق شده  ( مثلا زمان توافق شده  در بازیهای جوانان 80 دقیقه هست ) مورد محاسبه قرار می گیرد. این وقت قانونی علاوه بر 90 دقیقه شامل زمانهای تلف شده که ممکن است به خاطر مصدومیت بازیکن‌ها و توقفهای بازی باشد، می شود، اما شامل وقت اضافه و پنالتی‌های تعیین کننده صعود تیم‌ نمی‌شود، ، بجز مواردی که مشخص شده است مثل شرط \"کدام تیم به مرحله بعدی صعود میکند\" که در این حالت نتیجه کل بازی شامل بازی رفت بازی برگشت و وقتهای اضافی و پنالتی، در نظر گرفته میشود.  ولی اگر در تعریف هر آپشن زمان مطرح نشده باشد منظور همان وقت قانونی رسمی یا توافق شده خواهد بود به همراه وقتهای تلف شده و در صورت ادامه بازی در وقت اضافه و یا رسیدن آن به ضربات پنالتی، تنها نتیجه بازی در زمان ذکر شده در نظر گرفته میشود. در مورد شرطهای نیمه ها نیز به همین صورت وقت قانونی هر نیمه یا وقت توافق شده هر نیمه ملاک خواهد بود مثلا در بازیهای 90 دقیقه، هر نیمه 45 دقیقه به اضافه وقتهای تلف شده خواهد بود که ملاک برای محاسبه شرطهای نیمه ها میباشد. همچنین در شرطهای نیمه دوم ملاک فقط گلهای نیمه دوم میباشد. (منظور از زمان قانونی رسمی زمان بازی تا 90 دقیقه به اضافه وقت های تلف شده است  و منظور از زمان قانونی هر نیمه زمان بازی تا 45 دقیقه به اضافه وقتهای تلف شده است ( مثلا گلی که در دقیقه 1+45 یعنی دقیقه اول وقتهای تلف شده نیمه اول زده میشود جزو گلهای نیمه اول است و یا گلی که در دقیقه 2+90 یعنی دقیقه دوم وقتهای تلف شده نیمه دوم زده میشود جزو گلهای نیمه دوم و همچنین جزو گلهای وقت قانونی است)، حال ممکن است در برخی مسابقات این زمان با توافق تیمها کمتر باشد یا یک نیمه بازی برگزار کنند یا هر نیمه زمانی کمتر از 45 دقیقه داشته باشد،  که ملاک سایت این زمان توافق شده خواهد بود مگر در تعریف آپشن بطور مشخص زمان دیگری عنوان شده باشد، و در کل اطلاع از قوانین آپشنهای مختلف مسئولیت کاربر میباشد و اگر کاربری اطلاع کاملی از نحوه محاسبه یک آپشن ندارد نباید در آن شرکت کند.</p>\r\n\r\n<p>• سایت تمام تلاش خود را میکند تا تمامی اطلاعات و آمار و ارقام ارائه شده صحیح باشد، با این حال در صورتی که اشتباهی رخ داده باشد مسئولیت این اشتباه از آنجا که این موارد از یک سایت فید گرفته میشود با سایت نمی باشد.اشتباه از سوی سایت در مواردی که تنها جهت ارائه اطلاعات به کاربر میباشد مثل جدول لیگ خاص و نتایج رو در رو وامار بازی و موارد دیگر باعث نمیشود کاربر نسبت به سایت ادعایی داشته باشد.این اطلاعات برای راحتی کاربر میباشد.برای اطمینان بیشتر از این امار به سایت های مرجع رجوع کنید.</p>\r\n\r\n<p>• این مسئولیت کاربر میباشد که از صحت اطلاعات و جزئیات پیش بینی خود اطمینان حاصل کند. به محض ثبت پیش بینی و تایید آن توسط کاربر، این پیش بینی به هیچ عنوان قابل تغییر نخواهند بود و لغو نمیگردند.</p>\r\n\r\n<p>• universebet میتواند و این حق را دارد هر زمان یک بازی را با توجه به وضعیت آن از سایت بردارد یا لغو کند. به هر حال تمامی پیش بینی هایی که قبل از برداشتن آن بازی ثبت شده اند پابرجا خواهند بود بجز مواردی که سایت در این صفحه اعلام کرده است که در آن حالات همه شرطهای مرتبط با آن بازی  لغو خواهند شد.</p>\r\n\r\n<p>• universebet این حق را دارد تا یک بازی یا چند پیش بینی مرتبط با یک بازی را قبل از آغاز آن بازی بدون ارائه هیچ توضیحی به کاربر لغو کند .</p>\r\n\r\n<p>• چنانچه یک پیش بینی اشتباهی توسط سیستم بعد از بازی یا رویداد مشخص ثبت و پذیرفته شده باشد، آن پیش بینی لغو میگردد. تصمیم برای لغو کردن یا نکردن این پیش بینی با سایت میباشد و سایت این حق را دارد تا این پیش بینی را بدون ارائه توضیحات به کاربر لغو کند یا نکند و در موارد مشابه تصمیم گیریهای متفاوتی اتخاذ نماید.</p>\r\n\r\n<p>• ضرایب مسابقات سایت معمولا از سایتهای معتبر استخراج میگردد. چنانچه ضرایب مسابقه ای بصورت نادرست ثبت شده باشد، کاربر موظف است مورد را به سایت اطلاع دهد و سایت نیز در هر زمان این موضوع را متوجه شد، میتواند  بازی را لغو کند و مبالغ را به حساب کاربران عودت دهد. سایت این حق را دارد در این موارد که ضریب اشتباه ثبت شده باشد بازی را لغو کند . تصمیم در این خصوص با سایت میباشد، و ممکن است در موارد مشابه تصمیم گیری متفاوتی اتخاذ شود.</p>\r\n\r\n<p>• در مسابقات سایت بطور کلی در صورت انجام نشدن یا موکول شدن بازی به وقتی دیگر، آن بازی در صورتی محاسبه می گردد که تا ۱ ساعت بعد برگزار گردد.اگر بازی به هر دلیلی تا یک ساعت بعد برگزار نگردد، سایت میتواند بازی را لغو نماید و مبالغ را به حساب کاربران عودت دهد. تشخیص پابرجا ماندن یا لغو مسابقاتی که بیش از یک ساعت تاخیر دارند با سایت میباشد. برای هر ورزش نیز این قانون جداگانه در قوانین آن ذکر شده است که ممکن است تفاوتهای با این بند داشته باشد ولی معیار هر ورزش قانون همان ورزش خواهد بود که در سایت در قوانین همان ورزش ذکر شده است .</p>\r\n\r\n<p>• گاهی به دلایل مختلف مانند قطع برق، بارندگی و اغتشاش و یا ترک زمین توسط یکی از طرفین و موارد دیگر یک مسابقه نیمه کاره رها می شود. در این موارد درفوتبال و در مسابقات تکی و ترکیبی یا کمبو چنانچه ادامه بازی تا یک ساعت بعد انجام شد مسابقه پا برجا میماند ولی اگر بازی حتی اگر چند ثانیه باقی مانده باشد، بیش از یک ساعت بعد نیمه تمام رها شود سایت می تواند بازی را لغو و ضریب ان بازی را 1 محاسبه نماید. تشخیص پابرجا ماندن یا لغو مسابقاتی که بیش از یک ساعت نیمه تمام مانده اند با سایت میباشد. در پیش بینی قبل از مسابقه، پیش بینی هایی‌ که روی مواردی که قبل از نیمه کاره شدن بازی نتیجه آنها قطعاً مشخص شده باشند بسته شوند، به قوت خود باقی‌ خواهند ماند. مثلا در صورتی‌ که پیش بینی برنده نیمه اول باشد و بازی در اواسط نیمه دوم رها شود،پیش بینی های نیمه اول به قوت خود باقی‌ خواهند ماند. در مورد سایر ورزشها باید به راهنما و قانون همان ورزش مراجعه شود. توجه در پیش بینی زنده همانند پیش بینی پیش از مسابقه همه پیش بینی های نیمه اول در صورت لغو بازی در نیمه دوم پابرجا هستند.</p>\r\n\r\n<p>• در مسابقات سایت ملاک پایان بازی سوت داور و نتیجه بازی در زمین مسابقه است و چنانچه بعد از پایان مسابقه به دلایل مختلف مثل تبانی یا تخلف یک تیم، نتیجه از طرف مراجع تغییر کند، برای سایت ملاک نخواهد بود و همان نتیجه اولیه داخل زمین لحاظ خواهد شد.</p>\r\n\r\n<p>• در مسابقات ترکیبی یا کمبو سایت در صورت لغو یک یا چند مسابقه قانون نان رانر اجرا میشود و ضریب بازی مذکور از فرم کاربر حذف میشود و جایزه بر اساس ضریب جدید محاسبه میشود. توجه کنید یک فرم ترکیبی یا کمبو حتی اگر بجز یک بازی آن بقیه بازیها لغو شده باشد ، کل فرم مربوطه لغو نمیشود و کاربر باید همان یک بازی را صحیح حدس زده باشد که برنده شود. تنها در صورتی که همه بازیهای یک فرم ترکیبی یا کمبو لغو شد مبلغ فرم عودت داده می شود. همچنین کاربران موظف به رعایت حداقل و حداکثر مبلغ شرکت در مسابقات ترکیبی یا کمبو و حداکثر جایزه در این مسابقات میباشند. این ضرایب در صفحه شرکت در مسابقات ترکیبی یا کمبو قرار دارد و ممکن است با تصمیم سایت در روزهای مختلف تغییر نماید. در مسابقات ترکیبی یا کمبو فرم کاربر در صورتی برنده میباشد که تمامی انتخابهای خود را درست پیشبینی کرده باشد بنابراین جایزه به فرمهایی که همه پیش بینی ها صحیح باشد تعلق میگیرد مگر اینکه یک بازی لغو شود که در آنصورت همانند آنچه توضیح داده شد ضریب بازی مذکور1محاسبه میشود و کاربر می بایست مابقی بازیها را صحیح پیش بینی کرده باشد .همچنین در مواردی که سایت یک بازی را به اشتباه قرار داده باشد یا در ضرایب بازی اشتباه صورت گرفته باشد یا نام تیمها اشتباه باشد مانند حالتی که در بالا توضیح داده شد، سایت میتواند بازی مذکور را لغو شده در نظر بگیرد و ضرایب بر اساس باقیمانده انتخابهای کاربر محاسبه کند، ولی ممکن است تصمیم دیگری اتخاذ کند که قدرت تصمیم گیری در این خصوص با سایت میباشد.</p>\r\n\r\n<p>• اعلام ناآگاهی از قوانین سایت توسط کاربر برای سایت مستند نمیباشد و ثبت نام در سایت به منزله پذیرش قوانین و آگاهی از این قوانین است.</p>\r\n\r\n<p>• حداکثر ضریبی که برای مسابقات کمبو یا ترکیبی هم در مسابقات پیش از بازی هم در پیش بینی زنده، محاسبه میشود 100 میباشد و اگر ضریب فرم کاربر بالای 100 باشد در صورت برنده شده با همان ضریب 100 جایزه به وی تعلق میگیرد.</p>\r\n\r\n<p>• در کل بازیهای سایت بجز مسابقات گروهی هر کاربر حداکثر میتواند تا 10 برابر مجموع مبالغ واریزی خود جایزه دریافت کند. در صورتی که کاربر بیشتر از این مبلغ درخواست دهد تنها تا 10 برابر مبلغ واریز پرداخت میگردد و مابقی پرداخت نخواهد شد ولی به عنوان پرداخت شده در نظر گرفته میشود.</p>\r\n\r\n<p>• حداقل زمان واریز جایزه از لحظه تایید آن  24 ساعت میباشد ولی ممکن است در برخی شرایط این زمان محقق نشود و مدت زمان بیشتری نیاز باشد که کاربر طبق این توافقنامه میپذیرد در این موارد تا زمان واریز صبر نماید.</p>\r\n\r\n<p>• جایزه کاربرانی که به وسیله پروکسی یا نرم افزارهای تغییر آی پی اقدام به مخفی کردن آی پی خود میکنند تا زمان اطمینان یافتن سایت از اینکه این عمل کاربر به منظور گمراه کردن سایت نباشد، ممکن است به تعویق بیافتد و پرداخت نگردد.</p>\r\n\r\n<p>   پیش بینی مسئولانه</p>\r\n\r\n<p>• مسئولیت شرکت در مسابقات سایت و از دست رفتن احتمالی وجه کاربر با خود کاربر میباشد. با این حال در صفحه ای با عنوان پیش بینی مسئولانه تمامی مواردی که ممکن است باعث ایجاد مشکل برای کاربری که پیش بینی میکند بوجود آید توضیح داده شده است . کاربر موظف است این صفحه را مطالعه نماید و با آگاهی از همه جوانب آن در سایت شرکت کند. ضمنا سایت آگاهی دارد که پیش بینی ممکن است مشکلات جدی برای برخی کاربران ایجاد نماید بنابراین پیشنهاد میشود چنانچه در این خصوص مشکلی برای شما ایجاد شده مدتی از فعالیت در سایت دست بردارید و حساب خود را بطور موقت مسدود کنید . برای مسدود کردن موقت حساب خود از بخش تماس با پشتیبانی با سایت مکاتبه کنید تا حساب شما موقتا مسدود شود.</p>\r\n\r\n<p>   حذف حساب کاربری<br>\r\n </p>\r\n\r\n<p>برای حذف حساب کاربری باید از طریق ایمیلی که در سایت ثبت نام کرده اید یک ایمیل با محتوای مربوطه به آدرس ایمیل سایت ارسال کنید تا حساب شما مسدود شود. آدرس ایمیل سایت را از پشتیبانی سایت درخواست کنید تا برای شما ارسال شود .</p>\r\n\r\n<p> </p>\r\n\r\n<p>< موفق، شاد و پیروز باشیدمجموعه <span style=\"font-size: 20px;\">matinbet</span><span style=\"font-size: 20px;\"> </span>></p>\r\n																																													');
INSERT INTO `content_pages` (`id`, `name`, `slug`, `status`, `compiler`, `created_at`, `updated_at`, `tpl`, `short_description`, `description`) VALUES
(31, 'قوانین و راهنمای کازینو', 'casino_rules', 1, 'smarty', '2018-08-18 21:12:27', '2019-07-20 15:02:12', NULL, '<p>کازینو</p>\r\n', '																				<p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">تخته نرد:</span></p><p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\"> بازى دو نفره اى است كه در آن هر بازيكن ١٥ مهره سفيد يا ١٥ مهره سياه دارد زمين از ٢٤ خانه تشكيل شده است و بايد بر اساس اعداد روى تاس ها مهره ها را به حركت در آورد و در پايان بازيكنى كه بتواند مهره هاى خود را زودتر از زمين بازى خارج كند برنده است . جذابيت اين بازى در زدن و كشتن مهره هاى حريف يا و بستن خانه ها در حين بازى است تخته نرد بازى است كه در آن هم شانس و هم محاسبات شما در بازى دخالت دارد</span><br style=\"direction: rtl;\"></p><p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">ابتدا هر بازيكن يك تاس پرتاب مى كند هر بازيكنى كه عدد بيشترى بياورد بازى را آغاز مى كند</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">حركت مهره ها در بازى تخته در جهت عقربه هاى ساعت و يا خلاف جهت مى باشد كه در سايت ما خلاف عقربه هاى ساعت مى باشد</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">مهره ها با توجه به عدد تاس به خانه ى باز (خانه اى كه دو مهره يا تعداد بيشترى از مهره هاى حريف در آن نباشد) حركت مى كند</span></p><p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">تاس جفت : جفت معادل حركت ٤ تا از آن عدد مى باشد مثلا اگر تاس ٦ و ٦ بياوريد بازيكن داراى چهار \" شش \" براى حركت مى باشد</span></p><p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">زدن و خوردن :</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">خانه اشغال شده توسط يك مهره تك ناميده مى شود اگر حريف روى مهره تك بيايد آن مهره را مى زند و جاى آن قرار مى گيرد و مهره خارج قرار مى گيرد </span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">تا زمانى كه بازيكن يك يا چند مهره در خارج بازى دارد ، بايد نخست آن مهره ها را وارد بازى كند پس از آن كه مهره با توجه به عدد تاس وارد بازى شد اگر از تاسش چيزى باقى مانده باشد به بازى عادى خود ادامه مى دهد.</span></p><p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">خارج كردن:</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">زمانى كه تمام مهره ها در ناحيه خودى ( ٦ خانه سمت راست تخته) جمع كرديد نوبت خارج كردن مهره ها از بازى مى باشد به ازاى هر عدد تاس يك مهره از بازى خارج مى شود اگر در آن خانه هيچ مهره اى نبود بايد ديگر مهره ها را بازى كنيد</span></p><p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">داو دادن يا شرط دوبل:</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">داو دادن اختيارى است هر وقت هر كدام از دو بازيكن فكر كند كه برنده هست مى تواند از حريف بخواهد كه باخت را بپذيرد يا شرط دو برابر شود </span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">در طول بازى هر بازيكن كه فكر مى كند شايسته پيروزى است مى تواند داو دهد بعد از اينكه داو از سوى هر يك از بازيكن ها پيشنهاد شد حريف حق دارد كه آن را قبول يا رد كند اگر داو رد شود يعنى حريف شكست را قبول كرده است و بازى جديد آفثغاز مى شود ؛ ولى اگر داو را قبول كند بازى ادامه پيدا كرده و مبلغ دو برابر مى شود </span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">و تا زمانى كه بازيكنى كه داو را قبول كرده احساس كند اين بار او شايستگى پيروز شدن را دارد و بر روى داو حريف داو مى دهد.</span></p><p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\">سنگ کاغذ قیچیی:</p><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\">یک بازی دونفره است که توسط دست بازیکنان انجام می‌گیرد. دو بازیکن هر دو با هم شروع به شمردن تا سه می‌کنند. این شمارش لزوماً با شمردن اعداد نیست بلکه معمولاً با گفتن سه واژهٔ سنگ، کاغذ و قیچی انجام می‌پذیرد. در انتهای شمارش دست خود را که به حالت مشت بالا نگه داشته‌اند پایین آورده و به یکی از سه حالت مجاز درمی‌آورند. در نهایت بازیکن برنده بر اساس قوانینی که برتر هر یک از حالت‌ها بر حالت دیگر را معلوم می‌کنند،</article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\">مشخص می‌شود. در صورت همسان بودن حالت‌های دست این عمل تا پیروزی یکی بر دیگری ادامه پیدا می‌کند.<br style=\"direction: rtl;\"></article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\"></article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\">قوانین پیروزی</article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\"><br style=\"direction: rtl;\">سنگ قیچی را می‌شکند. (برنده سنگ)<br style=\"direction: rtl;\">قیچی کاغذ را می‌برد. (برنده قیچی)</article><p data-mce-style=\"text-align: right;\" style=\"font-family: IranSans, tahoma; direction: rtl; line-height: 27.2px; font-size: medium; text-align: right;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\"></span></p><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\">کاغذ سنگ را می‌پوشاند. (برنده کاغذ)</article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\"><br></article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\"> بازى رولت:</article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\"><br></article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\"> يك بازى مفرح در عين حال معروف ترين بازى كازينو در سراسر جهان مى باشد با بازى كردن رولت سايت بت ٣٦٥ ايرانى يك كازينوى واقعى را تجربه خواهيد كرد يكى از معروف ترين شرط هاى اين بازى انتخاب رنگ است كه ظرف مدت چند ثانيه و با داشتن شانس مى تواند پول شما را دوبرابر كند</article><article style=\"font-family: IranSans, tahoma; direction: rtl; font-size: medium; text-align: right;\"><div class=\"p15 text-content-page\" style=\"direction: rtl; padding: 15px; line-height: 27.2px;\"><div class=\"page-content light\" style=\"direction: rtl; width: 1229.2px; min-height: 600px; text-align: center;\"><div class=\"inline container\" style=\"width: 1229.2px; direction: rtl; display: inline-block;\"><div class=\"left static-content\" style=\"direction: rtl; float: right; width: calc(100% - 260px);\"><div class=\"page-area container inline form-container\" style=\"margin: 5px 0px; width: 969.2px; direction: rtl; display: inline-block; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-align: right;\"><div class=\"p15 text-content-page\" style=\"direction: rtl; padding: 15px; line-height: 27.2px;\"><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">سايت ما داراى دو نوع رولت مى باشد رولت قديمى و رولت سه بعدى</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">بازى رولت داراى حفره هاى شماره دار از ٠ تا ٣٦ در چرخه رولت است</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">براى بازى كردن در قسمت انتخاب ژتون،مبلغ مورد نظر خود را انتخاب كنيد پس از انتخاب ژتون روى ميز مورد نظر بر روى خانه يا شرط مورد نظر قرار دهيد و پس از اتمام شرط دكمه چرخش را بزنيد.</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">شرط ضريب برد</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">يك شماره             ٣٥ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">دو شماره             ١۷ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">سه شماره            ١١ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">چهار شماره            ٨ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">شش شماره            ٥ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">رديف                      ٢ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">١٢ تايى                 ٢ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">پايين ( ١ تا ١٨)      ١ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">بالا ( ١٩ تا ٣٦)      ١ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">زوج                        ١ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">فرد                        ١ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">قرمز                     ١ به ١</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">سياه                     ١ به ١</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">بلک جک(21):</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\">اين بازى جز محبوب ترين بازى هاى كازينو بوده و به نا ٢١ در بين ايرانيان رايج مى باشد.</p></div></div></div></div></div></div><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">در اين بازى كاربر با پخش كننده كارت يا ديلر بازى مى كند كاربر مى تواند به هر مبلغى كه مى خواهد شرط يا به اصطلاح بانك تعريف كند در صورت برنده شدن مبلغى معادل بانك از ديلر دريافت مى كند و در صورت باخت كل بانك را مى بازد</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">مجموع كارت هاى هركس به عدد ٢١ نزديكتر باشد برنده خواهد بود </span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">در بلك جك كارت هاى ٢ تا ١٠ بر مبناى اعداد مندرج بر روى كارت محاسبه مى شود به طور مثال ارزش ورق ٦ همان ٦ محاسبه مى شود </span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">كارت هاى تصوير ( K و J و Q ) ارزش ١٠ را دارند </span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">اما كارت فوق العاده اى كه در اين بازى وجود دارد كارت آس مى باشد كه اين كارت مى تواند هم با ارزش و هم با ارزش ١١ محاسبه شود</span><br style=\"direction: rtl;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">بالاترين دستى كه در اين بازى وجود دارد زمانى است كه يك آس و يك كارت تصوير كنار هم قرار بگيرند كه اصطلاحا \"بلك جك\" ناميده مى شود</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">در اين بازى يك سرى اصطلاحات به صورت بين المللى استفاده مى شود مانند :</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">HIT: زمانى كه كاربر تقاضاى كارت ديگرى از ديلر دارد</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">DOUBLE DOWN: يعنى مى خواهيد موجودى خود را در بانك دو برابر كنيد</span></p><p data-mce-style=\"text-align: right;\" style=\"direction: rtl; line-height: 27.2px;\"><span data-mce-style=\"font-family: \'book antiqua\', palatino, serif; font-size: 12pt;\" style=\"direction: rtl;\">SPLIT: اگر دو كارتى كه كاربر دريافت مى كند از يك جنس باشد مثل دو كارت شاه با به كار بردن اين اصطلاح مى تواند دو بانك مشابه و همزمان ايجاد كند و با دوكارتش جدا بازى كند</span></p></article>																		'),
(33, 'راهنمای خرید اعتبار و شارژ حساب', 'Deposit-Help', 1, 'none', '2018-08-18 21:21:31', '2019-07-21 09:46:58', 'CompetitionTables', '<p>پرداخت</p>\r\n', '																														<p>ضمن عرض خوش آمد گویی لازم به ذکر است حضور شما در این مجموعه  باعث خرسندی ماست و همراهی و اعتماد شما دوستان عزیز باعث افتخار و اعتبار ماست . افزایش حضور شما کاربران محترم تعهد این مجموعه را برای حراست از اطلاعات شخصی و موجودی حساب شما را بیشتر از قبل می کند و بدین منظور برای پیشگیری از سوء استفاده های ممکن از شما تقاضا داریم به توصیه های نوشته شده در قسمت قوانین راجدی گرفته و نهایت دقت را در واریز وجه ، درخواست برداشت ، حفاظت از نام کاربری و رمز عبور و همچنین درست وارد کردن مشخصات فردی مثل شماره همراه ، ایمیل ، نام و نام خانوادگی داشته باشین .<br>\r\n </p>\r\n\r\n<p>مجددا متذکر می شویم کلیه پیگیری ها با مشخصات فردی منطبق با کارت و حساب بانکی و همچنین شماره همراه صحیح و ایمیل شما می باشد .</p>\r\n\r\n<p><br>\r\nنکته مهم :<br>\r\n </p>\r\n\r\n<p>در قسمت های مختلف اشاره شده است که درخواست برداشت باید حتما با  کارتی باشد که با آن پرداخت انجام شده است و همچنین نام صاحب حساب با نام کاربری یکی باشد در غیر این صورت مجموعه یونیورس بت از واریز وجه خودداری میکند. این اقدام برای جلوگیری از سوء استفاده های ممکن از حساب کاربری و موجودی شما کاربران محترم می باشد و مجموعه یونیورس بت نهایت حساسیت و جدیت را در این موضوع دارد لطفا همکاری های لازم را داشته باشین .</p>\r\n\r\n<p>برای شرکت در پیش بینی مسابقات در سایت یونیورس بت احتیاج هست در ابتدا حساب خود را شارژ کنید برای این کار شما از سه روش می توانید اقدام کنید :</p>\r\n\r\n<p><br>\r\n1)    پرداخت کارت به کارت :<br>\r\n </p>\r\n\r\n<p>چنانچه مایلید پرداخت خود را از طریق کارت به کارت انجام دهید مراحل زیر را انجام دهید :</p>\r\n\r\n<p>1) برای مشاهده شماره کارت کنونی مجموعه یونیورس بت با ارسال تیکت به بخش پشتیبانی اطلاعات حساب و یا شماره کارت کنونی مجموعه یونیورس بت را دریافت کنید.</p>\r\n\r\n<p>برای دریافت شماره کارت اینجا را کلیک کنید : ارسال تیکت</p>\r\n\r\n<p>2) از طریق اینترنت بانک یا موبایل بانک کارتتون یا برنامه های انتقال وجه موجود مثل آپ یا 724 پرداخت خود را به شماره کارت کنونی سایت انجام دهید و شماره پیگیری پرداختتان را که عددی 5 یا 6 رقمی هست یادداشت کنید .</p>\r\n\r\n<p>چنانچه موبایل بانک یا اینترنت بانک ندارید یا فعال نیست اینجا را کلیک کنید .</p>\r\n\r\n<p>3) وارد گزینه شارژ حساب شوید بر روی گزینه انتخاب کنید کلیک کنید و گزینه کارت به کارت را انتخاب کنید. سپس اطلاعات پرداخت خود را که شامل مبلغ پرداخت شده ، 4 رقم آخر کارتی که با آن پرداخت انجام داده اید و شماره پیگیری تراکنش انجام شده ( همان عدد 5 یا 6 رقمی که یادداشت کردید ) را وارد کنید و بر روی گزینه پرداخت کلیک کنید .</p>\r\n\r\n<p>اطلاعات پرداخت شما فورا برای بخش مالی سایت ارسال خواهد شد و در کوتاهترین زمان تایید و حساب شما  شارژ می شود . </p>\r\n\r\n<p> </p>\r\n\r\n<p>2)    پرداخت از طریق درگاه مستقیم :</p>\r\n\r\n<p><br>\r\nشما می توانید با کلیک کردن بر روی گزینه شارژ حساب که در چند قسمت وجود دارد پس از انتخاب بخش پرداخت آنلاین شتاب و  وارد کردن مبلغ مورد نظرتان و تایید و کلیک بر روی آیتم پرداخت به درگاه مستقیم منتقل شوید و پرداخت خود را انجام دهید و حساب شما به صورت آنی شارژ می شود .<br>\r\nگزینه شارژ حساب را می توانید پس از ورود به سایت در بخش حساب من در قسمت بالای سایت ، در قسمت سمت راست پس از ورود به بخش حساب کاربری در منوی اصلی و شارژ حساب در قسمت بالای سایت مشاهده کنید .</p>\r\n\r\n<p> </p>\r\n\r\n<p>3)  پرداخت از طرق پرفکت مانی</p>\r\n\r\n<p>کاربر عزیز شما همچنین می توانید ازطریق درگاه پرفکت مانی به کیف پول سایت پرداخت انجام دهید و یا همچنین از طریق کارت شارژ یا ووچر پرفکت مانی حساب خود را شارژ نمایید . این روش مراحل ساده ای دارد و از طریق سایت های صرافی ایران انجام می شود . چنانچه احتیاج به راهنمایی و توضیحات مرحله به مرحله دارید می توانید از طریق <strong>راهنمای سایت</strong> یا از طریق ارسال تیکت به پشتیبانی اقدام فرمایید .</p>\r\n\r\n<p>کیف پول دلار پرفکت مانی سایت : </p>\r\n																											'),
(35, 'راهنمای طرح تشویقی و دعوت از دوستان', 'invite_friends_help', 1, 'none', '2018-08-18 21:23:41', '2019-07-21 09:32:42', NULL, '<p>2</p>\r\n', '																				<p dir=\"RTL\">طرح تشویقی سایت یکی از روشهای کسب درآمد برای کاربران هست و در این روش سایت بخشی از مبلغ تبلیغات خود و هزینه تبلیغات خود را مستقیما به کاربرانی که برای سایت تبلیغ میکنند پرداخت مینماید حتی اگر کاربر به سایت واریز نداشته باشد. هر مقدار کاربران زیر مجموعه شما بیشتر و فعالتر باشند درآمد شما بالاتر خواهد رفت .</p>\r\n\r\n<p dir=\"RTL\"> </p>\r\n\r\n<p dir=\"RTL\">به همین منظور کاربران میتوانند با استفاده از صفحه \"طرح تشویقی دعوت از دوستان\" در گزینه حساب من در بالای صفحه اصلی بعد از ورود و یا از گزینه طرح نمایندگی در کادر اصلی منو در صفخه اصلی و یا گزینه طرح نمایندگی در قسمت سمت راست حساب کاربری اقدام به  تهیه لینک اختصاصی ثبت نام و ارسال آن برای تبلیغات که در آن خود آنها به عنوان معرف میباشند اقدام نمایند. بنابراین اگر کسی روی این لینک کلیک نماید مستقیما به صفحه ثبت نام سایت ارجاع داده میشود که کاربر جدید را مستقیما زیر مجموعه کاربر معرفی کننده خواهد کرد.</p>\r\n\r\n<p dir=\"RTL\"> </p>\r\n\r\n<p dir=\"RTL\">نکته بسیار مهم  استفاده از آخرین آدرس سایت میباشد بنابراین هر زمان آدرس قبلی سایت فیلتر شد شما باید آخرین آدرس سایت که در کانال تلگرام یا از طریق ایمیل بدست آورده و در لینک تبلیغ خود تغییر دهید یا مجدد لینک جدید با آدرس جدید را به اشتراک بگذارید تا کاربرانی که با لینک شما قصد ثبت نام دارند با صفحه فیلتر مواجه نشوند .</p>\r\n\r\n<p dir=\"RTL\"> </p>\r\n\r\n<p dir=\"RTL\">توجه : سایت به مناسبتهای مختلف ممکن است درصد شارژ زیر مجموعه ها را برای کاربران جدیدی که شما جذب میکنید در یک مقطع زمانی بالاتر ببرد که در اطلاعیه های سایت اعلام خواهد شد. همچنین مجموعه یونیورس بت حق تغییر درصد کمیسیون و یا نحوه پرداخت پاداش را در آینده برای خود محفوظ نگه میدارد اما سیاست سایت وجود پاداش همیشگی برای دوستانی که برای سایت تبلیغ انجام میدهند و اقدام به جذب زیر مجموعه می کنند می باشد .</p>\r\n\r\n<p dir=\"RTL\"> </p>\r\n\r\n<p dir=\"RTL\">درحال حاظر درصد تعلق گرفته به معرف 35% می باشد و نکته ای که ما را متمایز میکند این درصد فقط از باخت های زیرمجموعه شما میباشد و بابت برد زیر مجموعه شما مبلغی از شما کسر نمی شود این بدین معنی هست که شما فقط و فقط در پیش بینی هایی که منجر به سود سایت می شود با ما شریک هستید و هیچ ضرری ممکن نیست متوجه شما شود یا از سود شما کسر شود . همچنین نکته مورد توجه دیگر این است که سود شما به صورت آنی به موجودی حساب شما اضافه می شود و شما میتوانید آن را برداشت کنید یا در مسابقات شرکت کنید .</p>\r\n\r\n<p dir=\"RTL\"> </p>\r\n\r\n<p dir=\"RTL\">< موفق، شاد و پیروز باشید ></p>\r\n																		'),
(36, 'راهنمای درخواست برداشت', 'cashout_help', 1, 'none', '2018-08-18 21:24:56', '2020-01-08 11:52:42', NULL, '<p>راهنما</p>\r\n', '																														<p>کاربران عزیز حضور شما در این مجموعه  باعث خرسندی ماست و همراهی و اعتماد شما دوستان عزیز باعث افتخار و اعتبار ماست .</p>\r\n\r\n<p>افزایش حضور شما کاربران محترم تعهد این مجموعه را برای حراست از اطلاعات شخصی و موجودی حساب شما را بیشتر از قبل می کند و بدین منظور برای پیشگیری از سوء استفاده های ممکن از شما تقاضا داریم به توصیه های نوشته شده در قسمت قوانین راجدی گرفته و نهایت دقت را در واریز وجه ، درخواست برداشت ، حفاظت از نام کاربری و رمز عبور و همچنین درست وارد کردن مشخصات فردی مثل شماره همراه ، ایمیل ، نام و نام خانوادگی داشته باشین .<br>\r\n </p>\r\n\r\n<p>مجددا متذکر می شویم کلیه پیگیری ها با مشخصات فردی منطبق با کارت و حساب بانکی و همچنین شماره همراه صحیح و ایمیل شما می باشد .</p>\r\n\r\n<p><br>\r\nنکته مهم :<br>\r\n </p>\r\n\r\n<p>در قسمت های مختلف اشاره شده است که درخواست برداشت باید حتما با  کارتی باشد که با آن پرداخت انجام شده است و همچنین نام صاحب حساب با نام کاربری یکی باشد در غیر این صورت مجموعه  متین بت از واریز وجه خودداری میکند. این اقدام برای جلوگیری از سوء استفاده های ممکن از حساب کاربری و موجودی شما کاربران محترم می باشد و مجموعه متین بت نهایت حساسیت و جدیت را در این موضوع دارد لطفا همکاری های لازم را داشته باشین .</p>\r\n\r\n<p>برای درخواست برداشت و نقد کردن موجودی حسابتان همانطور که در بخش قوانین اعلام شد یادآوری می کنیم حداقل برداشت مبلغ 50000 تومان و حداکثر روزی یک درخواست می توانید داشته باشید .</p>\r\n\r\n<p>برای ثبت درخواست می توانید از گزینه درخواست برداشت که در قسمت های مختلف قرار داده شده است اقدام فرمایید .</p>\r\n\r\n<p>این گزینه در قسمت حساب من در بالای صفحه و در حساب کاربری در منوی اصلی قرار دارد .</p>\r\n\r\n<p>در این قسمت شما باید اطلاعات صحیح خود را که شامل نام صاحب حساب ( که باید با نام کاربر یکی باشد )  ، مبلغ مورد نطرتان برای درخواست ، نام بانک کارتتان ، شماره حساب ، شماره کارت و شماره شبا وارد فرمایید و بر روی درخواست کلیک کنید ( این اطلاعات باید با اطلاعات پرداختتان یکی باشد )</p>\r\n\r\n<p>درخواست شما در کوتاه ترین زمان تایید و پرداخت می شود .</p>\r\n\r\n<p>با تشکر از همراهی شما</p>\r\n\r\n<p>گروه متین بت</p>\r\n																											'),
(37, 'راهنمای شارژ حساب از طریق پرفکت مانی', 'Deposit-help-perfect', 1, 'none', '2018-08-18 21:25:57', '2019-07-21 10:09:54', NULL, '<p>راهنما</p>\r\n', '																				<p dir=\"RTL\">پرفکت مانی یک حساب اینترنتی جهانی و یک بانک اینترنتی است. این بانک دارای زبان فارسی است نیز هست و کار با آن بسیار آسان است. این بانک دارای سه نوع حساب طلا و دلار و یورو است. که در اینجا حساب دلار  مورد استفاده ی ما است.  توجه بفرمایید در روش پرفکت مانی دو روش برای شارژ وجود دارد استفاده از حساب مستقیم و استفاده از ووچر های پرفکت مانی . شما در روش استفاده از ووچر نیازی به حساب پرفکت مانی ندارید . بنابراین ما  به راهنمایی پرداخت از طریق ووچر پرفکت مانی که که ساده ترین نوع پرداخت هست می پردازیم .</p>\r\n\r\n<p dir=\"RTL\">  مراحل پرداخت از طریق ووچر پرفکت مانی بسیار ساده هست . که ما به به توضیح آن میپردازیم .</p>\r\n\r\n<p dir=\"RTL\">به طور کلی شما باید از طریق سایت های صرافی که وجود دارند معادل با همان مبلغ ریالی که میخواهید در سایت شارژ کنید اقدام به خرید ووچر پرفکت مانی نمایید که ما راهنمایی های مربوط به عضویت و خرید از 4 سایت صرافی را در پایین قرار داده ایم این مراحل بسیار ساده هست و پیشنهاد ما این هست که حتما مطالعه فرمایید و به سادگی آن پی ببرید .</p>\r\n\r\n<p dir=\"RTL\">ووچر پرفکت مانی چیست ؟</p>\r\n\r\n<p>ووچر پرفکت مانی مثل کارت شارژ هست که داری یک شماره ووچر و رمز ووجر می باشد که معادل با همان مبلغ ریالی که از طریق کارت شتابی خودتان در درگاه صرافی ها پرداخت میکنید دریافت میکنید . این شماره و رمز معمولا بعد از خرید از طریق صرافی به ایمیل شما ارسال می شود و فقط کافیست که این شماره و رمز را از طریق تیکت به پشتیبانی سایت اعلام فرمایید تا حساب شما معادل با همان مبلغ ریالی که پرداخت کرده اید شارژ شود و از امکانات و محیط سایت لذت ببرید .</p>\r\n\r\n<p>دقت کنید خرید از کلیه صرافی های مورد تایید احتیاج به احراز هویت هست و این احراز صرفا فقط به علت جلوگیری از دزدی های اینترنتی که برای پول شویی با کارت های دزدی انجام میشود میباشد و فقط در فایل صرافی ها بایگانی می شود و به کسی داده نمی شود . در صورت درخواست اطلاعات بیشتر لطفا به بخش پشتیبانی سایت تیکت ارسال فرمایید.</p>\r\n\r\n<p>همچنین شما می توانید از طریق صرافی های مختلف اقدام به پرداخت به کیف پول پرفکت مانی مجموعه universebet اقدام به شارژ حساب خود کنید .</p>\r\n\r\n<p><br></p>\r\n																		'),
(38, 'پیش بینی مسئولانه', 'Responsible-betting', 1, 'none', '2018-08-18 21:35:45', '2019-07-18 17:06:34', NULL, '<p>پیش بینی مسئولانه</p>\r\n', '										<p>از زمان آغاز به کار این مجموعه همواره هدف گروه ارائه بهترین خدمات سرگرمی  با رویکرد بیشترین هیجان، بصورت آنلاین به کاربران میباشد. به همین منظور تلاش در جهت ایجاد بهترین محیط از نظر گرافیکی و همچنین قابل اعتماد بودن، یکی از اهداف همیشگی مجموعه میباشد. علاوه بر این، به عنوان بخشی از تعهد خود به منظور تبدیل شدن به یک وبسایت قابل اعتماد، عادلانه، امن و صادق، این مجموعه متعهد به پیش بینی مسئولانه میباشد.این تعهد از طریق جلوگیری از حضور افراد زیر سن قانونی و افزایش آگاهی کاربران از اثرات منفی ای که میتواند از لذت بخش بودن بازیها برای کاربر جلوگیری کند و ارائه راهکارهایی برای کسانی که دچار این مشکلات شده اند، میباشد. از کل کاربران سایت در حدود 2 درصد افراد دچار این مشکلات میگردند که وظیفه ی حرفه ای وبسایت میباشد که این خطر را به همه کاربران سایت هشدار دهد که ممکن است جزو این 2 درصد باشند یا در آینده جزو این گروه شوند.<br>\r\n <br>\r\nحفاظت از کودکان :<br>\r\n </p>\r\n\r\n<p>قوانین بین المللی دسترسی کودکان و افراد زیر 18 سال را به سایتهای پیش بینی آنلاین ممنوع کرده است. به همین منظور مجموعه نیز تمام تلاش خود را از طریق هرگونه پروسه شناسایی و تایید کاربری مثل دریافت مدارک مورد نیاز را برای جلوگیری از حضور افراد زیر سن قانونی در سایت می نماید. اگر شما نیز کسی را می شناسید که زیر سن قانونی است و در وبسایت ما ثبت نام کرده بلافاصله از طریق تماس با پشتیبانی سایت به ما اطلاع دهید .<br>\r\nبه شدت به والدین توصیه میگردد به منظور محدود کردن دسترسی کودکان و افراد زیر سن قانونی به محتویات وبسایت های پیش بینی آنلاین از نرم افزارهای کنترل والدین استفاده نمایند و دسترسی به صفحات را با ایجاد رمز عبور محدود نمایند.<br>\r\n <br>\r\nتاثیرات :</p>\r\n\r\n<p>برای بازی با پول واقعی شما باید در یک وضعیت متعادل فیزیکی و روحی باشید تا بتوانید در شرایط مختلف عکس العمل متناسب داشته باشید. بازی کردن در هنگامی که تحت تاثیر الکل و یا داروهای روان گردان یا استفاده از سایر موارد مشابه که بر ذهن شما تاثیر میگذارد بسیار خطرناک است . بطور مثال کاربری که تحت تاثیر این موارد هست ممکن است ریسک بزرگی بکند که بسیار غیر منطقی باشد که باعث باخت بزرگی شود و یا ممکن است سبب شود کاربر به جای تفریح و لذت بردن تبدیل به یک قمارباز گردد.<br>\r\nاگر شما سابقه اعتیاد به الکل یا مواد مخدر در گذشته را دارید پیشنهاد میکنیم به هیچ عنوان برای پول واقعی در وبسایت بازی نکنید چون ممکن است صدمات جبران ناپذیری برای شما و اطرافیانتان داشته باشد.<br>\r\nفشارهای خارجی نیز ممکن است ماهیت لذت بخش بودن بازی را از بین برده، به عنوان مثال بازی کردن تحت تاثیر یک گروه مجازی در شبکه های اجتماعی به منظور ثابت کردن خود یا جلب توجه دیگران. بسیاری از این فشارها میتواند اثرات مخرب کوتاه مدت و یا بلند مدت بر شما داشته باشد. بنابراین حتی الامکان برای دیگران و تحت تاثیر و فشار دیگران بازی نکنید و به صحبتهای دیگران توجه نکنید.<br>\r\nبازی کردن یک انتخاب شخصی است و انتخاب آن باید بر اساس هیجان و لذت بردن باشد همانند وقتی شما به شهر بازی میروید یا به سینما میروید در حالی که خدماتی که از این قبیل مراکز تفریحی اخذ میکنید تنها هیجان است و کالایی بدست نمیاورید، بنابراین تحت هیچ شرایطی نباید بگذارید حس هیجان و لذت بردن شما تحت تاثیر سایر موارد مثل فشارهای خارجی قرار بگیرد. و در انتها کسی جز شما مسئول کار خود نمیباشد، چون این انتخاب شخصی شما بوده است، پس بهتر است با مسئولیت عمل کنید و همه این موارد را در نظر بگیرید چون در انتها کسی در این انتخاب شخصی شما جز خود شما مقصر نیست. حتی زمانی که در حال بدست اوردن مبالغ زیادی هستید و تعداد بردهای بسیاری کسب کرده اید به این نکته توجه کنید که این موضوع دو طرفه میباشد و ممکن است در یک بازه زمانی همه چیز برعکس شود.<br>\r\n <br>\r\nمسئولیت کاربران :<br>\r\n </p>\r\n\r\n<p>4یوبت با ارائه و ترویج بازی مسئولانه امیدوار است، کاربران نیز بصورت مسئولانه رفتار نمایند.<br>\r\nاولویتهای خود را تعریف کنید: زمان و پولی که شما در بازیها صرف میکنید هرگز نباید بیشتر از سایر هزینه ها و زمانهای مورد نیاز برای مسئولیتها و تعهدات حرفه ای شما در کار و زندگی باشد و هرگز نباید با مسئولیتهای شما در قبال خانواده تداخل داشته باشد. تاثیر بر محیط کار شما، خانواده شما، یا تاثیر بر مسئولیت شما در قبال پدر و مادر از جمله مواردی هستند که باید به دقت از آنها اجتناب کرد. همچنین آسیب رساندن به خود شما به علت نداشتن یک رژیم غذایی مناسب ، کم خوابی یا ورزش نکردن از جمله تاثیرات منفی دیگری است که باید از آنها اجتناب کرد.<br>\r\nشما باید بدانید چگونه برای خود اولویت تعیین کنید و چگونه یک تعادل مناسب بین وضعیت فیزیکی بدن خود، احساسات و روابط با دیگران ، برقرار کنید، این موضوع از برنده شدن شما مهمتر است. بنابراین مسئولیت خود را هیچگاه در قبال این موارد فراموش نکنید و بدن و احساسات و روابط خود را فدای بازی کردن نکنید. اولویتهای شما باید خانواده و حفاظت از آنها باشد در نهایت شما باید به فکر هیجان یا تفریح خود باشید بنابراین فدا کردن هر یک از این موارد برای بازی کردن نشان میدهد شما اصل بازی کردن که همان هیجان هست را فراموش کرده اید و اسیر قمار شده اید، بنابراین سریعا فعالیت خود را متوقف کنید و وبسایت را با نرم افزارهایی مثل آنتی ویروس ها از دسترس خود خارج کنید. و در انتها باز هم تاکید میشود این مسئولیت و انتخاب شخصی شما برای بازی کردن بوده و ما اطلاعات لازم در خصوص عواقب اینکار را به شما اعلام میکنیم، و حتی در هنگام ثبت نام از شما تقاضا میکنیم این صفحه را مطالعه کنید که مشکلی در آینده برای شما پیش نیاید.<br>\r\nنکته مهم و ضروری که باید اعلام گردد جلب توجه کاربران محترم به منطق و مفهوم وبسایت میباشد. تعدادی از کاربران بازنده میشوند و تعدادی برنده میشوند در هر مقطع زمانی ممکن است کاربر برنده باشد یا بازنده باشد و این استراتژی کاربر میباشد که بردهای خود را بیشتر از باختهای خود نماید که در مجموع برنده باشد، ولی متاسفانه 5 درصد کسانی که بازنده میشوند متوجه این منطق نیستند یا در بازه زمانی کوتاهی که در وضعیت باخت بوده اند به شرایط خود نگاه نمیکنند و متاسفانه دو مورد مهم و دو خصوصیت مهم در آنها وجود ندارد ، یک مسئولیت پذیری و دوم ظرفیت ، بنابراین خواهش میکنیم اگر موارد بالا را در خود نمیبینید همین الان از سایت خارج شوید، چون سایت یا کسی شما رو مجبور به شرکت در مسابقات نکرده است، از طرف دیگر شما از قوانین هر کشوری که زندگی میکنید با خبر هستید و وبسایت تابع قانون کشور خاصی نیست و فقط زبان وبسایت فارسی میباشد، برای وبسایت قوانین و مقررات خود وبسایت اهمیت دارد که از کاربر در هنگام ثبت نام تعهد میگیرد که به آنها پایبند باشد، بنابراین توجه کنید اگر احیانا وارد این درصد کوچک از کاربران شدید طبق قوانین سایت هرگونه تهدید یا هرگونه الفاظ ناشایست یا هر متنی که بیانگر درخواست واریز مبلغ باشد منجر به مسدود شدن حساب کاربر میشود، ضمنا این موارد هیچگاه به دست مدیریت سایت یا پرسنل ارشد هم نخواهد رسید چون سیستم پیامرسانی سایت به نحوی است که کارمندان سایت با مشاهده این موارد پیام را حذف کرده و کاربر را مسدود میکنند.<br>\r\nمحدودیتهای خود را بشناسید: این مسئولیت فردی کاربر هست که از محدودیتهای زمان و هزینه خود برای شرکت در مسابقات و بازی کردن در سایت آگاه باشد، به این معنی که از صرف کردن بیش از اندازه زمان و هزینه خود که باعث میشود جنبه های هیجانی و تفریحی بازی کردن از بین برود، اجتناب کند. جنبه مالی قضیه بسیار مهم تر است و متاسفانه بسیاری از کاربران که این محدودیتها را شناسایی نمیکنند، بدهیهای بسیاری برای خود ایجاد میکنند. این بسیار مهم است که شما هردو قسمت شناسایی محدودیتها و رعایت آنها را در نحوه بازی کردن خود اعمال نمایید. هرگز از مبالغی که برای هزینه های اساسی خود مثل اجاره خانه یا فعالیتهای کلیدی خانواده نیاز است برای شرکت در بازیهای سایت استفاده ننمایید. هرگز برای شرکت در مسابقات سایت قرض نکنید، تنها از مبالغی که برای تفریح هفتگی یا ماهانه خود در نظر گرفته اید و این تفریحات فقط مختص خود شما هست نه خانواده، برای شرکت در مسابقات سایت استفاده کنید. این مساله بسیار مهمی میباشد.</p>\r\n\r\n<p>پیشگیری :<br>\r\n </p>\r\n\r\n<p>مجموعه آگاه است برخی از کاربران محدودیتهای خود مثل پول و زمان را نادیده میگیرند و متاسفانه در وضعیت غیر مسئولانه گرفتار میشوند. از کل کاربرانی که در سایت فعالیت دارند حدود 2 درصد دچار این وضعیت یا باصطلاح قمار مشکل ساز میشوند که در حقیقت به معنی بازی غیر مسئولانه میباشد اما بازی غیر مسئولانه چیست؟<br>\r\nبازی غیر مسئولانه یا قمار مشکل ساز بازی کردنی است که به طور افراطی انجام شده و اثری منفی بر سایر جوانب زندگی فرد از قبیل سلامت جسمی و روحی، عملکرد کاری یا تحصیلی، امور مالی و یا روابط بین فردی می گذارد.<br>\r\nافرادی که مشکل قمار دارند معمولا سر پولی شرط بندی می کنند که در صورت باختن توانایی تأمین آن را ندارند، تمام حساب بانکی شان را خالی می کنند، برای بازی کردن پول قرض می کنند و یا کارهای دیگری که مغایر با ارزش های فردی آنهاست انجام می دهند.<br>\r\nعلیرقم این پیامدهای منفی، ممکن است انکار کنند که اصلا چنین مشکلی دارند و از خانواده، دوستان، کار و حتی مراقبت شخصی خود غافل شوند (مثلا ممکن است به درستی غذا نخورند و استراحت نکنند و به ظاهر خود اهمیت ندهند). بازی غیر مسئولانه می تواند بر هر فردی صرف نظر از سن، جنسیت، نژاد یا جایگاه اجتماعی او تأثیر بگذارد.<br>\r\nبرای کمک به این افراد ما چند نکته اساسی در اینجا ذکر میکنیم که به شناسایی این وضعیت به کاربران کمک میکند:</p>\r\n\r\n<p>•    مجموعه الگوهای خاصی در نحوه بازی کردن کاربران را بررسی میکند که با توجه به تجربه قبلی نشان میدهد کاربر در وضعیت غیر مسئولانه گرفتار شده است و به کاربر این وضعیت را اعلام میکند.<br>\r\n•    کاربران میتوانند درخواست ایجاد محدودیت در واریز به سایت داشته باشند و همچنین این حق کاربر است درخواست حذف اکانت یا لغو اشتراک در مجموعه را داشته باشد و وبسایت پس از دریافت این درخواست حساب کاربر را مسدود مینماید.<br>\r\n•    سقفهای تعیین شده توسط وبسایت برای مبلغ شرکت در مسابقه یا حداکثر جایزه به منظور جلوگیری از افراط کاربران در شرطبندی و یا ایجاد مشکل برای آنها میباشد.<br>\r\n <br>\r\nبرای کمک به کاربر برای آگاهی از وضعیت خود که آیا در وضعیت غیر مسئولانه قرار دارد یا خیر به سوالات زیر پاسخ دهد:</p>\r\n\r\n<p>•    آیا زمان شما در محل کار یا در هنگام مطالعه به فکر کردن به بازی در سایت میگذرد؟<br>\r\n•    آیا بازی کردن در سایت به روابط شما در خانواده و دوستان آسیب رسانده است ؟<br>\r\n•    ایا شما اولویت بندی هزینه های بازی در سایت را برتر از اولویت هزینه های اساسی زندگی و خانواده میبینید؟<br>\r\n•    بازی کردن در سایت برای سلامتی شما مشکل آفرین شده است؟ بطور مثال مشکلاتی از قبیل کم خوابی، غفلت از خود و نظافت شخصی خود، گوشه گیری، افسردگی، استرس، مشکلات رفتاری.<br>\r\n•    آیا شما بازی میکنید تا بدهی های خود را بپردازید یا کسری مالی خود را جبران کنید؟<br>\r\n•    آیا شما بیشتر از محدودیتیها مالی و زمانی که برای خود تنظیم کرده اید به بازی کردن میپردازید؟<br>\r\n•    آیا شما برای بازی کردن قرض میگیرید یا چیزی را میفروشید؟</p>\r\n\r\n<p>•    آیا شما برای بازی کردن اقدام به کارهای غیر اخلاقی و غیر قانونی میکنید ؟ مثلا بدون اطلاع همسر یا پدر و مادر خود از کارتهای آنها برداشت میکنید ؟</p>\r\n\r\n<p>اگر پاسخ شما به هر یک از سوالات بالا مثبت یا بلی بود به سرعت باید فعالیت خود را در سایت متوقف کنید و به منظور پیشگیری و حل مشکلات رفتاری خود با مرکزهای مشاوره تماس بگیرید.<br>\r\n <br>\r\nمجددا تاکید میکنیم هدف مجموعه ارائه بهترین و لذت بخش ترین خدمات سرگرمی  با رویکرد بیشترین هیجان، بصورت آنلاین در محیطی امن و قابل اعتماد به کاربران میباشد و همراهی مسئولانه و اعتماد شما عزیزان باعث افتخار و خرسندی ماست .</p>\r\n\r\n<p> < سلامت، شاد و پیروز باشید ></p>\r\n									'),
(41, 'در دست تعمیرات', 'Under_Construction', 1, 'smarty', NULL, '2019-07-21 00:38:02', NULL, NULL, '																				<h5 style=\"line-height: 2;\"><span style=\"font-weight: bold;\">پیج در حال بروزرسانی است، لطفا بعدا مراجعه فرمائید</span></h5><div><br></div>																		'),
(42, 'چطور بازی کنم ؟', 'crash-rules', 0, 'smarty', NULL, '2019-07-21 00:48:17', NULL, NULL, '<div>چطور بازی کنیم ؟</div><div>انفجار یه بازی کاملا ساده است</div><div>برای شروع این بازی، در ابتدا شما باید میزان مبلغ ورود به شرط را تعریف کنید</div><div>بعد از وارد کردن مبلغ در پنل تعریف شده (Amount) ، میتوانید رقمی را به عنوان خروج اتوماتیک مبلغ شرط در پنل مشخص شده (auto cash out ) به صورت اختیاری تعریف نمایید ( با توجه با مشکلات احتمالی سرعت اینترنت استفاده از این پنل شدیدا توصیه می شود ولی در عین حال اگر مایل به استفاده از این گزینه نیستید میتوانید مبلغ خروج اتوماتیک را به صورت نامحدود تعریف نمایید</div><div><br></div><div>وقتی که گزینه های ذکر شده را مشخص کردید روی دکمه (place bet ) کلیک می کنید و در انتظار شروع راند بعدی بازی خواهید ماند ، باشروع شدن دور بعدی گراف ضریب بازی به رنگ سبز درخواهد آمد ( این بدین معنی است که شما در جریان بازی هستید ) در این حالت دکمه place bet به cash out تبدیل شده است</div><div>حالا به نمودار افزاینده ضریب شرط که در حال افزایش است ( از 1X به سمت بالا )نگاه کنید</div><div>با افزایش ضریب به سمت بالا (تا 1000 برابرافزایش احتمالی) فشار دادن کلید cash out میتواند</div><div>مبلغ شرط شما رادر همان لحظه، در ضریب نمودار ضرب کند و مبلغ شما را چند برابر کند ولی در</div><div>نظرداشته باشید که اگر افزاینده نمودار قبل از cach out شما از حرکت بایستد و به حالت busted</div><div>در بیاید شما تمام مبلغ شرط را از دست خواهید دادو شکست خواهید خورد</div><div><br></div><div>برای مثال اگر شما با 1000 تومان وارد شرط بندی شوید اگر کلید cash out را در هنگامی که ضریب</div><div>نمودار روی 5 x است فشار دهید شما 5 هزار تومان خواهید داشت ولی اگر قبل از متوقف شدن</div><div>افزاینده نمودار cash out نکنید مبلغ شرط شما صفر خواهد بود</div><div>موفق باشید</div>									'),
(43, 'اثبات منصفانه بودن بازی', 'crash-fair', 1, 'none', NULL, '2019-07-21 00:51:14', NULL, NULL, '																																								<div><div>این بازی بر اساس یک الگوریتم ریاضی طراحی شده و کار می کند.</div></div><div><div><br></div><div>در هر نوبت سرور ما بصورت رندوم یک SHA256 Hash را تولید می کند. (مانند bdf37e491ec2c0e02c1d731460f247c21319772829af19f619ce882f76614d67)</div><div><br></div><div>این Hash ریز مبلغ را دارا می باشد.</div><div><br></div><div>زمانی که بازی شروع می شود، ما بلافاصله رمز عبور این Hash را با عنوان “MD5” به شما می دهیم. (مانند : eddb8cd3bfee6569eca07dec15631e87)</div><div><br></div><div>اگر حتی شما از مکانیزم MD5 کاملا بی اطلاع باشید، براحتی می توانید بصورت آنلاین مبدل های MD5 را در گوگل بیابید. MD5 یک الگوریتم کدگذاری شده ی غیر معکوس شونده ( غیر قابل جعل) است.</div><div><br></div><div>این MD5 Hash گواهی است بر آن که ما تغییری در ریز مبالغ هنگام شروع بازی نمی دهیم.</div><div><br></div><div>چگونگی محاسبه ی ریز مبلغ با SHA256 Hash :</div><div><br></div><div>گام اول:</div><div><br></div><div>ابتدا ما این SHA256 Hash را برای هر ۴ رقم تقسیم می کنیم. (بشکل :bdf3-7e49-1ec2-c0e0-2c1d-7314-60f2-47c2-1319-7728-29af-19f6-19ce-882f-7661-4d67)</div><div><br></div><div>هر کدام از این کدهای ۴ بخشی بر مبنای ۱۶ گان هستند، که ما این ۱۶ گان را به ۱۰گان(دهگان) تبدیل کرده و همه را با هم جمع می کنیم.</div><div><br></div><div>و سپس امتحان می کنیم که آیا این مبلغ بر ۵۰ بخش پذیر (قابل تقسیم) هست. (برای این مورد یا Hash خاص حاصل ۳۴۸.۲۷۹ می باشد)</div><div><br></div><div>اگر این رقم بر ۵۰ بخش پذیر بود بازی بروی 0.00 تنظیم می گردد.</div><div><br></div><div>این قالب بازی است. به این معنا که شرکت یکبار از ۵۰ بار برده است. امکان باخت شما هم ۱ از ۵۰ می باشد.</div><div><br></div><div>گام دوم :</div><div><br></div><div>اگر SHA256 Hash بر ۵۰ بخش پذیر نباشد سپس ما دوباره ریز مبلغ را محاسبه می کنیم.</div><div><br></div><div>ما ۱۳ رقم ابتدایی SHA256 Hash را برداشته(مانند: bdf37e491ec2c) و این رقم ۱۶ تایی را به ۱۰ تایی (براساس دهگان) تبدیل می کنیم. (برای این مورد یا Hash خاص 3341655894780972 می باشد). ما این را حاصل X می نامیم.</div><div><br></div><div>سپس ما Y را 4503599627370496 می نامیم. (این پنجاه و دومین توان بر ۲ می باشد).</div><div><br></div><div>فرمول محاسبه ی ریز مبلغ : </div><div>برای این مورد خاص</div><div>((100 * Y) - X) / (100*(Y-X))</div><div>برای مثال در این نمونه :</div><div>((100*4503599627370496) - 3341655894780972) / (100*(4503599627370496 -3341655894780972))</div><div>حاصل 3,8471596714 می باشد.</div><div>که ما اولین دو رقم بعد از کاما را محاسبه می کنیم ، که بر این اساس حاصل 3,84 است</div></div>																																																							');

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `short_tpl` varchar(100) NOT NULL,
  `full_tpl` varchar(100) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `list_tpl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_types`
--

INSERT INTO `content_types` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `short_tpl`, `full_tpl`, `parent_id`, `list_tpl`) VALUES
(11, 'صفحه اصلی', 'صفحه-اصلی', 1, '2015-09-28 07:37:35', '2015-09-28 07:37:35', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `content_type_content_field_types`
--

CREATE TABLE `content_type_content_field_types` (
  `content_type_id` int(10) UNSIGNED NOT NULL,
  `content_field_type_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `slug` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id` int(10) UNSIGNED NOT NULL,
  `extra_options` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `continent`
--

CREATE TABLE `continent` (
  `id` int(11) NOT NULL,
  `continent_id` int(2) NOT NULL,
  `continent_name_en` varchar(30) NOT NULL,
  `continent_ name_fa` varchar(30) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `continent`
--

INSERT INTO `continent` (`id`, `continent_id`, `continent_name_en`, `continent_ name_fa`) VALUES
(10, 1, 'Europe', 'اروپا'),
(11, 2, 'Asia', 'آسیا'),
(12, 3, 'Africa', 'آفریقا'),
(13, 4, 'Oceania', 'اقیانوسیه'),
(14, 6, 'North America', 'آمریکا شمالی'),
(15, 7, 'South America', 'آمریکا جنوبی');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `ip` varchar(16) COLLATE utf8_persian_ci NOT NULL,
  `refer` text COLLATE utf8_persian_ci DEFAULT NULL,
  `date` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `portalid` int(11) NOT NULL DEFAULT 0,
  `country` varchar(2) COLLATE utf8_persian_ci DEFAULT NULL,
  `os` varchar(64) COLLATE utf8_persian_ci DEFAULT NULL,
  `browser` varchar(64) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_id` int(10) NOT NULL,
  `country_name_en` varchar(50) NOT NULL,
  `country_name_fa` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `continent` varchar(30) NOT NULL,
  `sub_region` varchar(30) DEFAULT NULL,
  `world_region` varchar(30) DEFAULT NULL,
  `longitude` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `fifa` varchar(50) DEFAULT NULL,
  `flag` varchar(2000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_id`, `country_name_en`, `country_name_fa`, `continent`, `sub_region`, `world_region`, `longitude`, `latitude`, `fifa`, `flag`) VALUES
(63, 46, 'Sweden', NULL, 'Europe', 'Northern Europe', 'EMEA', '16.798059463500977', '62.67497253417969', 'SWE', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1600\" height=\"1000\" viewBox=\"0 0 16 10\"><path fill=\"#006aa7\" d=\"M0 0h16v10h-16z\"/><path fill=\"#fecc00\" d=\"M5 0h2v10h-2zM0 4h16v2h-16z\"/></svg>\n'),
(62, 38, 'Netherlands', NULL, 'Europe', 'Western Europe', 'EMEA', '5.5281572341918945', '52.34225845336914', 'NED', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"900\" height=\"600\" viewBox=\"0 0 9 6\"><path fill=\"#21468B\" d=\"M0 0h9v6h-9z\"/><path fill=\"#FFF\" d=\"M0 0h9v4h-9z\"/><path fill=\"#AE1C28\" d=\"M0 0h9v2h-9z\"/></svg>\n'),
(61, 26, 'Mali', NULL, 'Africa', 'Western Africa', 'EMEA', '-3.5273818969726562', '17.35776710510254', 'MLI', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"450\" height=\"300\"><path fill=\"#14b53a\" d=\"M0 0h150v300h-150z\"/><path fill=\"#fcd116\" d=\"M150 0h150v300h-150z\"/><path fill=\"#ce1126\" d=\"M300 0h150v300h-150z\"/></svg>\n'),
(60, 23, 'Côte d\'Ivoire', NULL, 'Africa', 'Western Africa', 'EMEA', '-5.552574634552002', '7.598755359649658', 'CIV', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"450\" height=\"300\"><path fill=\"#fff\" d=\"M0 0h450v300h-450z\"/><path fill=\"#f77f00\" d=\"M0 0h150v300h-150z\"/><path fill=\"#009e60\" d=\"M300 0h150v300h-150z\"/></svg>\n'),
(59, 17, 'France', NULL, 'Europe', 'Western Europe', 'EMEA', '2.3382623195648193', '46.63727951049805', 'FRA', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"900\" height=\"600\"><path fill=\"#ED2939\" d=\"M0 0h900v600h-900z\"/><path fill=\"#fff\" d=\"M0 0h600v600h-600z\"/><path fill=\"#002395\" d=\"M0 0h300v600h-300z\"/></svg>\n'),
(58, 11, 'Germany', NULL, 'Europe', 'Western Europe', 'EMEA', '10.382203102111816', '51.20246505737305', 'GER', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1000\" height=\"600\" viewBox=\"0 0 5 3\"><desc>Flag of Germany</desc><path d=\"M0 0h5v3h-5z\"/><path fill=\"#D00\" d=\"M0 1h5v2h-5z\"/><path fill=\"#FFCE00\" d=\"M0 2h5v1h-5z\"/></svg>\n'),
(57, 2, 'Poland', NULL, 'Europe', 'Eastern Europe', 'EMEA', '19.37775993347168', '52.147850036621094', 'POL', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1280\" height=\"800\" viewBox=\"0 0 16 10\"><path fill=\"#fff\" d=\"M0 0h16v10h-16z\"/><path fill=\"#dc143c\" d=\"M0 5h16v5h-16z\"/></svg>\n'),
(64, 62, 'Switzerland', NULL, 'Europe', 'Western Europe', 'EMEA', '8.222854614257812', '46.80379867553711', 'SUI', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1000\" height=\"1000\" viewBox=\"0 0 32 32\"><path fill=\"#f00\" d=\"M0 0h32v32h-32z\"/><path fill=\"#fff\" d=\"M6 13h20v6h-20zM13 6h6v20h-6z\"/></svg>\n'),
(65, 74, 'FYR Macedonia', NULL, 'Europe', 'Southern Europe', 'EMEA', '21.700895309448242', '41.60045623779297', 'MKD', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1400\" height=\"700\" viewBox=\"0 0 56 28\"><path fill=\"#d20000\" d=\"M0 0h56v28h-56z\"/><g fill=\"#ffe600\"><path d=\"M0 0h8.4l19.6 13.5 19.6-13.5h8.4l-56 28h8.4l19.6-13.5 19.6 13.5h8.4zm56 11.2v5.6l-56-5.6v5.6zm-30.8-11.2l2.8 12 2.8-12zm0 28l2.8-12 2.8 12z\"/><circle cx=\"28\" cy=\"14\" r=\"4.5\" stroke=\"#d20000\"/></g></svg>\n'),
(66, 80, 'Chile', NULL, 'Americas', 'South America', 'AMER', '-71.67467498779297', '-35.78622817993164', 'CHI', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"1500\" height=\"1000\" viewBox=\"-4 -4 24 16\"><path d=\"M20 12h-24v-16h24z\" fill=\"#d52b1e\"/><path d=\"M4 4h16v-8h-24z\" fill=\"#fff\"/><path d=\"M4 4h-8v-8h8z\" fill=\"#0039a6\"/><g id=\"c\"><g id=\"b\"><path d=\"M.618-1.902l-.618 1.902.951.309z\" fill=\"#fff\" id=\"a\"/><use xlink:href=\"#a\" transform=\"scale(-1 1)\"/></g><use xlink:href=\"#b\" transform=\"rotate(72)\"/></g><use xlink:href=\"#b\" transform=\"rotate(-72)\"/><use xlink:href=\"#c\" transform=\"rotate(144)\"/></svg>\n'),
(67, 86, 'Ukraine', NULL, 'Europe', 'Eastern Europe', 'EMEA', '31.47578239440918', '48.92656326293945', 'UKR', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1200\" height=\"800\"><path fill=\"#005BBB\" d=\"M0 0h1200v800h-1200z\"/><path fill=\"#FFD500\" d=\"M0 400h1200v400h-1200z\"/></svg>\n'),
(68, 98, 'Australia', NULL, 'Oceania', 'Australia and New Zealand', 'APAC', '134.50411987304688', '-25.585241317749023', 'AUS', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"1280\" height=\"640\" viewBox=\"0 0 30240 15120\"><defs><path id=\"a\" d=\"M0-9l1.736 5.396 5.301-2.008-3.137 4.721 4.875 2.893-5.647.491.778 5.615-3.905-4.109-3.905 4.109.778-5.615-5.647-.491 4.875-2.893-3.137-4.721 5.301 2.008 1.736-5.396z\"/><path id=\"b\" d=\"M0-9l2.351 5.764 6.208.455-4.755 4.017 1.486 6.045-5.29-3.281-5.29 3.281 1.486-6.045-4.755-4.017 6.208-.455 2.351-5.764z\"/></defs><path d=\"M0 0h30240v15120h-30240v-15120z\" fill=\"#00008b\"/><use transform=\"matrix(252 0 0 252 7560 11340)\" xlink:href=\"#a\" fill=\"#fff\"/><use transform=\"matrix(120 0 0 120 22680 12600)\" xlink:href=\"#a\" fill=\"#fff\"/><use transform=\"matrix(120 0 0 120 18900 6615)\" xlink:href=\"#a\" fill=\"#fff\"/><use transform=\"matrix(120 0 0 120 22680 2520)\" xlink:href=\"#a\" fill=\"#fff\"/><use transform=\"matrix(120 0 0 120 26040 5607)\" xlink:href=\"#a\" fill=\"#fff\"/><use transform=\"matrix(70 0 0 70 24192 8190)\" xlink:href=\"#b\" fill=\"#fff\"/><path d=\"M6300 0h2520v2520h6300v2520h-6300v2520h-2520v-2520h-6300v-2520h6300v-2520z\" fill=\"#fff\"/><path d=\"M0 0h1690.467l13429.533 6714.766v845.234h-1690.467l-13429.533-6714.766v-845.234z\" id=\"c\" fill=\"#fff\"/><use transform=\"matrix(-1 0 0 1 15120 0)\" xlink:href=\"#c\" fill=\"#fff\"/><path d=\"M6804 0h1512v3024h6804v1512h-6804v3024h-1512v-3024h-6804v-1512h6804v-3024z\" fill=\"#f00\"/><path d=\"M0 0l5040 2520h-1126.978l-3913.022-1956.511v-563.489zm15120 0h-1126.978l-5040 2520h1126.978l5040-2520z\" id=\"d\" fill=\"#f00\"/><use transform=\"matrix(-1 0 0 -1 15120 7560)\" xlink:href=\"#d\" fill=\"#f00\"/></svg>\n'),
(69, 119, 'Georgia', NULL, 'Asia', 'Western Asia', 'EMEA', '43.3713615', '42.3207845', 'GEO', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"900\" height=\"600\" viewBox=\"0 0 300 200\"><defs><g id=\"b\"><path id=\"a\" d=\"M-6.81-19.417a104 104 0 0 1 0 38.835 55 55 0 0 1 13.619 0 104 104 0 0 1 0-38.835 55 55 0 0 1-13.619 0z\"/><use xlink:href=\"#a\" transform=\"rotate(90)\"/></g></defs><path fill=\"#fff\" d=\"M0 0h300v200h-300z\"/><g fill=\"#e8112d\"><path d=\"M130 0v80h-130v40h130v80h40v-80h130v-40h-130v-80z\"/><use xlink:href=\"#b\" x=\"64.45\" y=\"39.45\"/><use xlink:href=\"#b\" x=\"235.55\" y=\"160.55\"/><use xlink:href=\"#b\" x=\"235.55\" y=\"39.45\"/><use xlink:href=\"#b\" x=\"64.45\" y=\"160.55\"/></g></svg>\n'),
(70, 125, 'Greece', NULL, 'Europe', 'Southern Europe', 'EMEA', '21.897409439086914', '39.68437194824219', 'GRE', '<svg width=\"600\" height=\"400\" viewBox=\"0 0 27 18\" xmlns=\"http://www.w3.org/2000/svg\"><desc>Flag of Greece</desc><path fill=\"#0d5eaf\" d=\"M0 0h27v18h-27z\"/><path stroke-width=\"2\" stroke=\"#fff\" d=\"M5 0v11m-5-6h10m0-2h17m-17 4h17m-27 4h27m-27 4h27\" fill=\"none\"/></svg>\n'),
(71, 143, 'Austria', NULL, 'Europe', 'Western Europe', 'EMEA', '14.14021110534668', '47.58843994140625', 'AUT', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"900\" height=\"600\"><path fill=\"#ed2939\" d=\"M0 0h900v600h-900z\"/><path fill=\"#fff\" d=\"M0 200h900v200h-900z\"/></svg>\n'),
(72, 146, 'South Africa', NULL, 'Africa', 'Southern Africa', 'EMEA', '25.06287956237793', '-29.046184539794922', 'RSA', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"900\" height=\"600\" viewBox=\"0 0 9 6\"><clipPath id=\"c\"><path d=\"M0 0l4.5 3-4.5 3\" id=\"b\"/></clipPath><clipPath id=\"a\"><path d=\"M0 0h9v6h-9z\"/></clipPath><g clip-path=\"url(#a)\"><path d=\"M0 0v6h9v-6z\" fill=\"#002395\"/><path d=\"M0 0v3h9v-3z\" fill=\"#de3831\"/><g stroke-width=\"2\" stroke=\"#fff\"><path d=\"M0 0l4.5 3-4.5 3m4.5-3h4.5\" id=\"d\"/><use xlink:href=\"#b\" stroke=\"#ffb612\" clip-path=\"url(#c)\"/></g><use xlink:href=\"#d\" stroke=\"#007a4d\" stroke-width=\"1.2\" fill=\"none\"/></g></svg>\n'),
(73, 155, 'Romania', NULL, 'Europe', 'Eastern Europe', 'EMEA', '25.005935668945312', '45.83774185180664', 'ROU', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"600\" height=\"400\" viewBox=\"0 0 3 2\"><path fill=\"#002B7F\" d=\"M0 0h1v2h-1z\"/><path fill=\"#FCD116\" d=\"M1 0h1v2h-1z\"/><path fill=\"#CE1126\" d=\"M2 0h1v2h-1z\"/></svg>\n'),
(74, 158, 'Uruguay', NULL, 'Americas', 'South America', 'AMER', '-56.055908203125', '-32.96965408325195', 'URU', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"900\" height=\"600\" viewBox=\"-5 -5 27 18\"><title>Flag of Uruguay</title><path fill=\"#fff\" d=\"M-5-5h27v18h-27z\"/><g fill=\"#0038a8\"><path d=\"M5-3h17v2h-17zM5 1h17v2h-17zM-5 5h27v2h-27zM-5 9h27v2h-27z\"/></g><g transform=\"scale(.11)\" fill=\"#fcd116\" stroke=\"#000\" stroke-width=\".6\" stroke-miterlimit=\"20\"><g id=\"c\"><g id=\"b\"><g id=\"a\"><path d=\"M-2.058 8.889l3.009 4.494c-12.366 8.949-4.816 14.241-13.58 17.105l3.734-16.854\"/><path d=\"M-4.21 10.163c-6.823 11.245-2.348 17.428-8.419 20.325\" fill=\"none\"/><path d=\"M0 0h6l-6 33-6-33h6v33\"/></g><use xlink:href=\"#a\" transform=\"rotate(45)\"/></g><use xlink:href=\"#b\" transform=\"rotate(90)\"/></g><use xlink:href=\"#c\" transform=\"rotate(180)\"/><circle r=\"11\"/></g><g transform=\"scale(.011)\"><g id=\"d\"><path d=\"M81-44c-7 8-11-6-36-6s-29 15-33 12 21-21 29-22 31 7 40 16m-29 9c7 6 1 19-6 19s-20-12-14-20M19-26c1-12 11-14 27-14s23 12 29 15c-7 0-13-10-29-10s-16 0-27 10m3 2c4-6 9 6 20 6s17-3 24-8-10 12-21 12-26-6-23-10M56-17c13-7 5-17 0-19 2 2 10 12 0 19m-56 60c6 0 8-2 16-2s27 11 38 7c-23 9-14 3-54 3h-5m63 6c-4-7-3-5-11-16 8 6 10 9 11 16m-58 10c25 0 21-5 54-19-24 3-29 11-54 11h-5m5-29c7 0 9-5 17-5s19 3 24 7c1 1-3-8-11-9s-5-14-14-16c0 4 3 3 4 9 0 5-9 5-11 0 2 8-4 8-9 8\"/></g><use xlink:href=\"#d\" transform=\"scale(-1 1)\"/><path d=\"M0 76c-5 0-18 3 0 3s5-3 0-3\"/></g></svg>\n'),
(75, 200, 'Senegal', NULL, 'Africa', 'Western Africa', 'EMEA', '-14.531643867492676', '14.36251163482666', 'SEN', '<svg version=\"1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"900\" height=\"600\"><path fill=\"#00853f\" d=\"M0 0h300v600h-300z\"/><path fill=\"#fdef42\" d=\"M300 0h300v600h-300z\"/><path fill=\"#e31b23\" d=\"M600 0h300v600h-300z\"/><g transform=\"translate(450 300)\" fill=\"#00853f\"><g id=\"b\"><path id=\"a\" d=\"M30.902-95.106l-30.902 95.106 47.553 15.451z\"/><use xlink:href=\"#a\" transform=\"scale(-1 1)\"/></g><use xlink:href=\"#b\" transform=\"rotate(72)\"/><use xlink:href=\"#b\" transform=\"rotate(144)\"/><use xlink:href=\"#b\" transform=\"rotate(216)\"/><use xlink:href=\"#b\" transform=\"rotate(288)\"/></g></svg>\n'),
(76, 212, 'Belarus', NULL, 'Europe', 'Eastern Europe', 'EMEA', '28.054094314575195', '53.54347229003906', 'BLR', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"900\" height=\"450\" viewBox=\"0 0 1098 549\"><title>Flag of Belarus</title><path fill=\"#C8313E\" d=\"M0 0h1098v549h-1098z\"/><path fill=\"#4AA657\" d=\"M0 366h1098v183h-1098z\"/><path fill=\"#FFF\" d=\"M0 0h122v549h-122z\"/><g id=\"b\"><g id=\"a\" fill=\"#C8313E\" fill-rule=\"evenodd\"><path d=\"M21.217 0h15.913v9h5.304v9h5.304v9h5.304v9h5.304v9h-5.304v9h-5.304v9h-5.304v9h-5.304v9h-5.304v9h-5.304v-9h-5.304v-9h-5.304v-9h-5.304v-9h-5.304v-9h-5.304v-9h5.304v-9h5.304v-9h5.304v-9h5.304zm5.304 18h5.304v9h5.304v9h5.304v9h-5.304v9h-5.304v9h-5.304v-9h-5.304v-9h-5.304v-9h5.304v-9h5.304zm0 18h5.304v9h-5.304zm-26.522-27h5.304v9h-5.304zm0 54h5.304v9h-5.304zm58.348-63h3.183v18h-3.183zm0 63h3.183v18h-3.183zm-47.739 18h5.304v9h5.304v9h5.304v9h-5.304v9h-5.304v9h-5.304v-9h-5.304v-9h-5.304v-9h5.304v-9h5.304zm0 18h5.304v9h-5.304zm31.826-18h5.304v9h5.304v9h5.304v9h-5.304v9h-5.304v9h-5.304v-9h-5.304v-9h-5.304v-9h5.304v-9h5.304zm0 18h5.304v9h-5.304zm-42.435 36h5.304v9h-5.304zm58.348-9h3.183v18h-3.183zM0 162h5.304v-9h5.304v-9h5.304v-9h5.304v-9h5.304v-9h5.304v9h5.304v9h5.304v9h5.304v9h5.304v9h5.304v9h3.183v36h-3.183v9h-5.304v9h-5.304v9h-5.304v9h-5.304v9h-5.304v23.4h-10.609v-5.4h-5.304v-9h-5.304v-9h-5.304v-9h-5.304v-27h5.304v9h5.304v9h5.304v9h5.304v-9h5.304v-9h5.304v-9h5.304v-9h5.304v-9h5.304v-9h-5.304v-9h-5.304v-9h-15.913v9h10.609v9h-5.304v9h-5.304v9h-5.304v-9h-5.304v-9h-5.304v-9h-5.304zm0 36h5.304v9h-5.304zm58.348 27h3.183v9h-3.183zm-10.609 18h5.304v9h5.304v9h3.183v14.4h-3.183v-5.4h-5.304v-9h-5.304zm-10.609 27h5.304v5.4h-5.304z\"/></g><use xlink:href=\"#a\" transform=\"translate(122) scale(-1 1)\"/></g><use xlink:href=\"#b\" transform=\"translate(0 549) scale(1 -1)\"/></svg>\n'),
(77, 224, 'Bulgaria', NULL, 'Europe', 'Eastern Europe', 'EMEA', '25.283733367919922', '42.7661018371582', 'BUL', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1000\" height=\"600\" viewBox=\"0 0 5 3\"><path fill=\"#fff\" d=\"M0 0h5v3h-5z\"/><path fill=\"#00966E\" d=\"M0 1h5v2h-5z\"/><path fill=\"#D62612\" d=\"M0 2h5v1h-5z\"/></svg>\n'),
(78, 227, 'Russia', NULL, 'Europe', 'Eastern Europe', 'EMEA', '103.75398254394531', '63.125186920166016', 'RUS', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 9 6\" width=\"900\" height=\"600\"><path fill=\"#fff\" d=\"M0 0h9v3h-9z\"/><path fill=\"#d52b1e\" d=\"M0 3h9v3h-9z\"/><path fill=\"#0039a6\" d=\"M0 2h9v2h-9z\"/></svg>\n'),
(79, 245, 'Czech Republic', NULL, 'Europe', 'Eastern Europe', 'EMEA', '15.331501007080078', '49.739105224609375', 'CZE', '<svg version=\"1\" xmlns=\"http://www.w3.org/2000/svg\" width=\"900\" height=\"600\"><path fill=\"#d7141a\" d=\"M0 0h900v600h-900z\"/><path fill=\"#fff\" d=\"M0 0h900v300h-900z\"/><path d=\"M450 300l-450-300v600z\" fill=\"#11457e\"/></svg>\n'),
(80, 251, 'Italy', NULL, 'Europe', 'Southern Europe', 'EMEA', '12.493823051452637', '42.7669792175293', 'ITA', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1500\" height=\"1000\" viewBox=\"0 0 3 2\"><path fill=\"#009246\" d=\"M0 0h1v2h-1z\"/><path fill=\"#fff\" d=\"M1 0h1v2h-1z\"/><path fill=\"#ce2b37\" d=\"M2 0h1v2h-1z\"/></svg>\n'),
(81, 275, 'Venezuela', NULL, 'Americas', 'South America', 'AMER', '-66.14541625976562', '7.665388584136963', 'VEN', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"900\" height=\"600\" viewBox=\"0 0 180 120\"><defs><g id=\"d\" transform=\"translate(0 -36)\"><g id=\"c\"><g id=\"b\"><path d=\"M1.545-4.755l-1.545 4.755 2.853.927z\" fill=\"#fff\" id=\"a\"/><use xlink:href=\"#a\" transform=\"scale(-1 1)\"/></g><use xlink:href=\"#b\" transform=\"rotate(72)\"/></g><use xlink:href=\"#b\" transform=\"rotate(-72)\"/><use xlink:href=\"#c\" transform=\"rotate(144)\"/></g></defs><path d=\"M0 0h180v120h-180z\" fill=\"#cf142b\"/><path d=\"M0 0h180v80h-180z\" fill=\"#00247d\"/><path d=\"M0 0h180v40h-180z\" fill=\"#fc0\"/><g transform=\"translate(90 84)\"><g id=\"f\"><g id=\"e\"><use xlink:href=\"#d\" transform=\"rotate(10)\"/><use xlink:href=\"#d\" transform=\"rotate(30)\"/></g><use xlink:href=\"#e\" transform=\"rotate(40)\"/></g><use xlink:href=\"#f\" transform=\"rotate(-80)\"/></g></svg>\n'),
(82, 311, 'New Caledonia', NULL, 'Oceania', 'Melanesia', 'APAC', '165.298583984375', '-21.31782341003418', 'NCL', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"900\" height=\"450\"><title>Flag of New Caledonia</title><path fill=\"#009543\" d=\"M0 0h900v450h-900z\"/><path fill=\"#ed4135\" d=\"M0 0h900v300h-900z\"/><path fill=\"#0035ad\" d=\"M0 0h900v150h-900z\"/><circle stroke=\"#000\" stroke-width=\"5\" fill=\"#fae600\" cx=\"300\" cy=\"225\" r=\"147.48\"/><path stroke=\"#000\" stroke-width=\"6\" d=\"M275 247h50m-50-37h50m-25-132v252\"/><path d=\"M240.62 360.419c60.191 24.58 116.608 1.51 116.608 1.51s-21.297-23.048-32.214-32.047c-10.653-8.778-41.991-8.431-52.685 0-8.924 7.038-34.52 32.97-31.709 30.537z\"/><ellipse cx=\"300\" cy=\"293\" rx=\"16.5\" ry=\"24\"/><ellipse cx=\"300\" cy=\"228.5\" rx=\"20\" ry=\"12.66\"/><ellipse cx=\"300\" cy=\"170\" rx=\"20\" ry=\"20\"/><path d=\"M324 95.5c-.006-.013 1.733 2.871-1.913 9.436-17.426 31.383-34.913 32.061-38.232 34.764-3.658 2.978-5.202 2.774-5.202 2.774.261-2.688.504-13.679.695-14.738 2.645-14.663 24.796-14.461 42.132-29.476 2.708-2.345 2.514-2.774 2.514-2.774z\"/><g id=\"a\"><path d=\"M265.5 163s3.914 11.23 4.5 22.5c.935 17.997 18.18 18.5 30 18.5v-10c-8.859 0-16.553-1.317-23-14.5-3.18-6.503-11.5-16.5-11.5-16.5zM265 308s6.296-7.765 13.662-25.975c3.843-9.5 12.95-15.025 21.338-15.025v-14c-19.028 0-28.15 7.055-29.113 17.363-1.977 21.178-5.887 37.637-5.887 37.637z\"/></g><use xlink:href=\"#a\" transform=\"translate(600) scale(-1 1)\"/></svg>\n'),
(83, 320, 'Denmark', NULL, 'Europe', 'Northern Europe', 'EMEA', '9.555907249450684', '56.10176086425781', 'DEN', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"370\" height=\"280\"><path fill=\"#c60c30\" d=\"M0 0h370v280h-370z\"/><path fill=\"#fff\" d=\"M120 0h40v280h-40zM0 120h370v40h-370z\"/></svg>\n'),
(84, 338, 'Peru', NULL, 'Americas', 'South America', 'AMER', '-74.422119140625', '-9.212532997131348', 'PER', '<svg width=\"900\" height=\"600\" xmlns=\"http://www.w3.org/2000/svg\"><path fill=\"#D91023\" d=\"M0 0h900v600h-900z\"/><path fill=\"#fff\" d=\"M300 0h300v600h-300z\"/></svg>\n'),
(85, 353, 'Colombia', NULL, 'Americas', 'South America', 'AMER', '-73.27796936035156', '3.9976072311401367', 'COL', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"900\" height=\"600\"><path fill=\"#fcd116\" d=\"M0 0h900v300h-900z\"/><path fill=\"#003893\" d=\"M0 300h900v150h-900z\"/><path fill=\"#ce1126\" d=\"M0 450h900v150h-900z\"/></svg>\n'),
(86, 401, 'Slovakia', NULL, 'Europe', 'Eastern Europe', 'EMEA', '19.48488998413086', '48.70748519897461', 'SVK', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"900\" height=\"600\" viewBox=\"0 0 9 6\"><title>Flag of Slovakia</title><path fill=\"#ee1c25\" d=\"M0 0h9v6h-9z\"/><path fill=\"#0b4ea2\" d=\"M0 0h9v4h-9z\"/><path fill=\"#fff\" d=\"M0 0h9v2h-9zM3.163 4.635c-.538-.259-1.307-.773-1.307-1.79s.049-1.48.049-1.48h2.516s.049.463.049 1.48-.769 1.531-1.307 1.79z\"/><path fill=\"#ee1c25\" d=\"M3.163 4.5c-.493-.238-1.199-.709-1.199-1.643 0-.933.045-1.357.045-1.357h2.31s.045.424.045 1.357-.706 1.405-1.199 1.643z\"/><path fill=\"#fff\" d=\"M3.268 2.613c.134.002.394.007.626-.07l-.006.18.006.18c-.213-.071-.476-.073-.626-.071v.515h-.211v-.515c-.151-.002-.413 0-.626.071l.006-.18-.006-.18c.232.078.493.072.626.07v-.324c-.122-.001-.297.005-.496.071l.006-.18-.006-.18c.198.066.373.072.495.071-.006-.205-.066-.463-.066-.463l.172.01.172-.01s-.06.258-.066.463c.122.001.297-.005.495-.071l-.006.18.006.18c-.198-.066-.374-.072-.496-.071v.324z\"/><path fill=\"#0b4ea2\" d=\"M3.163 3.291c-.248 0-.382.345-.382.345s-.074-.163-.277-.163c-.137 0-.238.122-.302.235.25.397.648.642.961.793.313-.151.711-.396.961-.793-.064-.113-.165-.235-.302-.235-.203 0-.277.163-.277.163s-.133-.345-.382-.345z\"/></svg>\n'),
(87, 404, 'Turkey', NULL, 'Asia', 'Western Asia', 'EMEA', '34.93033981323242', '39.05101013183594', 'TUR', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1200\" height=\"800\"><path fill=\"#E30A17\" d=\"M0 0h1200v800h-1200z\"/><circle cx=\"425\" cy=\"400\" r=\"200\" fill=\"#fff\"/><circle cx=\"475\" cy=\"400\" r=\"160\" fill=\"#E30A17\"/><path fill=\"#fff\" d=\"M583.334 400l180.901 58.779-111.804-153.885v190.212l111.804-153.885z\"/></svg>\n'),
(88, 455, 'Republic of Ireland', NULL, 'Europe', 'Northern Europe', 'EMEA', '-8.196102142333984', '53.1827278137207', 'IRL', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1200\" height=\"600\"><path fill=\"#009B48\" d=\"M0 0h400v600h-400z\"/><path fill=\"#fff\" d=\"M400 0h400v600h-400z\"/><path fill=\"#FF7900\" d=\"M800 0h400v600h-400z\"/></svg>\n'),
(89, 462, 'England', NULL, 'Europe', 'Northern Europe', 'EMEA', '-2.2125117778778076', '54.56088638305664', 'ENG,NIR,SCO,WAL', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 60 30\" width=\"1200\" height=\"600\"><clipPath id=\"a\"><path d=\"M30 15h30v15zv15h-30zh-30v-15zv-15h30z\"/></clipPath><path d=\"M0 0v30h60v-30z\" fill=\"#00247d\"/><path d=\"M0 0l60 30m0-30l-60 30\" stroke=\"#fff\" stroke-width=\"6\"/><path d=\"M0 0l60 30m0-30l-60 30\" clip-path=\"url(#a)\" stroke=\"#cf142b\" stroke-width=\"4\"/><path d=\"M30 0v30m-30-15h60\" stroke=\"#fff\" stroke-width=\"10\"/><path d=\"M30 0v30m-30-15h60\" stroke=\"#cf142b\" stroke-width=\"6\"/></svg>\n'),
(90, 468, 'Ghana', NULL, 'Africa', 'Western Africa', 'EMEA', '-1.2043862342834473', '7.921330451965332', 'GHA', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"450\" height=\"300\"><path fill=\"#006b3f\" d=\"M0 0h450v300h-450z\"/><path fill=\"#fcd116\" d=\"M0 0h450v200h-450z\"/><path fill=\"#ce1126\" d=\"M0 0h450v100h-450z\"/><path d=\"M225 100l32.492 100-85.065-61.803h105.146l-85.065 61.803z\"/></svg>\n'),
(91, 479, 'Japan', NULL, 'Asia', 'Eastern Asia', 'APAC', '139.0772705078125', '36.281646728515625', 'JPN', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"900\" height=\"600\"><path fill=\"#fff\" d=\"M0 0h900v600h-900z\"/><circle fill=\"#bc002d\" cx=\"450\" cy=\"300\" r=\"180\"/></svg>\n'),
(92, 488, 'Iran', NULL, 'Asia', 'Southern Asia', 'EMEA', '54.2942008972168', '32.50077819824219', 'IRN', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"630\" height=\"360\"><path fill=\"#da0000\" d=\"M0 0h630v360h-630z\"/><path fill=\"#fff\" d=\"M0 0h630v240h-630z\"/><path fill=\"#239f40\" d=\"M0 0h630v120h-630z\"/><g transform=\"translate(8.4 100.4)\"><g id=\"e\"><g id=\"c\" stroke=\"#fff\" stroke-width=\"2\" fill=\"none\"><path id=\"b\" d=\"M0 1.4h36.4m-35 12.6v-7h11.2v5.6h11.2v-5.6h-7m-11.2 5.6h2.8m28 0h-7v-5.6h11.2m0-7v12.6h11.2v-12.6m-5.6 0v12.6\"/><path id=\"a\" d=\"M0 19.6h25.2m2.8 0h25.2\"/><use xlink:href=\"#a\" y=\"120\"/><use xlink:href=\"#b\" y=\"145.2\"/></g><g id=\"d\"><use xlink:href=\"#c\" x=\"56\"/><use xlink:href=\"#c\" x=\"112\"/><use xlink:href=\"#c\" x=\"168\"/></g></g><use xlink:href=\"#d\" x=\"168\"/><use xlink:href=\"#e\" x=\"392\"/></g><g fill=\"#da0000\" transform=\"matrix(45 0 0 45 315 180)\"><g id=\"f\"><path d=\"M-.548.836a.912.912 0 0 0 .877-1.559 1 1 0 0 1-.877 1.559M.618.661a.764.764 0 0 0-.197-1.402 1 1 0 0 1 .197 1.402\"/><path d=\"M0 1l-.05-1 .05-.787a.31.31 0 0 0 .118.099v.588l-.04.993zM-.02-.85l.02.019a.144.144 0 0 0 .252-.136.136.136 0 0 1-.252.043\"/></g><use xlink:href=\"#f\" transform=\"scale(-1 1)\"/></g></svg>\n'),
(93, 491, 'Northern Ireland', NULL, 'Europe', 'Northern Europe', 'EMEA', '-8.196102142333984', '53.1827278137207', 'IRL', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1200\" height=\"600\"><path fill=\"#009B48\" d=\"M0 0h400v600h-400z\"/><path fill=\"#fff\" d=\"M400 0h400v600h-400z\"/><path fill=\"#FF7900\" d=\"M800 0h400v600h-400z\"/></svg>\n'),
(94, 507, 'Bosnia and Herzegovina', NULL, 'Europe', 'Southern Europe', 'EMEA', '17.790241241455078', '44.16533279418945', 'BIH', '<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"800\" height=\"400\" viewBox=\"0 0 16 8\"><path fill=\"#002395\" d=\"M0 0h16v8h-16z\"/><path d=\"M4.24 0h8v8z\" fill=\"#fecb00\"/><g id=\"b\"><path d=\"M2.353.525l.447-1.375.447 1.375-1.17-.85h1.446z\" fill=\"#fff\" id=\"a\"/><use xlink:href=\"#a\" x=\"1\" y=\"1\"/><use xlink:href=\"#a\" x=\"2\" y=\"2\"/></g><use xlink:href=\"#b\" x=\"3\" y=\"3\"/><use xlink:href=\"#b\" x=\"6\" y=\"6\"/></svg>\n'),
(95, 47, 'Sweden', NULL, 'Europe', 'Northern Europe', 'EMEA', '16.798059463500977', '62.67497253417969', 'SWE', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"1600\" height=\"1000\" viewBox=\"0 0 16 10\"><path fill=\"#006aa7\" d=\"M0 0h16v10h-16z\"/><path fill=\"#fecc00\" d=\"M5 0h2v10h-2zM0 4h16v2h-16z\"/></svg>\n'),
(96, 5, 'Brazil', NULL, 'Americas', 'South America', 'AMER', '-52.97311782836914', '-10.81045150756836', 'BRA', ''),
(97, 20, 'Portugal', NULL, 'Europe', 'Southern Europe', 'EMEA', '-8.009422302246094', '39.64200973510742', 'POR', ''),
(98, 32, 'Spain', NULL, 'Europe', 'Southern Europe', 'EMEA', '-3.550692558288574', '40.396026611328125', 'ESP', ''),
(99, 44, 'Argentina', NULL, 'Americas', 'South America', 'AMER', '-64.85450744628906', '-37.071964263916016', 'ARG', ''),
(100, 107, 'Iraq', NULL, 'Asia', 'Western Asia', 'EMEA', '43.77495574951172', '33.044586181640625', 'IRQ', ''),
(101, 116, 'Cyprus', NULL, 'Europe', 'Eastern Europe', 'EMEA', '33.486717224121094', '35.11473846435547', 'CYP', ''),
(102, 266, 'Croatia', NULL, 'Europe', 'Southern Europe', 'EMEA', '15.734503746032715', '45.444305419921875', 'CRO', ''),
(103, 296, 'Serbia', NULL, 'Europe', 'Southern Europe', 'EMEA', '20.797958374023438', '44.23297119140625', 'SRB', ''),
(104, 458, 'Mexico', NULL, 'Americas', 'Central America', 'AMER', '-102.6333999633789', '23.909093856811523', 'MEX', ''),
(105, 459, 'Ecuador', NULL, 'Americas', 'South America', 'AMER', '-78.87104034423828', '-1.421528935432434', 'ECU', '');

-- --------------------------------------------------------

--
-- Table structure for table `crash`
--

CREATE TABLE `crash` (
  `id` int(11) NOT NULL,
  `busted` float DEFAULT NULL,
  `hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `md5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crash_bet`
--

CREATE TABLE `crash_bet` (
  `id` int(11) NOT NULL,
  `crash_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `auto_cashout` float NOT NULL,
  `cashout` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `won` int(11) DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT 0.00000000,
  `amountUSD` double(20,8) NOT NULL DEFAULT 0.00000000,
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `dailycat`
--

CREATE TABLE `dailycat` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `pagename` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `header` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `style` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `keywords` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `memtype` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `portalid` int(11) NOT NULL DEFAULT 0,
  `showinmenu` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `showinhome` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dailycounter`
--

CREATE TABLE `dailycounter` (
  `id` int(11) NOT NULL,
  `date` varchar(15) COLLATE utf8_persian_ci NOT NULL,
  `visitcount` int(11) NOT NULL,
  `pagecount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateway`
--

CREATE TABLE `gateway` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `paymethodid` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `extravalue` varchar(255) DEFAULT NULL,
  `unit_id` int(10) DEFAULT NULL,
  `sort` int(5) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gateway`
--

INSERT INTO `gateway` (`id`, `name`, `paymethodid`, `user`, `pass`, `domain`, `api_key`, `extravalue`, `unit_id`, `sort`, `status`) VALUES
(1, 'پرداخت از طریق درگاه مستقیم بانکی', '1', '', '', NULL, 'a7cd46a93ded311a34c77374afe0cc3c', '', 1, 1, 1),
(4, 'پرفکت مانی', '42', '7963815', 'Dokidoki99', NULL, 'U21610946', 'g82wT01m8KkmIQqXIRpKeCvKT', 3, 4, 0),
(5, 'کارت به کارت پارسیگرام ', '62', NULL, NULL, NULL, 'YNZJIFuvjrLnIqShCk31fDnUwOqRBxthi5qFcPZuWBDAuYs/gH9y8kozm/Hai+E8ii1vdlIxuBGjrtjIqnWFBS5qai7JvZkIULRm/DtjW5eav3XkNOzoEVKddFvONnzwcFbxAaofqGRTpCh3p4qyxA==', NULL, NULL, 3, 0),
(6, 'وچر پرفکت مانی', '422', '7963815', 'Dokidoki99', NULL, 'U21610946', 'g82wT01m8KkmIQqXIRpKeCvKT', 3, 1, 1),
(7, 'وچر پارسیگرام', '622', '', '', NULL, 'YNZJIFuvjrLnIqShCk31fDnUwOqRBxthi5qFcPZuWBDAuYs/gH9y8kozm/Hai+E8ii1vdlIxuBGjrtjIqnWFBS5qai7JvZkIULRm/DtjW5eav3XkNOzoEVKddFvONnzwcFbxAaofqGRTpCh3p4qyxA==', '', NULL, 5, 0),
(2, 'کارت به کارت', '3', '', '', NULL, '71a272b0b3add93d638ea62ee3ac516612df315a784746af08031b69567ae38a', '', 1, 1, 0),
(8, 'درگاه بیت کوین سزار', '236', '', '', NULL, '', '', 2, 2, 0),
(9, 'کارت به کارت انی', '3', '', '', NULL, '71a272b0b3add93d638ea62ee3ac516612df315a784746af08031b69567ae38a', '', NULL, 1, 0),
(10, 'پرفکت مانی', '42', '7963815', 'Dokidoki99', NULL, 'U21610946', '', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ig_accounts`
--

CREATE TABLE `ig_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `bio` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(512) DEFAULT '',
  `avatar` varchar(512) NOT NULL DEFAULT '',
  `thumb` varchar(512) NOT NULL DEFAULT '',
  `is_private` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `followers` int(100) NOT NULL,
  `following` int(100) NOT NULL,
  `date_lastupdate` int(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) NOT NULL,
  `invoice_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_btc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` int(10) DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(9) DEFAULT NULL,
  `date` bigint(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_id`, `user_id`, `token`, `price`, `price_btc`, `currency`, `address`, `hash`, `value`, `status`, `date`) VALUES
(1, 'YW1569065566', 0, NULL, '0', '0', NULL, NULL, NULL, NULL, 0, 1569065573),
(2, 'YW1569065566', 0, NULL, '0', '0', NULL, NULL, NULL, NULL, 0, 1569065575);

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE `leagues` (
  `id` int(11) NOT NULL,
  `leagues_id` int(10) NOT NULL,
  `legacy_id` int(10) DEFAULT NULL,
  `country_id` int(10) DEFAULT NULL,
  `leagues_name_en` varchar(100) DEFAULT NULL,
  `leagues_name_fa` varchar(100) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `leagues_is_cup` int(1) DEFAULT NULL,
  `current_season_id` int(10) DEFAULT NULL,
  `current_round_id` int(10) DEFAULT NULL,
  `current_stage_id` int(10) DEFAULT NULL,
  `live_standings` int(10) DEFAULT NULL,
  `topscorer_goals` int(1) DEFAULT NULL,
  `topscorer_assists` int(1) DEFAULT NULL,
  `topscorer_cards` int(1) DEFAULT NULL,
  `season_id` int(10) DEFAULT NULL,
  `season_name` varchar(50) DEFAULT NULL,
  `country_name_en` varchar(50) DEFAULT NULL,
  `country_name_fa` varchar(50) DEFAULT NULL,
  `continent` varchar(50) DEFAULT NULL,
  `country_sub_region` varchar(50) DEFAULT NULL,
  `country_world_region` varchar(50) DEFAULT NULL,
  `fifa` varchar(50) DEFAULT NULL,
  `iso` varchar(10) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `league_tables`
--

CREATE TABLE `league_tables` (
  `id` int(10) NOT NULL,
  `leagues_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `league_name_en` varchar(50) NOT NULL,
  `league_name_fa` varchar(50) DEFAULT NULL,
  `continent` varchar(50) NOT NULL,
  `season_id` int(10) NOT NULL,
  `flag` varchar(200) DEFAULT NULL,
  `active` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `league_tables`
--

INSERT INTO `league_tables` (`id`, `leagues_id`, `country_id`, `league_name_en`, `league_name_fa`, `continent`, `season_id`, `flag`, `active`) VALUES
(1, 8, 462, 'PREMIER LEAGUE', 'انگلیس', 'اروپا', 6397, 'eng', 1),
(2, 564, 11, 'LA LIGA', 'اسپانیا', 'اروپا', 8442, 'spa', 1),
(3, 902, 488, 'Persian Gulf Pro League', 'ایران', 'آسیا', 8560, 'irn', 1),
(4, 384, 251, 'Italy', 'ایتالیا', 'اروپا', 8557, 'ita', 1),
(5, 301, 17, 'France', 'فرانسه', 'اروپا', 6405, 'fra', 1),
(6, 82, 11, 'Germany', 'آلمان', 'اروپا', 8026, 'ger', 1),
(7, 72, 38, 'Natherlands', 'هلند', 'اروپا', 6387, 'hol', 1),
(8, 600, 404, 'Turkey', 'ترکیه', 'اروپا', 8243, 'tur', 1),
(9, 486, 227, 'Russia', 'روسیه', 'اروپا', 6375, 'rus', 1),
(10, 465, 20, 'Portugal', 'پرتغال', 'اروپا', 8223, 'por', 1),
(11, 648, 5, 'Brazil', 'برزیل', 'آمریکا', 12206, 'bra', 1),
(12, 636, 44, 'Argentina', 'آرژانتین', 'آمریکا', 8795, 'arg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` varchar(50) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `animation_code` int(10) DEFAULT NULL,
  `result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `status`, `animation_code`, `result`) VALUES
('2453570', NULL, NULL, 0),
('3081116', 1, 1, NULL),
('3098759', NULL, NULL, 0),
('3102168', NULL, NULL, 0),
('3114841', 1, NULL, NULL),
('77410710', 0, NULL, NULL),
('77597206', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `target` varchar(100) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `target`, `icon`, `status`, `weight`, `parent_id`, `group_id`, `created_at`, `updated_at`) VALUES
(318, 'قوانین و تعاریف پیش بینی', 'betGuide', '-', 1, 2, NULL, 3, '2018-05-06 05:11:06', '2018-05-30 12:36:23'),
(319, 'سوالات متداول', 'faq', '-', 1, 4, NULL, 3, '2018-05-06 05:11:06', '2018-05-30 12:54:15'),
(330, 'قوانین و مقررات', 'rules', NULL, 1, 1, NULL, 3, '2018-08-18 20:41:37', '2018-08-18 21:10:15'),
(331, 'قوانین و راهنمای کازینو', 'Casino_rules', NULL, 1, 3, NULL, 3, '2018-08-18 21:13:47', '2018-08-18 21:33:40'),
(333, 'راهنمای خرید اعتبار و شارژ حساب', 'Deposit-Help', NULL, 1, 1, NULL, 4, '2018-08-18 21:29:28', NULL),
(334, 'راهنمای طرح تشویقی و دعوت از دوستان', 'invite_friends_help', NULL, 1, 4, NULL, 4, '2018-08-18 21:30:11', NULL),
(335, 'راهنمای درخواست برداشت', 'cashout_help', NULL, 1, 2, NULL, 4, '2018-08-18 21:31:12', NULL),
(336, 'پیش بینی مسئولانه', 'Responsible-betting', NULL, 1, 5, NULL, 3, '2018-08-18 21:36:29', NULL),
(338, 'راهنمای شارژ حساب از طریق پرفکت مانی', 'Deposit-help-perfect', NULL, 1, 5, NULL, 4, '2018-08-18 22:00:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_groups`
--

CREATE TABLE `menu_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_groups`
--

INSERT INTO `menu_groups` (`id`, `is_admin`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'منوی کناری پنل مدیریت', 'admin_side', '2015-08-25 07:03:06', '2015-08-25 07:03:06'),
(2, 0, 'منوی بالای سایت', 'front_top', '0000-00-00 00:00:00', '2018-05-30 13:52:46'),
(3, 1, 'تعاریف و مقررات', 'footer', '2018-05-06 05:06:58', '2018-05-30 13:52:28'),
(4, 1, 'پیوند ها', 'footer_2', '2018-05-06 05:30:13', '2018-05-30 13:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender` varchar(40) COLLATE utf8_persian_ci DEFAULT NULL,
  `title` varchar(64) COLLATE utf8_persian_ci DEFAULT NULL,
  `text` text COLLATE utf8_persian_ci DEFAULT NULL,
  `user_id` varchar(10) COLLATE utf8_persian_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `is_read` varchar(1) COLLATE utf8_persian_ci DEFAULT '0',
  `ip` varchar(15) COLLATE utf8_persian_ci DEFAULT NULL,
  `portalid` int(11) NOT NULL DEFAULT 0,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender`, `title`, `text`, `user_id`, `date`, `is_read`, `ip`, `portalid`, `status`) VALUES
(1, 'ADMIN', 'ارتقاء سرور', 'با سلام خدمت همه عزیزان  بخاطر ارتقا ء سرور ممکن هست بعضی از گزینه ها یا بخش ها دچار مشکل بشن لطفا اگر مشکلی دید ما را در جریان قرار بدید تا هر چه سریعتر برطرف کنیم با تشکر مدیریت متین بت', '0', '2020-01-18 15:58:35', '0', NULL, 0, '0'),
(2, 'ADMIN', 'اطلاعیه', 'باسلام و عوض خوش امد گویی خدمت کاربران عزیز.\r\nبنابر اعمال تغییراتی در سرور چندی از بازی های سایت بصورت موقت غیرفعال شده اند و بزودی مجددا فعال خواهند شد از صبر و شکیبایی شما کمال تشکر را داریم.\r\nتیم پشتیبانی داکی بت', '0', '2020-03-24 15:18:45', '0', NULL, 0, '0'),
(3, 'ADMIN', 'بونوس', 'با سلام خدمت گاربران عزیز سایت حضرات سایت پرامنیت و پر جوایز انی و پر بونوسی برا شما ارزومندیم موفق باشید', '0', '2020-04-08 03:38:21', '0', NULL, 0, '0'),
(4, 'ADMIN', 'جایزه 206 بدون قرعه کشی یا 107 میلیون تومان وجه', 'یک دستگاه خودرو206 صفر برای کاربران عزیز سایت حضرات گلد یا معادل خودرو مبلغ 107 میلیون تومان وجه نقد نصبت به فعالیت خود امتیاز بگیرید و برنده ی خودرو 206 شوید  کسب امتیاز به شرح زیر میباشد\r\n1.زیر مجموعه گیری با گرفتن هر زیر مجموعه کاربر فعال 10 امتیاز بگیرید و شانس خود را بیشتر کنید*\r\n2.جمع هر 100 هزار تومان واریزی 5 امتیاز *\r\n3.هر برداشت 100 هزار تومان 5 امتیاز *\r\n4.هر رکورد ضریب . رکورد برد . رکورد واریز در روز 10 امتیاز بکیرید و شانس خود را چندین برابر کنید*\r\n***شما میتوانید به راحتی امتیاز کسب کنید و به راحتی برنده ی خودرو باشید این امر فقط به فعالیت شما بستگی دارد و به راحتی میتوانید صاحب خودرو شوید با گرفتن زیرمجموعه*بازی خوب*واریز و برداشت*از همین حالا شروع کن شما برنده ی مایید', '0', '2020-04-11 13:30:29', '0', NULL, 0, '0'),
(5, 'ADMIN', 'جایزه ', 'یک دستگاه خودرو206 صفر برای کاربران عزیز سایت حضرات گلد یا معادل خودرو مبلغ 107 میلیون تومان وجه نقد نصبت به فعالیت خود امتیاز بگیرید و برنده ی خودرو 206 شوید  کسب امتیاز به شرح زیر میباشد 1.زیر مجموعه گیری با گرفتن هر زیر مجموعه کاربر فعال 10 امتیاز بگیرید و شانس خود را بیشتر کنید* 2.جمع هر 100 هزار تومان واریزی 5 امتیاز * 3.هر برداشت 100 هزار تومان 5 امتیاز * 4.هر رکورد ضریب . رکورد برد . رکورد واریز در روز 10 امتیاز بکیرید و شانس خود را چندین برابر کنید* ***شما میتوانید به راحتی امتیاز کسب کنید و به راحتی برنده ی خودرو باشید این امر فقط به فعالیت شما بستگی دارد و به راحتی میتوانید صاحب خودرو شوید با گرفتن زیرمجموعه*بازی خوب*واریز و برداشت*از همین حالا شروع کن شما برنده ی مایید\r\n\r\n', '0', '2020-04-20 02:49:09', '0', NULL, 0, '0'),
(6, 'ADMIN', 'ادرس جدید بدون فیلتر', 'www.PedbeT.xyz', '0', '2020-09-15 20:17:51', '0', NULL, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `online_gamer`
--

CREATE TABLE `online_gamer` (
  `id` int(10) NOT NULL,
  `game_id` int(10) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `op_user_id` int(10) DEFAULT NULL,
  `card_data` varchar(1000) DEFAULT NULL,
  `amount` int(10) DEFAULT 0,
  `token` varchar(100) NOT NULL,
  `time_start` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_result`
--

CREATE TABLE `online_result` (
  `id` int(11) NOT NULL,
  `match_id` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `result` varchar(5) NOT NULL,
  `minute` varchar(5) DEFAULT NULL,
  `status` varchar(5) NOT NULL,
  `side` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymethod`
--

CREATE TABLE `paymethod` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(20) DEFAULT NULL,
  `unit_id` int(5) DEFAULT NULL,
  `min_amount` float DEFAULT NULL,
  `extravalue` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymethod`
--

INSERT INTO `paymethod` (`id`, `name`, `name_en`, `unit_id`, `min_amount`, `extravalue`, `status`) VALUES
(1, 'درگاه واسط کرون کمپانی سزار', 'bank', 1, 1000, NULL, 1),
(3, 'کارت به کارت', 'cardtocard', 1, 1000, NULL, 0),
(42, 'پرفکت مانی', 'perfectmoney', 3, 0.1, NULL, 1),
(62, 'کارت به کارت پارسیگرام', 'parsigram', 2, 100, NULL, 1),
(422, 'وچر پرفکت مانی ', 'perfectmoney_voucher', 3, 0.1, NULL, 1),
(64, 'وچر پارسیگرام ', 'parsigram_voucher', 2, 100, NULL, 1),
(622, 'وچر پارسیگرام', 'parsigram_voucher', 2, 100, NULL, 1),
(236, 'درگاه بیت کوین', 'szrbtc', 1, 1000, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `module_name` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`module_name`, `permission`, `label`) VALUES
('تماس ها', 'contacts.admin.announcement', 'ارسال اعلانیه به کاربران'),
('تماس ها', 'contacts.admin.ticket', 'ارسال تیکت به مدیریت'),
('تنظیمات', 'settings.admin', 'تنظیمات سیستم'),
('محتوا', 'content.admin.categories', 'دسته بندی ها'),
('محتوا', 'content.admin.categories.delete', 'حذف دسته بندی ها'),
('محتوا', 'content.admin.categories.edit', 'افزودن و ویرایش دسته بندی ها'),
('محتوا', 'content.admin.categories.index', 'مشاهده لیست دسته بندی ها'),
('محتوا', 'content.admin.content_types', 'نوع محتوا'),
('محتوا', 'content.admin.content_types.delete', 'حذف نوع محتوا'),
('محتوا', 'content.admin.content_types.edit', 'ویرایش و افزودن نوع محتوا'),
('محتوا', 'content.admin.content_types.index', 'مشاهده لیست نوع محتوا'),
('محتوا', 'content.admin.entries', 'پست ها'),
('محتوا', 'content.admin.entries.delete', 'حذف پست ها'),
('محتوا', 'content.admin.entries.edit', 'ویرایش و افزودن پست ها'),
('محتوا', 'content.admin.entries.index', 'مشاهده لیست پست ها'),
('منو', 'menu.admin.menus', 'منو'),
('منو', 'menu.admin.menus.delete', 'حذف منو'),
('منو', 'menu.admin.menus.edit', 'ویرایش و افزودن منو'),
('منو', 'menu.admin.menus.index', 'مشاهده لیست منوها'),
('کاربران', 'user.admin.users.edit_house', 'مشخصات ملک کاربر'),
('کاربران', 'users.admin', 'کاربران'),
('کاربران', 'users.admin.users.delete', 'حذف کاربران'),
('کاربران', 'users.admin.users.edit', 'افزودن و ویرایش کاربران'),
('کاربران', 'users.admin.users.index', 'مشاهده لیست کاربران'),
('گروه های کاربری', 'users.admin.users.roles.delete', 'حذف گروه کاربران'),
('گروه های کاربری', 'users.admin.users.roles.edit', 'افزودن و ویرایش گروه کاربران'),
('گروه های کاربری', 'users.admin.users.roles.index', 'مشاهده لیست گروه های کاربران');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 19, 'ppQRAQoW4ohresVu4Z6DZBPyl7bojKqL', 0, NULL, '2020-02-17 23:58:18', '2020-02-17 23:58:18'),
(2, 19, 'MKLwue4EvdZDyLzI3CBO8u1ibnfX8wJr', 0, NULL, '2020-02-17 23:58:22', '2020-02-17 23:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '?????? ??', NULL, '2015-08-11 04:19:58', '2015-08-11 04:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` int(11) NOT NULL,
  `seasons_id` int(10) NOT NULL,
  `seasons_name_en` varchar(20) NOT NULL,
  `seasons_name_fa` varchar(20) DEFAULT NULL,
  `league_id` int(10) NOT NULL,
  `is_current_season` int(1) NOT NULL,
  `current_round_id` int(20) DEFAULT NULL,
  `current_stage_id` int(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seen_annouce`
--

CREATE TABLE `seen_annouce` (
  `user_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT 0,
  `seen_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `domain` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `createdate` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `country` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `ostan` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `shahrestan` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `bakhsh` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `shahr` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `abadi` varchar(32) COLLATE utf8_persian_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `title` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `author` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `copyright` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `keywords` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `script` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `enamad` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `samandehi` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `contact` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `tel` varchar(64) COLLATE utf8_persian_ci DEFAULT NULL,
  `fax` varchar(64) COLLATE utf8_persian_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `googlemap` varchar(350) COLLATE utf8_persian_ci DEFAULT NULL,
  `googleplus` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `instagram` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `linkedin` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `skype` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `telegram` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `aparat` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `lenzor` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `contacttitle` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `contacttext` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `abouttitle` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `rss` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `favicon` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `logo2` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `domain`, `createdate`, `country`, `ostan`, `shahrestan`, `bakhsh`, `shahr`, `abadi`, `status`, `title`, `author`, `copyright`, `keywords`, `description`, `script`, `enamad`, `samandehi`, `contact`, `tel`, `fax`, `email`, `googlemap`, `googleplus`, `instagram`, `facebook`, `twitter`, `linkedin`, `skype`, `telegram`, `aparat`, `lenzor`, `contacttitle`, `contacttext`, `abouttitle`, `rss`, `favicon`, `logo`, `logo2`) VALUES
(0, 'پرتال اصلی', 'sezarco.ir', '1392/07/01', NULL, NULL, NULL, NULL, NULL, NULL, '1', '', 'مدیر', '&copy; تمامی حقوق برای این سایت محفوظ است.&nbsp;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#', '#', '#', '#', '#', '#', '#', '#', NULL, 'تماس با ما', 'متن تماس با ما', 'درباره ما', 'http://rss.cbc.ca/lineup/topstories.xml', 'Internet-Blue-icon.ico', 'logo.png', 'logo-footer.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` varchar(20) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `code`, `value`, `created_at`, `updated_at`) VALUES
(2, 'نام سایت', 'site_name', 'پدبت |PedbeT-انفجار| تخته نرد|بلک جک| پوکر| پیش بینی فوتبال و کازینو', '2015-08-17 23:55:11', '2020-08-31 17:22:12'),
(3, 'زبان سایت', 'lang', 'en', '2015-08-17 23:55:11', '2020-01-08 09:50:37'),
(4, 'صفحه اصلی سایت', 'homepage', '1', '0000-00-00 00:00:00', '2018-11-13 21:10:09'),
(5, 'صفحه خطا', 'custom_error_page', '2', '0000-00-00 00:00:00', '2018-01-13 04:59:18'),
(6, 'وضعیت سایت', 'site_status', '1', '2015-09-06 23:15:00', '2018-03-14 13:07:19'),
(7, 'متن فوتر', 'footer', 'تمامی حقوق برای پد بت محفوظ است', '2015-09-06 23:15:00', '2020-04-13 15:41:05'),
(8, 'قالب سایت', 'theme', 'theme_v2', '2015-09-13 02:33:16', '2019-09-21 18:14:30'),
(9, 'توضیحات', 'description', ' پیش بینی مسابقات ورزشی بر طبق استانداردهای جهانی به صورت زنده  . پیش بینی بر روی بازی های سراسر دنیا به صورت تکی و میکس با بهترین ضرایب جهانی . نتایج زنده، جدول لیگ ها، برنامه بازی ها و آمار مسابقات ورزشی به صورت زنده و پیش از بازی را با کراش بت دنبال کنید.', '2018-04-24 19:30:00', '2020-04-13 15:12:09'),
(10, 'نوع', 'og:type', 'website', '2018-04-24 19:30:00', '2018-04-24 19:30:00'),
(11, 'تیتر صفحه', 'og:title', 'کراش بت پیش بینی مسابقات ورزشی زنده', '2018-04-24 19:30:00', '2020-04-13 15:14:21'),
(12, 'توضیحات شبکه های اجتماعی', 'og:description', ' پیش بینی مسابقات ورزشی بر طبق استانداردهای جهانی به صورت زنده  . پیش بینی بر روی بازی های سراسر دنیا به صورت تکی و میکس با بهترین ضرایب جهانی . نتایج زنده، جدول لیگ ها، برنامه بازی ها و آمار مسابقات ورزشی به صورت زنده و پیش از بازی را با  crashbet دنبال کنید.', '2018-04-24 19:30:00', '2020-04-13 15:15:04'),
(13, 'نام سایت در شبکه های اجتماعی', 'og:site_name', 'PedbeT', '2018-04-24 19:30:00', '2020-08-31 17:44:46'),
(14, 'ایمیل', 'email', '', '2015-09-07 02:45:00', '2018-05-24 15:14:41'),
(15, 'شماره تماس', 'tell', NULL, '2015-09-07 02:45:00', '2018-05-21 20:07:34'),
(16, 'آدرس', 'address', NULL, '2015-09-07 02:45:00', '2018-05-24 15:41:49'),
(17, 'تلگرام', 'telegram', 'https://t.me/pedbet', '2015-09-07 02:45:00', '2020-08-31 17:49:54'),
(18, 'فیسبوک', 'facebook', NULL, '2018-04-10 01:14:11', '2018-06-09 14:41:12'),
(19, 'اینستاگرام', 'instagram', 'https://www.instagram.com/ped.bet', '2018-04-17 07:12:14', '2020-08-31 21:45:27'),
(20, 'انسداد ثبت نام', 'registeration_cancel', '0', '2018-05-14 23:00:00', '2018-06-09 22:32:45'),
(21, 'انسداد ورود', 'login_cancel', '0', '2018-05-14 23:00:00', '2018-06-11 11:21:20'),
(22, 'لوگو', 'logo', 'logo.png', '2018-05-14 23:00:00', '2019-09-21 02:49:05'),
(23, 'بالاترین مبلغ قابل پیش بینی ', 'max_stake', '', '2018-05-14 22:00:00', '2018-05-15 12:57:52'),
(24, 'تعداد درخواست برداشت روزانه هر کاربر', 'daily_request', '5', '2018-05-14 22:00:00', '2018-10-20 23:28:57'),
(25, 'بالاترین مبلغ برد', 'win_stake', '', '2018-05-14 22:00:00', '2018-05-15 12:57:52'),
(26, 'حداقل مبلغ قابل پیش بینی ', 'min_stake', '2000', '2018-05-14 22:00:00', '2018-06-08 12:07:09'),
(27, 'سقف برداشت روزانه هر کاربر', 'daily_max', '20000000', '2018-05-14 22:00:00', '2019-07-18 17:26:42'),
(28, 'حداقل مقدار برداشت', 'min_value_request', '50000', '2018-05-14 22:00:00', '2018-06-08 13:31:49'),
(29, 'حداکثر مقدار برداشت', 'max_value_request', '50000000', '2018-05-14 22:00:00', '2019-07-20 13:57:45'),
(30, 'درصد کارمزد زیرمجموعه', 'affiliate', '30', '2018-05-14 22:00:00', '2020-08-31 17:46:25'),
(31, 'آیکون', 'favicon', 'favicon.ico', '2018-05-15 10:30:00', '2018-07-03 21:04:09'),
(32, 'صدای گل', 'goal_sound', 'sound.mp3', '2018-05-15 10:30:00', '2018-07-04 16:45:37'),
(33, 'درصد کارمزد زیرمجموعه کازینو', 'affiliate_casino', '30', '2018-05-15 09:30:00', '2020-08-31 17:46:59'),
(34, 'سایت واسط درگاه ها', 'payment_interface', 'https://talapall.com', '2018-05-15 09:30:00', '2020-01-10 11:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `settles`
--

CREATE TABLE `settles` (
  `settle_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `settle_res` varchar(100) NOT NULL,
  `settle_ref` varchar(60) NOT NULL DEFAULT '',
  `settle_amount` varchar(255) NOT NULL,
  `settle_user` varchar(32) NOT NULL DEFAULT '0',
  `settle_date` varchar(255) NOT NULL,
  `settle_done` varchar(11) NOT NULL,
  `settle_gateway` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `user_point` int(11) NOT NULL,
  `user_box` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `category` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_persian_ci NOT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `image2` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `title` text COLLATE utf8_persian_ci DEFAULT NULL,
  `url` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `hoffset` int(11) DEFAULT NULL,
  `voffset` int(11) DEFAULT NULL,
  `style` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `portalid` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `category`, `type`, `image`, `image2`, `title`, `url`, `description`, `hoffset`, `voffset`, `style`, `sort`, `portalid`, `status`) VALUES
(3, '0', '1', 'background3.png', 'background2.png', 'عکس دوم ', 'http://hazarat.gold/../../../upload/slider/SZR-AB1586301180-as.jpg', 'اسلایدر اول صفحه اصلی', NULL, NULL, NULL, 2, 0, '1'),
(13, '0', '1', 'background1.png', 'background2.png', 'معتبر ترین کازینو انلاین', 'http://matinvip.xyz/../../../upload/slider/SZR-FC1579040856-ddsd.jpg', 'اسلایدر دوم صفحه اصلی', NULL, NULL, NULL, 5, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `slideshowcat`
--

CREATE TABLE `slideshowcat` (
  `id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `pagename` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_persian_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_persian_ci DEFAULT NULL,
  `header` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_persian_ci DEFAULT NULL,
  `style` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `keywords` varchar(400) COLLATE utf8_persian_ci DEFAULT NULL,
  `memtype` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `portalid` int(11) NOT NULL DEFAULT 0,
  `showinmenu` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `showinhome` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8_persian_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `slideshowcat`
--

INSERT INTO `slideshowcat` (`id`, `code`, `pagename`, `name`, `type`, `level`, `description`, `header`, `image`, `style`, `keywords`, `memtype`, `portalid`, `showinmenu`, `showinhome`, `sort`, `status`) VALUES
(1, '4', NULL, 'اسلایدر تبلیغات', '1', 0, NULL, '', '', NULL, NULL, '0', 0, '0', '0', 2, '1'),
(2, '3', NULL, 'اسلایدر (inplay,upcoming)', '1', 0, NULL, '', '', NULL, NULL, '0', 0, '0', '0', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `name_en` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `name_inplay` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `name_prematch` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `name_result` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `is_inplay` tinyint(1) NOT NULL DEFAULT 0,
  `is_upcoming` tinyint(1) NOT NULL DEFAULT 0,
  `is_result` tinyint(1) NOT NULL DEFAULT 1,
  `default_bookmaker` varchar(100) COLLATE utf8_persian_ci NOT NULL DEFAULT 'bet365',
  `sort` int(11) DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8_persian_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `name`, `name_en`, `name_inplay`, `name_prematch`, `name_result`, `flag`, `code`, `is_inplay`, `is_upcoming`, `is_result`, `default_bookmaker`, `sort`, `logo`, `status`) VALUES
(31, 'بازی الکترونیک', 'esports', NULL, 'esports', 'esports', NULL, NULL, 0, 1, 1, 'bet365-10bet-marathon-pncl', 12, 'esports.png', 0),
(30, 'بوکس', 'boxing', NULL, 'boxing', 'boxing', NULL, NULL, 0, 1, 1, 'bet365-10bet-marathon-pncl', 11, 'boxing.png', 0),
(29, 'راگبی', 'rugby', NULL, 'rugby', 'rugby', NULL, NULL, 0, 1, 1, 'bet365', 10, 'rugby.png', 0),
(27, 'بیس بال', 'baseball', NULL, 'baseball', 'baseball', NULL, NULL, 0, 1, 1, 'bet365', 8, 'baseball.png', 0),
(28, 'کریکت', 'cricket', NULL, 'cricket', 'cricket', NULL, NULL, 0, 1, 1, 'bet365-marathon', 9, 'Cricket.png', 0),
(26, 'فوتبال ساحلی', 'football', NULL, 'football', 'football', NULL, NULL, 0, 1, 1, 'bet365', 14, 'football.png', 0),
(24, 'هندبال', 'handball', NULL, 'handball', 'handball', NULL, NULL, 0, 1, 1, 'bet365', 5, 'handball.png', 0),
(25, 'والیبال', 'volleyball', 'volleyball', 'volleyball', 'volleyball', NULL, NULL, 1, 1, 1, 'bet365', 6, 'volleyball.png', 1),
(23, 'هاکی', 'hockey', NULL, 'hockey', 'hockey', NULL, NULL, 0, 1, 1, 'bet365-10bet', 1, 'hockey.png', 1),
(16, 'فوتبال', 'soccer', 'soccer', 'soccer', 'soccernew', NULL, NULL, 1, 1, 1, 'bet365-10bet-betfair-marathon-pncl', 1, 'soccer.png', 1),
(17, 'تنیس', 'tennis', 'tennis', 'tennis', 'tennis_scores', NULL, NULL, 1, 1, 1, 'bet365', 2, 'tennis.png', 0),
(22, 'بسکتبال', 'basket', 'basket', 'basket', 'bsktbl', NULL, NULL, 1, 1, 1, 'bet365-marathon', 3, 'basket.png', 1),
(32, 'فوتسال', 'futsal', NULL, 'futsal', 'futsal', NULL, NULL, 0, 1, 1, 'bet365-10bet-marathon-pncl', 13, 'Futsal_1.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `teams_id` int(10) NOT NULL,
  `legacy_id` int(10) DEFAULT NULL,
  `teams_name_en` varchar(50) NOT NULL,
  `teams_name_fa` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `country_id` int(10) DEFAULT NULL,
  `national_team` int(1) DEFAULT NULL,
  `founded` int(5) DEFAULT NULL,
  `logo_path` varchar(100) DEFAULT NULL,
  `venue_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` text NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `seen_datetime` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='تیکت های کاربران';

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `admin` int(10) DEFAULT 0,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) NOT NULL,
  `token` varchar(21) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dl_link` varchar(236) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` bigint(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `savano` text DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `transaction_states` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trans_id` varchar(100) DEFAULT NULL,
  `cash` float DEFAULT NULL,
  `payment_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_persian_ci DEFAULT NULL,
  `pay_code` varchar(100) DEFAULT NULL,
  `card_number` varchar(16) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `name_en` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `name_fa` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL,
  `logo` varchar(20) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `name_en`, `name_fa`, `logo`) VALUES
(1, 'Rial', 'ریال', NULL),
(2, 'Tomman', 'تومان', NULL),
(3, 'Dollar', 'دلار', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int(11) NOT NULL,
  `user` varchar(32) COLLATE utf8_persian_ci NOT NULL,
  `timestamp` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `session_id` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(90) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cash` float UNSIGNED NOT NULL DEFAULT 0,
  `tell` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `game_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_num` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shaba_num` varchar(26) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affiliate_percent` int(3) DEFAULT NULL,
  `remember_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_holder` varchar(500) NOT NULL,
  `account_number` varchar(500) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `sheba` varchar(50) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `webmoney` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pay_code` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `admingroup`
--
ALTER TABLE `admingroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_levelcat`
--
ALTER TABLE `admin_levelcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_levellist`
--
ALTER TABLE `admin_levellist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat` (`cat`);

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `advertisecat`
--
ALTER TABLE `advertisecat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `affiliate`
--
ALTER TABLE `affiliate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `api_token`
--
ALTER TABLE `api_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `bets`
--
ALTER TABLE `bets`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `fk_bets_users1_idx` (`user_id`);

--
-- Indexes for table `bet_form`
--
ALTER TABLE `bet_form`
  ADD PRIMARY KEY (`id`,`bets_id`,`bets_user_id`),
  ADD KEY `fk_bet_form_bets1_idx` (`bets_id`,`bets_user_id`);

--
-- Indexes for table `casino`
--
ALTER TABLE `casino`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casino_settings`
--
ALTER TABLE `casino_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `contenttype` (`contenttype`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `change_unit`
--
ALTER TABLE `change_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portalid` (`portalid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `contentid_2` (`contentid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_entry_blog_id` (`entry_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `contenttype`
--
ALTER TABLE `contenttype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `content_categories`
--
ALTER TABLE `content_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_categories_content_type_id_foreign` (`content_type_id`);

--
-- Indexes for table `content_category_content_entries`
--
ALTER TABLE `content_category_content_entries`
  ADD KEY `content_category_content_entries_content_entry_id_foreign` (`content_entry_id`),
  ADD KEY `content_category_content_entries_content_category_id_foreign` (`content_category_id`);

--
-- Indexes for table `content_entries`
--
ALTER TABLE `content_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_entries_content_type_id_foreign` (`content_type_id`),
  ADD KEY `content_entries_user_id_foreign` (`user_id`);

--
-- Indexes for table `content_entry_fields`
--
ALTER TABLE `content_entry_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_entry_fields_valuable_id_valuable_type_index` (`valuable_id`,`valuable_type`),
  ADD KEY `content_entry_fields_content_entry_id_foreign` (`content_entry_id`),
  ADD KEY `content_entry_fields_content_type_field_type_id_foreign` (`content_type_field_type_id`);

--
-- Indexes for table `content_entry_field_int`
--
ALTER TABLE `content_entry_field_int`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_entry_field_int_content_entry_field_id_foreign` (`content_entry_field_id`);

--
-- Indexes for table `content_entry_field_long`
--
ALTER TABLE `content_entry_field_long`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_entry_field_long_content_entry_field_id_foreign` (`content_entry_field_id`);

--
-- Indexes for table `content_entry_field_short`
--
ALTER TABLE `content_entry_field_short`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_entry_field_short_content_entry_field_id_foreign` (`content_entry_field_id`);

--
-- Indexes for table `content_entry_relations`
--
ALTER TABLE `content_entry_relations`
  ADD KEY `content_entry_relations_content_entry_1_id_foreign` (`content_entry_1_id`),
  ADD KEY `content_entry_relations_content_entry_2_id_foreign` (`content_entry_2_id`);

--
-- Indexes for table `content_field_types`
--
ALTER TABLE `content_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_pages`
--
ALTER TABLE `content_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_types_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `content_type_content_field_types`
--
ALTER TABLE `content_type_content_field_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_type_content_field_types_content_type_id_foreign` (`content_type_id`),
  ADD KEY `content_type_content_field_types_content_field_type_id_foreign` (`content_field_type_id`);

--
-- Indexes for table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crash`
--
ALTER TABLE `crash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crash_bet`
--
ALTER TABLE `crash_bet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

--
-- Indexes for table `dailycat`
--
ALTER TABLE `dailycat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `dailycounter`
--
ALTER TABLE `dailycounter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway`
--
ALTER TABLE `gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ig_accounts`
--
ALTER TABLE `ig_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `league_tables`
--
ALTER TABLE `league_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`),
  ADD KEY `menus_group_id_foreign` (`group_id`);

--
-- Indexes for table `menu_groups`
--
ALTER TABLE `menu_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `online_gamer`
--
ALTER TABLE `online_gamer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_result`
--
ALTER TABLE `online_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymethod`
--
ALTER TABLE `paymethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`module_name`,`permission`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seen_annouce`
--
ALTER TABLE `seen_annouce`
  ADD PRIMARY KEY (`user_id`,`contact_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `slideshowcat`
--
ALTER TABLE `slideshowcat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `portalid` (`portalid`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ticket_user_id` (`user_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ticket_id_idx` (`ticket_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admingroup`
--
ALTER TABLE `admingroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_levelcat`
--
ALTER TABLE `admin_levelcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `admin_levellist`
--
ALTER TABLE `admin_levellist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `advertisecat`
--
ALTER TABLE `advertisecat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `affiliate`
--
ALTER TABLE `affiliate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `api_token`
--
ALTER TABLE `api_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bets`
--
ALTER TABLE `bets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bet_form`
--
ALTER TABLE `bet_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casino`
--
ALTER TABLE `casino`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `casino_settings`
--
ALTER TABLE `casino_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `change_unit`
--
ALTER TABLE `change_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contenttype`
--
ALTER TABLE `contenttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_categories`
--
ALTER TABLE `content_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_entries`
--
ALTER TABLE `content_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_entry_fields`
--
ALTER TABLE `content_entry_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_entry_field_int`
--
ALTER TABLE `content_entry_field_int`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `content_pages`
--
ALTER TABLE `content_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `continent`
--
ALTER TABLE `continent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `crash`
--
ALTER TABLE `crash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crash_bet`
--
ALTER TABLE `crash_bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailycat`
--
ALTER TABLE `dailycat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dailycounter`
--
ALTER TABLE `dailycounter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateway`
--
ALTER TABLE `gateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leagues`
--
ALTER TABLE `leagues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `league_tables`
--
ALTER TABLE `league_tables`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `menu_groups`
--
ALTER TABLE `menu_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `online_gamer`
--
ALTER TABLE `online_gamer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_result`
--
ALTER TABLE `online_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymethod`
--
ALTER TABLE `paymethod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=624;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slideshowcat`
--
ALTER TABLE `slideshowcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertise`
--
ALTER TABLE `advertise`
  ADD CONSTRAINT `r41` FOREIGN KEY (`portalid`) REFERENCES `setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `advertisecat`
--
ALTER TABLE `advertisecat`
  ADD CONSTRAINT `r40` FOREIGN KEY (`portalid`) REFERENCES `setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dailycat`
--
ALTER TABLE `dailycat`
  ADD CONSTRAINT `r32` FOREIGN KEY (`portalid`) REFERENCES `setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD CONSTRAINT `r42` FOREIGN KEY (`portalid`) REFERENCES `setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slideshowcat`
--
ALTER TABLE `slideshowcat`
  ADD CONSTRAINT `r18` FOREIGN KEY (`portalid`) REFERENCES `setting` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
