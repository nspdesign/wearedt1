-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 09:30 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puneskincare`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners_managements`
--

CREATE TABLE `banners_managements` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `url_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners_or_sliders`
--

CREATE TABLE `banners_or_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `url_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `banner_width` int(10) UNSIGNED DEFAULT NULL,
  `banner_height` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_authors`
--

CREATE TABLE `blog_authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_authors`
--

INSERT INTO `blog_authors` (`id`, `author_name`, `email_id`, `contact_details`, `photo`, `description`, `sorting_order`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Rane', 'admin@puneskincare.com', '8055533589', NULL, '<p>About Dr. Rane</p>', 11, 'Yes', '2019-11-25 22:20:18', '2019-11-25 22:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `description`, `seo_url`, `sorting_order`, `meta_title`, `meta_description`, `meta_keywords`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Related tio Skin', NULL, 'skin', 11, NULL, NULL, NULL, 'Yes', '2019-11-25 22:17:20', '2019-11-25 22:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_blog_post`
--

CREATE TABLE `blog_category_blog_post` (
  `blog_category_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_post_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category_blog_post`
--

INSERT INTO `blog_category_blog_post` (`blog_category_id`, `blog_post_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aprroved` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blog_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_favourite_categories`
--

CREATE TABLE `blog_favourite_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blog_category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_content` text COLLATE utf8mb4_unicode_ci,
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `schedule_publish_date` datetime DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `authors_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `blog_content`, `summary`, `seo_url`, `featured_image`, `sorting_order`, `schedule_publish_date`, `meta_title`, `meta_description`, `meta_keywords`, `display_status`, `created_at`, `updated_at`, `authors_name_id`) VALUES
(1, 'Skin Problems in Cold Skin Problems in Cold Skin Problems in Cold', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et consectetur libero. Phasellus nibh tellus, dapibus egestas ante a, elementum hendrerit dui. Ut dictum leo eu ornare rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi interdum bibendum augue id molestie. Aliquam a ante sit amet eros semper ultricies. Quisque facilisis tortor in laoreet gravida. Nam porttitor massa mauris. Aenean ac pharetra lectus. In urna lacus, pretium eget posuere volutpat, vehicula in turpis.</p>\r\n\r\n<p>Sed aliquet enim non tortor sollicitudin vestibulum. Phasellus ac tristique ipsum, eget sollicitudin sem. Vestibulum ut vulputate sem, quis viverra est. Phasellus ut auctor nisi. Sed sed turpis lobortis, bibendum odio eu, commodo turpis. Phasellus in posuere nulla. Donec porta tempus eleifend. Sed sit amet massa imperdiet, laoreet dui nec, varius dolor. Proin quis tellus ac quam laoreet bibendum. Nunc quis arcu nec leo elementum pellentesque. Pellentesque pharetra lectus purus, nec ultricies leo gravida ac. Duis fermentum metus nec mi commodo feugiat.</p>\r\n\r\n<p>&nbsp;</p>', NULL, 'skin-problems-in-cold', NULL, 11, NULL, NULL, NULL, NULL, 'Yes', '2019-11-25 22:21:33', '2019-11-25 22:35:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_blog_tag`
--

CREATE TABLE `blog_post_blog_tag` (
  `blog_post_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_tag_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brochure_categories`
--

CREATE TABLE `brochure_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_width` int(10) UNSIGNED DEFAULT NULL,
  `image_height` int(10) UNSIGNED DEFAULT NULL,
  `pdf_brochure_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brochure_images`
--

CREATE TABLE `brochure_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brochure_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_block1s`
--

CREATE TABLE `content_block1s` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_categories`
--

CREATE TABLE `content_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `count_blocks`
--

CREATE TABLE `count_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `count_blocks`
--

INSERT INTO `count_blocks` (`id`, `title`, `icon_name`, `counter`, `additional_text`, `sorting_order`, `miscellaneous_1`, `miscellaneous_2`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Skin Treatments', 'fa-users', '100', 'Plus', 1, NULL, NULL, 'Yes', '2019-11-25 09:03:15', '2019-11-25 09:03:15'),
(2, 'Hair Treatments', 'fa-users', '210', 'Plus', 2, 'yellow', NULL, 'Yes', '2019-11-25 09:03:47', '2019-11-25 09:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `crm_customers`
--

CREATE TABLE `crm_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `crm_status_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_documents`
--

CREATE TABLE `crm_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_notes`
--

CREATE TABLE `crm_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_statuses`
--

CREATE TABLE `crm_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_notes`
--

CREATE TABLE `dashboard_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `album_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_albums`
--

CREATE TABLE `download_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dwn_categories`
--

CREATE TABLE `dwn_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email_alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_email_alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expense_category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourite_posts`
--

CREATE TABLE `favourite_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favourite_category_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_post_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_contacts`
--

CREATE TABLE `form_contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_4` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `alt_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `album_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `display_title`, `description`, `alt_text`, `image_title`, `miscellaneous_1`, `sorting_order`, `created_at`, `updated_at`, `album_name_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 1, '2019-11-25 23:50:19', '2019-11-25 23:50:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image_albums`
--

CREATE TABLE `image_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_albums`
--

INSERT INTO `image_albums` (`id`, `album_name`, `description`, `sorting_order`, `seo_url`, `meta_title`, `meta_description`, `meta_keywords`, `display_status`, `created_at`, `updated_at`, `category_name_id`) VALUES
(1, 'Demo Album', NULL, 1, 'demo', NULL, NULL, NULL, 'Yes', '2019-11-25 23:49:54', '2019-11-25 23:49:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `img_categories`
--

CREATE TABLE `img_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `img_categories`
--

INSERT INTO `img_categories` (`id`, `category_name`, `description`, `sorting_order`, `seo_url`, `meta_title`, `meta_description`, `meta_keywords`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Images', NULL, 1, 'images', NULL, NULL, NULL, 'Yes', '2019-11-25 23:49:12', '2019-11-25 23:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `income_category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inner_page_gallery_dynamics`
--

CREATE TABLE `inner_page_gallery_dynamics` (
  `id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inner_page_gallery_dynamics`
--

INSERT INTO `inner_page_gallery_dynamics` (`id`, `caption`, `alt_text`, `image_title`, `sorting_order`, `miscellaneous_1`, `created_at`, `updated_at`, `page_name_id`) VALUES
(1, NULL, NULL, NULL, 1, NULL, '2019-11-25 22:59:17', '2019-11-25 22:59:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inner_page_gallery_statics`
--

CREATE TABLE `inner_page_gallery_statics` (
  `id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inner_page_tabs_dynamic_pages`
--

CREATE TABLE `inner_page_tabs_dynamic_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `tab_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_content` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inner_page_tabs_static_pages`
--

CREATE TABLE `inner_page_tabs_static_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `tab_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_content` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `disk`, `mime_type`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\InnerPageGalleryDynamic', 1, 'images', '1558721152-1511501461-dengue', '1558721152-1511501461-dengue.jpeg', 'public', 'image/jpeg', 51437, '[]', '[]', 1, '2019-11-25 22:59:09', '2019-11-25 22:59:17'),
(2, 'App\\InnerPageGalleryDynamic', 1, 'images', '1558682947-1550781792-1504786840-2', '1558682947-1550781792-1504786840-2.jpg', 'public', 'image/jpeg', 170674, '[]', '[]', 2, '2019-11-25 22:59:13', '2019-11-25 22:59:17'),
(3, 'App\\Image', 1, 'images', 'chalk-1551571_1920', 'chalk-1551571_1920.jpg', 'public', 'image/jpeg', 384219, '[]', '[]', 3, '2019-11-25 23:50:03', '2019-11-25 23:50:19'),
(4, 'App\\Image', 1, 'images', '1558721152-1511501461-dengue', '1558721152-1511501461-dengue.jpeg', 'public', 'image/jpeg', 51437, '[]', '[]', 4, '2019-11-25 23:50:12', '2019-11-25 23:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messenger_topics`
--

CREATE TABLE `messenger_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `sender_read_at` timestamp NULL DEFAULT NULL,
  `receiver_read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_11_09_004016_create_combined_1562666454_permissions_table', 1),
(2, '2019_11_09_004016_create_combined_1562666460_roles_table', 1),
(3, '2019_11_09_004016_create_combined_1562666471_users_table', 1),
(4, '2019_11_09_004016_create_combined_1562666512_user_actions_table', 1),
(5, '2019_11_09_004016_create_combined_1562666547_expense_categories_table', 1),
(6, '2019_11_09_004016_create_combined_1562666553_income_categories_table', 1),
(7, '2019_11_09_004016_create_combined_1562666559_incomes_table', 1),
(8, '2019_11_09_004016_create_combined_1562666571_expenses_table', 1),
(9, '2019_11_09_004016_create_combined_1562666634_task_statuses_table', 1),
(10, '2019_11_09_004016_create_combined_1562666641_task_tags_table', 1),
(11, '2019_11_09_004016_create_combined_1562666650_tasks_table', 1),
(12, '2019_11_09_004016_create_combined_1562743457_banners_or_sliders_table', 1),
(13, '2019_11_09_004016_create_combined_1562743586_banner_categories_table', 1),
(14, '2019_11_09_004016_create_combined_1562744709_banners_managements_table', 1),
(15, '2019_11_09_004016_create_combined_1562744861_page_categories_table', 1),
(16, '2019_11_09_004016_create_combined_1562744923_pages_table', 1),
(17, '2019_11_09_004016_create_combined_1562745034_inner_page_tabs_dynamic_pages_table', 1),
(18, '2019_11_09_004016_create_combined_1562745162_inner_page_gallery_dynamics_table', 1),
(19, '2019_11_09_004016_create_combined_1562745326_static_pages1s_table', 1),
(20, '2019_11_09_004016_create_combined_1562745416_inner_page_tabs_static_pages_table', 1),
(21, '2019_11_09_004016_create_combined_1562745511_inner_page_gallery_statics_table', 1),
(22, '2019_11_09_004016_create_combined_1562745642_brochure_categories_table', 1),
(23, '2019_11_09_004016_create_combined_1562745742_brochure_images_table', 1),
(24, '2019_11_09_004016_create_combined_1562745883_testimonial_categories_table', 1),
(25, '2019_11_09_004016_create_combined_1562746043_testimonials_table', 1),
(26, '2019_11_09_004016_create_combined_1562746526_faq_categories_table', 1),
(27, '2019_11_09_004016_create_combined_1562746602_questions_table', 1),
(28, '2019_11_09_004016_create_combined_1562747160_short_news_table', 1),
(29, '2019_11_09_004016_create_combined_1562747354_content_categories_table', 1),
(30, '2019_11_09_004016_create_combined_1562747443_content_block1s_table', 1),
(31, '2019_11_09_004016_create_combined_1562747588_services_blocks_table', 1),
(32, '2019_11_09_004016_create_combined_1562747775_count_blocks_table', 1),
(33, '2019_11_09_004016_create_combined_1562747881_team_members_table', 1),
(34, '2019_11_09_004016_create_combined_1562767130_quote_of_the_days_table', 1),
(35, '2019_11_09_004016_create_combined_1562767160_dashboard_notes_table', 1),
(36, '2019_11_09_004016_create_combined_1562769052_form_contacts_table', 1),
(37, '2019_11_09_004016_create_combined_1562769681_website_settings_table', 1),
(38, '2019_11_09_004016_create_combined_1562769984_email_settings_table', 1),
(39, '2019_11_09_004016_create_combined_1562772916_public_users_table', 1),
(40, '2019_11_09_004016_create_combined_1562806701_product_categories_table', 1),
(41, '2019_11_09_004016_create_combined_1562806795_product_tags_table', 1),
(42, '2019_11_09_004016_create_combined_1562808068_products_table', 1),
(43, '2019_11_09_004016_create_combined_1562808196_img_categories_table', 1),
(44, '2019_11_09_004016_create_combined_1562808298_image_albums_table', 1),
(45, '2019_11_09_004016_create_combined_1562808606_images_table', 1),
(46, '2019_11_09_004016_create_combined_1562810026_vdo_categories_table', 1),
(47, '2019_11_09_004016_create_combined_1562810102_video_albums_table', 1),
(48, '2019_11_09_004016_create_combined_1562810223_videos_table', 1),
(49, '2019_11_09_004016_create_combined_1562810330_dwn_categories_table', 1),
(50, '2019_11_09_004016_create_combined_1562810492_download_albums_table', 1),
(51, '2019_11_09_004016_create_combined_1562810562_downloads_table', 1),
(52, '2019_11_09_004016_create_combined_1562810721_news_table', 1),
(53, '2019_11_09_004016_create_combined_1562810904_events_table', 1),
(54, '2019_11_09_004016_create_combined_1562811016_blog_categories_table', 1),
(55, '2019_11_09_004016_create_combined_1562811091_blog_tags_table', 1),
(56, '2019_11_09_004016_create_combined_1562811240_blog_authors_table', 1),
(57, '2019_11_09_004016_create_combined_1562811505_blog_posts_table', 1),
(58, '2019_11_09_004016_create_combined_1562811646_blog_comments_table', 1),
(59, '2019_11_09_004016_create_combined_1562812036_blog_favourite_categories_table', 1),
(60, '2019_11_09_004016_create_combined_1562812365_favourite_posts_table', 1),
(61, '2019_11_09_004016_create_combined_1562910653_crm_statuses_table', 1),
(62, '2019_11_09_004016_create_combined_1562910947_crm_customers_table', 1),
(63, '2019_11_09_004016_create_combined_1562911036_crm_notes_table', 1),
(64, '2019_11_09_004016_create_combined_1562911271_crm_documents_table', 1),
(65, '2019_11_09_004016_create_media_table', 1),
(66, '2019_11_09_004016_create_messenger_topics_table', 1),
(67, '2019_11_09_004020_add_5dc5eed0db97f_relationships_to_useraction_table', 1),
(68, '2019_11_09_004020_add_5dc5eed12b1a7_relationships_to_bannersmanagement_table', 1),
(69, '2019_11_09_004020_add_5dc5eed16999f_relationships_to_page_table', 1),
(70, '2019_11_09_004020_add_5dc5eed1a582e_relationships_to_innerpagetabsdynamicpage_table', 1),
(71, '2019_11_09_004021_add_5dc5eed1ef187_relationships_to_innerpagegallerydynamic_table', 1),
(72, '2019_11_09_004021_add_5dc5eed23fd3c_relationships_to_innerpagetabsstaticpage_table', 1),
(73, '2019_11_09_004021_add_5dc5eed283cab_relationships_to_innerpagegallerystatic_table', 1),
(74, '2019_11_09_004022_add_5dc5eed2c3df0_relationships_to_brochureimage_table', 1),
(75, '2019_11_09_004022_add_5dc5eed30c69a_relationships_to_imagealbum_table', 1),
(76, '2019_11_09_004022_add_5dc5eed355a5e_relationships_to_image_table', 1),
(77, '2019_11_09_004022_add_5dc5eed3a4aab_relationships_to_videoalbum_table', 1),
(78, '2019_11_09_004023_add_5dc5eed3e7bb0_relationships_to_video_table', 1),
(79, '2019_11_09_004023_add_5dc5eed43c5e0_relationships_to_downloadalbum_table', 1),
(80, '2019_11_09_004023_add_5dc5eed4813fa_relationships_to_download_table', 1),
(81, '2019_11_09_004024_add_5dc5eed4bd448_relationships_to_testimonial_table', 1),
(82, '2019_11_09_004024_add_5dc5eed50b16a_relationships_to_question_table', 1),
(83, '2019_11_09_004024_add_5dc5eed549129_relationships_to_blogpost_table', 1),
(84, '2019_11_09_004024_add_5dc5eed58c754_relationships_to_blogcomment_table', 1),
(85, '2019_11_09_004025_add_5dc5eed5dee0b_relationships_to_blogfavouritecategory_table', 1),
(86, '2019_11_09_004025_add_5dc5eed62b9c2_relationships_to_favouritepost_table', 1),
(87, '2019_11_09_004026_add_5dc5eed6b6467_relationships_to_contentblock1_table', 1),
(88, '2019_11_09_004026_add_5dc5eed7046cf_relationships_to_crmcustomer_table', 1),
(89, '2019_11_09_004026_add_5dc5eed74dcef_relationships_to_crmnote_table', 1),
(90, '2019_11_09_004026_add_5dc5eed792622_relationships_to_crmdocument_table', 1),
(91, '2019_11_09_004026_create_messenger_messages_table', 1),
(92, '2019_11_09_004027_add_5dc5eed7d7fff_relationships_to_task_table', 1),
(93, '2019_11_09_004027_add_5dc5eed877308_relationships_to_income_table', 1),
(94, '2019_11_09_004028_add_5dc5eed8c0dee_relationships_to_expense_table', 1),
(95, '2019_11_09_004028_create_5dc5eed9167fc_permission_role_table', 1),
(96, '2019_11_09_004028_create_5dc5eed918c8b_role_user_table', 1),
(97, '2019_11_09_004028_create_5dc5eed91bcfb_product_product_category_table', 1),
(98, '2019_11_09_004028_create_5dc5eed92137c_blog_category_blog_post_table', 1),
(99, '2019_11_09_004028_create_5dc5eed926c59_task_task_tag_table', 1),
(100, '2019_11_09_004029_create_5dc5eed91eade_product_product_tag_table', 1),
(101, '2019_11_09_004029_create_5dc5eed924194_blog_post_blog_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `display_name`, `page_content`, `sorting_order`, `seo_url`, `meta_title`, `meta_description`, `meta_keywords`, `display_status`, `created_at`, `updated_at`, `category_name_id`) VALUES
(1, 'About Dr. Rane', 'About Dr. Rane', '<p>vitae. Nam molestie, eros et sollicitudin volutpat, magna nisl pharetra lectus, eget dapibus velit nulla sed magna.</p>\r\n\r\n<p>Fusce ligula est, finibus sit amet dignissim sit amet, convallis sit amet nisl. Integer enim tortor, semper sit amet erat ac, vestibulum gravida odio. Donec blandit quis dui ultricies pharetra. Aliquam non pellentesque arcu, eu laoreet diam. Aenean euismod ante metus, ut dictum lorem varius ut. Proin ullamcorper sem iaculis consectetur pharetra. Fusce sodales ligula vel commodo tempor. Etiam ac lacus auctor, faucibus nunc eu, tristique ligula.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n	<li>Integer sagittis dolor non arcu convallis, non vulputate leo porta.</li>\r\n	<li>Pellentesque ornare arcu at facilisis molestie.</li>\r\n	<li>Fusce id massa facilisis, molestie diam vitae, aliquet mauris.</li>\r\n</ul>', 1, 'about-us', NULL, NULL, NULL, 'Yes', '2019-11-25 22:44:37', '2019-11-25 22:44:37', 3);

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_categories`
--

INSERT INTO `page_categories` (`id`, `category_name`, `display_name`, `description`, `sorting_order`, `seo_url`, `meta_title`, `meta_description`, `meta_keywords`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Skin Solutions', 'Skin Solutions', NULL, 11, 'skin-solutions', NULL, NULL, NULL, 'Yes', '2019-11-25 05:04:07', '2019-11-25 05:04:07'),
(2, 'Hair Solutions', 'Hair Solutions', NULL, 12, 'hair-solutions', NULL, NULL, NULL, 'Yes', '2019-11-25 05:04:29', '2019-11-25 05:04:29'),
(3, 'About', 'About', NULL, 13, 'about', NULL, NULL, NULL, 'Yes', '2019-11-25 05:04:56', '2019-11-25 05:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2019-11-08 17:30:42', '2019-11-08 17:30:42'),
(2, 'permission_access', '2019-11-08 17:30:42', '2019-11-08 17:30:42'),
(3, 'permission_create', '2019-11-08 17:30:42', '2019-11-08 17:30:42'),
(4, 'permission_edit', '2019-11-08 17:30:42', '2019-11-08 17:30:42'),
(5, 'permission_view', '2019-11-08 17:30:42', '2019-11-08 17:30:42'),
(6, 'permission_delete', '2019-11-08 17:30:42', '2019-11-08 17:30:42'),
(7, 'role_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(8, 'role_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(9, 'role_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(10, 'role_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(11, 'role_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(12, 'user_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(13, 'user_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(14, 'user_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(15, 'user_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(16, 'user_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(17, 'user_action_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(18, 'user_action_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(19, 'user_action_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(20, 'user_action_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(21, 'user_action_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(22, 'expense_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(23, 'expense_management_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(24, 'expense_management_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(25, 'expense_management_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(26, 'expense_management_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(27, 'expense_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(28, 'expense_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(29, 'expense_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(30, 'expense_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(31, 'expense_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(32, 'income_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(33, 'income_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(34, 'income_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(35, 'income_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(36, 'income_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(37, 'income_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(38, 'income_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(39, 'income_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(40, 'income_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(41, 'income_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(42, 'expense_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(43, 'expense_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(44, 'expense_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(45, 'expense_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(46, 'expense_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(47, 'task_status_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(48, 'task_status_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(49, 'task_status_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(50, 'task_status_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(51, 'task_status_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(52, 'task_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(53, 'task_management_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(54, 'task_management_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(55, 'task_management_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(56, 'task_management_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(57, 'monthly_report_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(58, 'monthly_report_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(59, 'monthly_report_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(60, 'monthly_report_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(61, 'monthly_report_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(62, 'task_tag_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(63, 'task_tag_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(64, 'task_tag_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(65, 'task_tag_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(66, 'task_tag_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(67, 'task_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(68, 'task_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(69, 'task_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(70, 'task_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(71, 'task_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(72, 'task_calendar_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(73, 'task_calendar_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(74, 'task_calendar_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(75, 'task_calendar_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(76, 'task_calendar_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(77, 'banner_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(78, 'banners_or_slider_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(79, 'banners_or_slider_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(80, 'banners_or_slider_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(81, 'banners_or_slider_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(82, 'banners_or_slider_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(83, 'inner_page_banner_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(84, 'banner_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(85, 'banner_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(86, 'banner_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(87, 'banner_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(88, 'banner_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(89, 'banners_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(90, 'banners_management_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(91, 'banners_management_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(92, 'banners_management_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(93, 'banners_management_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(94, 'pages_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(95, 'dynamic_page_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(96, 'page_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(97, 'page_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(98, 'page_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(99, 'page_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(100, 'page_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(101, 'page_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(102, 'page_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(103, 'page_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(104, 'page_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(105, 'page_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(106, 'inner_page_tabs_dynamic_page_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(107, 'inner_page_tabs_dynamic_page_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(108, 'inner_page_tabs_dynamic_page_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(109, 'inner_page_tabs_dynamic_page_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(110, 'inner_page_tabs_dynamic_page_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(111, 'inner_page_gallery_dynamic_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(112, 'inner_page_gallery_dynamic_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(113, 'inner_page_gallery_dynamic_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(114, 'inner_page_gallery_dynamic_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(115, 'inner_page_gallery_dynamic_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(116, 'static_page_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(117, 'static_pages1_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(118, 'static_pages1_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(119, 'static_pages1_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(120, 'static_pages1_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(121, 'static_pages1_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(122, 'inner_page_tabs_static_page_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(123, 'inner_page_tabs_static_page_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(124, 'inner_page_tabs_static_page_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(125, 'inner_page_tabs_static_page_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(126, 'inner_page_tabs_static_page_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(127, 'inner_page_gallery_static_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(128, 'inner_page_gallery_static_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(129, 'inner_page_gallery_static_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(130, 'inner_page_gallery_static_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(131, 'inner_page_gallery_static_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(132, 'brochure_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(133, 'brochure_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(134, 'brochure_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(135, 'brochure_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(136, 'brochure_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(137, 'brochure_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(138, 'brochure_image_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(139, 'brochure_image_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(140, 'brochure_image_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(141, 'brochure_image_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(142, 'brochure_image_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(143, 'testimonial_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(144, 'testimonial_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(145, 'testimonial_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(146, 'testimonial_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(147, 'testimonial_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(148, 'testimonial_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(149, 'testimonial_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(150, 'testimonial_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(151, 'testimonial_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(152, 'testimonial_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(153, 'testimonial_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(154, 'faq_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(155, 'faq_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(156, 'faq_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(157, 'faq_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(158, 'faq_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(159, 'faq_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(160, 'question_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(161, 'question_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(162, 'question_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(163, 'question_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(164, 'question_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(166, 'short_news_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(167, 'short_news_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(168, 'short_news_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(169, 'short_news_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(170, 'short_news_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(171, 'blocks_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(172, 'content_block_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(173, 'content_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(174, 'content_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(175, 'content_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(176, 'content_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(177, 'content_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(178, 'content_block1_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(179, 'content_block1_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(180, 'content_block1_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(181, 'content_block1_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(182, 'content_block1_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(183, 'services_block_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(184, 'services_block_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(185, 'services_block_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(186, 'services_block_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(187, 'services_block_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(188, 'count_block_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(189, 'count_block_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(190, 'count_block_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(191, 'count_block_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(192, 'count_block_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(193, 'team_member_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(194, 'team_member_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(195, 'team_member_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(196, 'team_member_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(197, 'team_member_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(198, 'quote_of_the_day_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(199, 'quote_of_the_day_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(200, 'quote_of_the_day_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(201, 'quote_of_the_day_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(202, 'quote_of_the_day_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(203, 'dashboard_note_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(204, 'dashboard_note_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(205, 'dashboard_note_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(206, 'dashboard_note_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(207, 'dashboard_note_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(208, 'forms/enquiry_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(209, 'form_contact_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(210, 'form_contact_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(211, 'form_contact_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(212, 'setting_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(213, 'website_setting_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(214, 'website_setting_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(215, 'website_setting_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(216, 'email_setting_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(217, 'email_setting_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(218, 'email_setting_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(219, 'public_user_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(220, 'public_user_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(221, 'public_user_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(222, 'public_user_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(223, 'public_user_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(224, 'public_user_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(225, 'product_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(226, 'product_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(227, 'product_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(228, 'product_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(229, 'product_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(230, 'product_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(231, 'product_tag_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(232, 'product_tag_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(233, 'product_tag_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(234, 'product_tag_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(235, 'product_tag_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(236, 'product_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(237, 'product_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(238, 'product_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(239, 'product_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(240, 'product_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(241, 'gallery_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(242, 'image_gallery_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(243, 'img_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(244, 'img_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(245, 'img_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(246, 'img_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(247, 'img_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(248, 'image_album_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(249, 'image_album_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(250, 'image_album_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(251, 'image_album_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(252, 'image_album_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(253, 'image_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(254, 'image_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(255, 'image_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(256, 'image_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(257, 'image_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(258, 'video_gallery_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(259, 'vdo_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(260, 'vdo_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(261, 'vdo_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(262, 'vdo_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(263, 'vdo_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(264, 'video_album_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(265, 'video_album_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(266, 'video_album_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(267, 'video_album_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(268, 'video_album_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(269, 'video_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(270, 'video_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(271, 'video_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(272, 'video_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(273, 'video_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(274, 'download_gallery_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(275, 'dwn_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(276, 'dwn_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(277, 'dwn_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(278, 'dwn_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(279, 'dwn_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(280, 'download_album_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(281, 'download_album_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(282, 'download_album_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(283, 'download_album_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(284, 'download_album_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(285, 'download_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(286, 'download_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(287, 'download_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(288, 'download_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(289, 'download_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(290, 'news/event_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(291, 'news_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(292, 'news_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(293, 'news_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(294, 'news_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(295, 'news_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(296, 'event_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(297, 'event_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(298, 'event_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(299, 'event_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(300, 'event_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(301, 'blog_management_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(302, 'blog_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(303, 'blog_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(304, 'blog_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(305, 'blog_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(306, 'blog_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(307, 'blog_tag_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(308, 'blog_tag_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(309, 'blog_tag_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(310, 'blog_tag_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(311, 'blog_tag_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(312, 'blog_author_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(313, 'blog_author_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(314, 'blog_author_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(315, 'blog_author_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(316, 'blog_author_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(317, 'blog_post_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(318, 'blog_post_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(319, 'blog_post_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(320, 'blog_post_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(321, 'blog_post_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(322, 'blog_comment_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(323, 'blog_comment_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(324, 'blog_comment_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(325, 'blog_comment_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(326, 'blog_comment_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(327, 'favourite_blog_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(328, 'blog_favourite_category_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(329, 'blog_favourite_category_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(330, 'blog_favourite_category_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(331, 'blog_favourite_category_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(332, 'blog_favourite_category_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(333, 'favourite_post_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(334, 'favourite_post_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(335, 'favourite_post_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(336, 'favourite_post_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(337, 'favourite_post_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(338, 'basic_crm_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(339, 'crm_status_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(340, 'crm_status_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(341, 'crm_status_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(342, 'crm_status_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(343, 'crm_status_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(344, 'crm_customer_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(345, 'crm_customer_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(346, 'crm_customer_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(347, 'crm_customer_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(348, 'crm_customer_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(349, 'crm_note_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(350, 'crm_note_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(351, 'crm_note_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(352, 'crm_note_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(353, 'crm_note_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(354, 'crm_document_access', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(355, 'crm_document_create', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(356, 'crm_document_edit', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(357, 'crm_document_view', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(358, 'crm_document_delete', '2019-11-08 17:30:43', '2019-11-08 17:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(20, 1),
(21, 1),
(22, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(77, 2),
(78, 2),
(81, 2),
(83, 2),
(84, 2),
(87, 2),
(89, 2),
(92, 2),
(94, 2),
(95, 2),
(96, 2),
(99, 2),
(101, 2),
(104, 2),
(106, 2),
(109, 2),
(111, 2),
(114, 2),
(116, 2),
(117, 2),
(120, 2),
(122, 2),
(125, 2),
(127, 2),
(130, 2),
(132, 2),
(133, 2),
(136, 2),
(138, 2),
(141, 2),
(143, 2),
(144, 2),
(147, 2),
(149, 2),
(152, 2),
(154, 2),
(155, 2),
(158, 2),
(160, 2),
(163, 2),
(166, 2),
(169, 2),
(171, 2),
(172, 2),
(173, 2),
(176, 2),
(178, 2),
(181, 2),
(183, 2),
(186, 2),
(188, 2),
(191, 2),
(193, 2),
(196, 2),
(198, 2),
(201, 2),
(203, 2),
(206, 2),
(208, 2),
(209, 2),
(210, 2),
(219, 2),
(220, 2),
(223, 2),
(225, 2),
(226, 2),
(229, 2),
(231, 2),
(234, 2),
(236, 2),
(239, 2),
(241, 2),
(242, 2),
(243, 2),
(246, 2),
(248, 2),
(251, 2),
(253, 2),
(256, 2),
(258, 2),
(259, 2),
(262, 2),
(264, 2),
(267, 2),
(269, 2),
(272, 2),
(274, 2),
(275, 2),
(278, 2),
(280, 2),
(283, 2),
(285, 2),
(288, 2),
(290, 2),
(291, 2),
(294, 2),
(296, 2),
(299, 2),
(301, 2),
(302, 2),
(305, 2),
(307, 2),
(310, 2),
(312, 2),
(315, 2),
(317, 2),
(320, 2),
(322, 2),
(325, 2),
(327, 2),
(328, 2),
(331, 2),
(333, 2),
(336, 2),
(338, 2),
(339, 2),
(342, 2),
(344, 2),
(347, 2),
(349, 2),
(352, 2),
(354, 2),
(357, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(4,2) DEFAULT NULL,
  `strike_out_price` double(4,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_2` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_2` text COLLATE utf8mb4_unicode_ci,
  `miscellaneous_3` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_product_category`
--

CREATE TABLE `product_product_category` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_product_tag`
--

CREATE TABLE `product_product_tag` (
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_tag_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `public_users`
--

CREATE TABLE `public_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quote_of_the_days`
--

CREATE TABLE `quote_of_the_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `quote_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(2, 'Simple user', '2019-11-08 17:30:43', '2019-11-08 17:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `services_blocks`
--

CREATE TABLE `services_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `url_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `miscellaneous_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miscellaneous_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services_blocks`
--

INSERT INTO `services_blocks` (`id`, `title`, `icon_name`, `photo`, `content`, `url_link`, `sorting_order`, `miscellaneous_1`, `miscellaneous_2`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Skin Solutions', NULL, '1574678239-logo1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et consectetur libero. Phasellus nibh tellus, dapibus egestas ante a, elementum hendrerit dui.</p>', '#', 11, NULL, NULL, 'Yes', '2019-11-25 05:07:19', '2019-11-25 05:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `short_news`
--

CREATE TABLE `short_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `short_news`
--

INSERT INTO `short_news` (`id`, `news_type`, `news_body`, `created_at`, `updated_at`) VALUES
(1, 'Header', 'Short News Here....', '2019-11-25 04:37:59', '2019-11-25 04:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `static_pages1s`
--

CREATE TABLE `static_pages1s` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_pages1s`
--

INSERT INTO `static_pages1s` (`id`, `page_name`, `display_name`, `page_content`, `sorting_order`, `seo_url`, `meta_title`, `meta_description`, `meta_keywords`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Home Page - Welcome Page', 'Home Page - Welcome Page', '<p><span style=\"font-size:22px\"><strong>Welcome to Dr. Rane&#39;s Skin and Hair Clinic</strong></span></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et consectetur libero. Phasellus nibh tellus, dapibus egestas ante a, elementum hendrerit dui. Ut dictum leo eu ornare rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi interdum bibendum augue id molestie. Aliquam a ante sit amet eros semper ultricies. Quisque facilisis tortor in laoreet gravida. Nam porttitor massa mauris. Aenean ac pharetra lectus. In urna lacus, pretium eget posuere volutpat, vehicula in turpis.</p>\r\n\r\n<p>Sed aliquet enim non tortor sollicitudin vestibulum. Phasellus ac tristique ipsum, eget sollicitudin sem. Vestibulum ut vulputate sem, quis viverra est. Phasellus ut auctor nisi. Sed sed turpis lobortis, bibendum odio eu, commodo turpis. Phasellus in posuere nulla. Donec porta tempus eleifend. Sed sit amet massa imperdiet, laoreet dui nec, varius dolor. Proin quis tellus ac quam laoreet bibendum. Nunc quis arcu nec leo elementum pellentesque. Pellentesque pharetra lectus purus, nec ultricies leo gravida ac. Duis fermentum metus nec mi commodo feugiat.</p>', 1, 'home', NULL, NULL, NULL, 'Yes', '2019-11-25 08:35:42', '2019-11-25 08:36:37'),
(2, 'Image Gallery', 'Image Gallery', NULL, 1, 'image-gallery', NULL, NULL, NULL, 'Yes', '2019-11-25 23:45:24', '2019-11-25 23:45:24'),
(3, 'Testimonials', 'Testimonials', NULL, 1, 'testimonials', NULL, NULL, NULL, 'Yes', '2019-11-25 23:55:28', '2019-11-25 23:55:28'),
(4, 'Contact Us', 'Contact Us', '<p><strong>Address :</strong><br />\r\nNANO Homes, Ravet.<br />\r\n<br />\r\n<strong>Mobile :</strong><br />\r\n98754455445<br />\r\n<br />\r\n<strong>Email Id </strong>:<br />\r\nadmin@puneskincare.com<br />\r\n&nbsp;</p>', 1, 'contact-us', NULL, NULL, NULL, 'Yes', '2019-11-26 00:16:35', '2019-11-26 00:25:15'),
(5, 'Blog', 'Blog', NULL, 1, 'blog', NULL, NULL, NULL, 'Yes', '2019-11-26 01:01:58', '2019-11-26 01:01:58'),
(6, 'Disclaimer', 'Disclaimer', '<p>Integer non congue magna. Nullam nec ipsum libero. Integer molestie urna ac orci aliquet blandit. Nunc vestibulum sed ante eu commodo. Sed auctor nulla a massa porta, id aliquet tellus venenatis. Vivamus pulvinar sem ut pellentesque pharetra. Vestibulum sed convallis purus, at accumsan metus. Praesent maximus orci quis lorem porttitor luctus. Phasellus lobortis lacinia diam, in bibendum risus maximus suscipit. Maecenas id nisi at risus accumsan elementum ut quis leo. Pellentesque id mauris at tortor consectetur ullamcorper ac non odio. Nunc blandit augue bibendum metus egestas viverra. Sed ipsum libero, cursus non viverra quis, consectetur ut orci. Aenean ornare, orci vel facilisis ullamcorper, sem eros maximus tortor, at aliquet lorem diam vitae eros.</p>', 1, 'disclaimer', NULL, NULL, NULL, 'Yes', '2019-11-26 02:38:07', '2019-11-26 02:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_statuses`
--

CREATE TABLE `task_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_statuses`
--

INSERT INTO `task_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Open', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(2, 'In progress', '2019-11-08 17:30:43', '2019-11-08 17:30:43'),
(3, 'Close', '2019-11-08 17:30:43', '2019-11-08 17:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `task_tags`
--

CREATE TABLE `task_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_task_tag`
--

CREATE TABLE `task_task_tag` (
  `task_id` int(10) UNSIGNED DEFAULT NULL,
  `task_tag_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `testimonial_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `description`, `testimonial_by`, `email_id`, `photo`, `sorting_order`, `created_at`, `updated_at`, `category_name_id`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et consectetur libero. Phasellus nibh tellus, dapibus egestas ante a, elementum hendrerit dui. Ut dictum leo eu ornare rutrum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi interdum bibendum augue id molestie. Aliquam a ante sit amet eros semper ultricies. Quisque facilisis tortor in laoreet gravida. Nam porttitor massa mauris. Aenean ac pharetra lectus. In urna lacus, pretium eget posuere volutpat, vehicula in turpis.</p>', 'Nilesh Patil', 'Business', NULL, 11, '2019-11-25 23:56:55', '2019-11-26 00:10:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_categories`
--

CREATE TABLE `testimonial_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial_categories`
--

INSERT INTO `testimonial_categories` (`id`, `category_name`, `description`, `sorting_order`, `seo_url`, `meta_title`, `meta_description`, `meta_keywords`, `display_status`, `created_at`, `updated_at`) VALUES
(1, 'Testimonials', NULL, 1, 'testimonials', NULL, NULL, NULL, 'Yes', '2019-11-25 23:56:19', '2019-11-25 23:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$Qi/77ab3Lz9Ub/VT08XQIO1Ai.HDc8exXInrktmE7IEQNdSR0bMZS', '', '2019-11-08 17:30:43', '2019-11-08 17:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_actions`
--

CREATE TABLE `user_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_actions`
--

INSERT INTO `user_actions` (`id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'created', 'short_news', 1, '2019-11-25 04:37:59', '2019-11-25 04:37:59', 1),
(2, 'updated', 'short_news', 1, '2019-11-25 04:56:25', '2019-11-25 04:56:25', 1),
(3, 'created', 'page_categories', 1, '2019-11-25 05:04:07', '2019-11-25 05:04:07', 1),
(4, 'created', 'page_categories', 2, '2019-11-25 05:04:29', '2019-11-25 05:04:29', 1),
(5, 'created', 'page_categories', 3, '2019-11-25 05:04:56', '2019-11-25 05:04:56', 1),
(6, 'created', 'services_blocks', 1, '2019-11-25 05:07:19', '2019-11-25 05:07:19', 1),
(7, 'created', 'static_pages1s', 1, '2019-11-25 08:35:42', '2019-11-25 08:35:42', 1),
(8, 'updated', 'static_pages1s', 1, '2019-11-25 08:36:37', '2019-11-25 08:36:37', 1),
(9, 'created', 'count_blocks', 1, '2019-11-25 09:03:15', '2019-11-25 09:03:15', 1),
(10, 'created', 'count_blocks', 2, '2019-11-25 09:03:47', '2019-11-25 09:03:47', 1),
(11, 'created', 'blog_categories', 1, '2019-11-25 22:17:21', '2019-11-25 22:17:21', 1),
(12, 'created', 'blog_authors', 1, '2019-11-25 22:20:18', '2019-11-25 22:20:18', 1),
(13, 'created', 'blog_posts', 1, '2019-11-25 22:21:33', '2019-11-25 22:21:33', 1),
(14, 'updated', 'blog_posts', 1, '2019-11-25 22:35:18', '2019-11-25 22:35:18', 1),
(15, 'created', 'pages', 1, '2019-11-25 22:44:37', '2019-11-25 22:44:37', 1),
(16, 'created', 'inner_page_gallery_dynamics', 1, '2019-11-25 22:59:17', '2019-11-25 22:59:17', 1),
(17, 'created', 'static_pages1s', 2, '2019-11-25 23:45:24', '2019-11-25 23:45:24', 1),
(18, 'created', 'img_categories', 1, '2019-11-25 23:49:12', '2019-11-25 23:49:12', 1),
(19, 'created', 'image_albums', 1, '2019-11-25 23:49:54', '2019-11-25 23:49:54', 1),
(20, 'created', 'images', 1, '2019-11-25 23:50:19', '2019-11-25 23:50:19', 1),
(21, 'created', 'static_pages1s', 3, '2019-11-25 23:55:28', '2019-11-25 23:55:28', 1),
(22, 'created', 'testimonial_categories', 1, '2019-11-25 23:56:19', '2019-11-25 23:56:19', 1),
(23, 'created', 'testimonials', 1, '2019-11-25 23:56:55', '2019-11-25 23:56:55', 1),
(24, 'updated', 'testimonials', 1, '2019-11-26 00:10:57', '2019-11-26 00:10:57', 1),
(25, 'created', 'static_pages1s', 4, '2019-11-26 00:16:35', '2019-11-26 00:16:35', 1),
(26, 'updated', 'static_pages1s', 4, '2019-11-26 00:24:51', '2019-11-26 00:24:51', 1),
(27, 'updated', 'static_pages1s', 4, '2019-11-26 00:25:15', '2019-11-26 00:25:15', 1),
(28, 'created', 'static_pages1s', 5, '2019-11-26 01:01:58', '2019-11-26 01:01:58', 1),
(29, 'created', 'static_pages1s', 6, '2019-11-26 02:38:07', '2019-11-26 02:38:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vdo_categories`
--

CREATE TABLE `vdo_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_embed_src` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_album_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_albums`
--

CREATE TABLE `video_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `sorting_order` int(10) UNSIGNED DEFAULT NULL,
  `seo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `display_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_mail_alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_mail_alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_signature` text COLLATE utf8mb4_unicode_ci,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whats_app_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_mode_text` text COLLATE utf8mb4_unicode_ci,
  `api_codes_header` text COLLATE utf8mb4_unicode_ci,
  `api_codes_footer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners_managements`
--
ALTER TABLE `banners_managements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323765_5d25978af1139` (`banner_category_id`);

--
-- Indexes for table `banners_or_sliders`
--
ALTER TABLE `banners_or_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_authors`
--
ALTER TABLE `blog_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_blog_post`
--
ALTER TABLE `blog_category_blog_post`
  ADD KEY `fk_p_324080_324083_blogpo_5dc5eed9214ba` (`blog_category_id`),
  ADD KEY `fk_p_324083_324080_blogca_5dc5eed921560` (`blog_post_id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324084_5d269d0476925` (`blog_name_id`);

--
-- Indexes for table `blog_favourite_categories`
--
ALTER TABLE `blog_favourite_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324086_5d269e8b03939` (`blog_category_id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324083_5d269c813d385` (`authors_name_id`);

--
-- Indexes for table `blog_post_blog_tag`
--
ALTER TABLE `blog_post_blog_tag`
  ADD KEY `fk_p_324083_324081_blogta_5dc5eed9243a1` (`blog_post_id`),
  ADD KEY `fk_p_324081_324083_blogpo_5dc5eed924433` (`blog_tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brochure_categories`
--
ALTER TABLE `brochure_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brochure_images`
--
ALTER TABLE `brochure_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323781_5d259b93b4955` (`category_name_id`);

--
-- Indexes for table `content_block1s`
--
ALTER TABLE `content_block1s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323805_5d25a23887865` (`category_name_id`);

--
-- Indexes for table `content_categories`
--
ALTER TABLE `content_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `count_blocks`
--
ALTER TABLE `count_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customers`
--
ALTER TABLE `crm_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324427_5d2820e95dec8` (`crm_status_id`);

--
-- Indexes for table `crm_documents`
--
ALTER TABLE `crm_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324429_5d28222c4843e` (`customer_id`);

--
-- Indexes for table `crm_notes`
--
ALTER TABLE `crm_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324428_5d282141e8104` (`customer_id`);

--
-- Indexes for table `crm_statuses`
--
ALTER TABLE `crm_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_notes`
--
ALTER TABLE `dashboard_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324075_5d2698c84dcdd` (`album_name_id`);

--
-- Indexes for table `download_albums`
--
ALTER TABLE `download_albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324074_5d26988205018` (`category_name_id`);

--
-- Indexes for table `dwn_categories`
--
ALTER TABLE `dwn_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323432_5d246650608de` (`expense_category_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_posts`
--
ALTER TABLE `favourite_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324087_5d269fd2f2467` (`favourite_category_id`),
  ADD KEY `324087_5d269fd338901` (`blog_post_id`);

--
-- Indexes for table `form_contacts`
--
ALTER TABLE `form_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324067_5d2691252250a` (`album_name_id`);

--
-- Indexes for table `image_albums`
--
ALTER TABLE `image_albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324066_5d268ff0cf91e` (`category_name_id`);

--
-- Indexes for table `img_categories`
--
ALTER TABLE `img_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323431_5d246644d48e8` (`income_category_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inner_page_gallery_dynamics`
--
ALTER TABLE `inner_page_gallery_dynamics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323774_5d25994f93188` (`page_name_id`);

--
-- Indexes for table `inner_page_gallery_statics`
--
ALTER TABLE `inner_page_gallery_statics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323778_5d259aac6fb0e` (`page_name_id`);

--
-- Indexes for table `inner_page_tabs_dynamic_pages`
--
ALTER TABLE `inner_page_tabs_dynamic_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323773_5d2598cfca3d7` (`page_name_id`);

--
-- Indexes for table `inner_page_tabs_static_pages`
--
ALTER TABLE `inner_page_tabs_static_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323777_5d259a4ed231b` (`page_name_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messenger_messages_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `messenger_topics`
--
ALTER TABLE `messenger_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323772_5d259860744bc` (`category_name_id`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `fk_p_323424_323425_role_p_5dc5eed916a29` (`permission_id`),
  ADD KEY `fk_p_323425_323424_permis_5dc5eed916ae9` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_product_category`
--
ALTER TABLE `product_product_category`
  ADD KEY `fk_p_324062_324060_produc_5dc5eed91bf15` (`product_id`),
  ADD KEY `fk_p_324060_324062_produc_5dc5eed91c04f` (`product_category_id`);

--
-- Indexes for table `product_product_tag`
--
ALTER TABLE `product_product_tag`
  ADD KEY `fk_p_324062_324061_produc_5dc5eed91ece8` (`product_id`),
  ADD KEY `fk_p_324061_324062_produc_5dc5eed91eddd` (`product_tag_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_users`
--
ALTER TABLE `public_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323799_5d259eefbe970` (`category_name_id`);

--
-- Indexes for table `quote_of_the_days`
--
ALTER TABLE `quote_of_the_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_p_323425_323426_user_r_5dc5eed918da5` (`role_id`),
  ADD KEY `fk_p_323426_323425_role_u_5dc5eed918e4c` (`user_id`);

--
-- Indexes for table `services_blocks`
--
ALTER TABLE `services_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short_news`
--
ALTER TABLE `short_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_pages1s`
--
ALTER TABLE `static_pages1s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323437_5d2466a4cafaf` (`status_id`),
  ADD KEY `323437_5d2466a4f321a` (`user_id`);

--
-- Indexes for table `task_statuses`
--
ALTER TABLE `task_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_tags`
--
ALTER TABLE `task_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_task_tag`
--
ALTER TABLE `task_task_tag`
  ADD KEY `fk_p_323437_323436_taskta_5dc5eed926e2e` (`task_id`),
  ADD KEY `fk_p_323436_323437_task_t_5dc5eed926ef2` (`task_tag_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323785_5d259cc19db32` (`category_name_id`);

--
-- Indexes for table `testimonial_categories`
--
ALTER TABLE `testimonial_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_actions`
--
ALTER TABLE `user_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `323427_5d246616670bb` (`user_id`);

--
-- Indexes for table `vdo_categories`
--
ALTER TABLE `vdo_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324071_5d26977493477` (`video_album_id`);

--
-- Indexes for table `video_albums`
--
ALTER TABLE `video_albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `324070_5d2696fba71d9` (`category_name_id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners_managements`
--
ALTER TABLE `banners_managements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners_or_sliders`
--
ALTER TABLE `banners_or_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_authors`
--
ALTER TABLE `blog_authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_favourite_categories`
--
ALTER TABLE `blog_favourite_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brochure_categories`
--
ALTER TABLE `brochure_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brochure_images`
--
ALTER TABLE `brochure_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_block1s`
--
ALTER TABLE `content_block1s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_categories`
--
ALTER TABLE `content_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `count_blocks`
--
ALTER TABLE `count_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crm_customers`
--
ALTER TABLE `crm_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_documents`
--
ALTER TABLE `crm_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_notes`
--
ALTER TABLE `crm_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_statuses`
--
ALTER TABLE `crm_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_notes`
--
ALTER TABLE `dashboard_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download_albums`
--
ALTER TABLE `download_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dwn_categories`
--
ALTER TABLE `dwn_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite_posts`
--
ALTER TABLE `favourite_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_contacts`
--
ALTER TABLE `form_contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_albums`
--
ALTER TABLE `image_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `img_categories`
--
ALTER TABLE `img_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inner_page_gallery_dynamics`
--
ALTER TABLE `inner_page_gallery_dynamics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inner_page_gallery_statics`
--
ALTER TABLE `inner_page_gallery_statics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inner_page_tabs_dynamic_pages`
--
ALTER TABLE `inner_page_tabs_dynamic_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inner_page_tabs_static_pages`
--
ALTER TABLE `inner_page_tabs_static_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messenger_topics`
--
ALTER TABLE `messenger_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `public_users`
--
ALTER TABLE `public_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quote_of_the_days`
--
ALTER TABLE `quote_of_the_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services_blocks`
--
ALTER TABLE `services_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `short_news`
--
ALTER TABLE `short_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `static_pages1s`
--
ALTER TABLE `static_pages1s`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_statuses`
--
ALTER TABLE `task_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `task_tags`
--
ALTER TABLE `task_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonial_categories`
--
ALTER TABLE `testimonial_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_actions`
--
ALTER TABLE `user_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `vdo_categories`
--
ALTER TABLE `vdo_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_albums`
--
ALTER TABLE `video_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners_managements`
--
ALTER TABLE `banners_managements`
  ADD CONSTRAINT `323765_5d25978af1139` FOREIGN KEY (`banner_category_id`) REFERENCES `banner_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_category_blog_post`
--
ALTER TABLE `blog_category_blog_post`
  ADD CONSTRAINT `fk_p_324080_324083_blogpo_5dc5eed9214ba` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_324083_324080_blogca_5dc5eed921560` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `324084_5d269d0476925` FOREIGN KEY (`blog_name_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_favourite_categories`
--
ALTER TABLE `blog_favourite_categories`
  ADD CONSTRAINT `324086_5d269e8b03939` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `324083_5d269c813d385` FOREIGN KEY (`authors_name_id`) REFERENCES `blog_authors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_post_blog_tag`
--
ALTER TABLE `blog_post_blog_tag`
  ADD CONSTRAINT `fk_p_324081_324083_blogpo_5dc5eed924433` FOREIGN KEY (`blog_tag_id`) REFERENCES `blog_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_324083_324081_blogta_5dc5eed9243a1` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brochure_images`
--
ALTER TABLE `brochure_images`
  ADD CONSTRAINT `323781_5d259b93b4955` FOREIGN KEY (`category_name_id`) REFERENCES `brochure_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_block1s`
--
ALTER TABLE `content_block1s`
  ADD CONSTRAINT `323805_5d25a23887865` FOREIGN KEY (`category_name_id`) REFERENCES `content_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_customers`
--
ALTER TABLE `crm_customers`
  ADD CONSTRAINT `324427_5d2820e95dec8` FOREIGN KEY (`crm_status_id`) REFERENCES `crm_statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_documents`
--
ALTER TABLE `crm_documents`
  ADD CONSTRAINT `324429_5d28222c4843e` FOREIGN KEY (`customer_id`) REFERENCES `crm_customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_notes`
--
ALTER TABLE `crm_notes`
  ADD CONSTRAINT `324428_5d282141e8104` FOREIGN KEY (`customer_id`) REFERENCES `crm_customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `324075_5d2698c84dcdd` FOREIGN KEY (`album_name_id`) REFERENCES `download_albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `download_albums`
--
ALTER TABLE `download_albums`
  ADD CONSTRAINT `324074_5d26988205018` FOREIGN KEY (`category_name_id`) REFERENCES `dwn_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `323432_5d246650608de` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourite_posts`
--
ALTER TABLE `favourite_posts`
  ADD CONSTRAINT `324087_5d269fd2f2467` FOREIGN KEY (`favourite_category_id`) REFERENCES `blog_favourite_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `324087_5d269fd338901` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `324067_5d2691252250a` FOREIGN KEY (`album_name_id`) REFERENCES `image_albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `image_albums`
--
ALTER TABLE `image_albums`
  ADD CONSTRAINT `324066_5d268ff0cf91e` FOREIGN KEY (`category_name_id`) REFERENCES `img_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `323431_5d246644d48e8` FOREIGN KEY (`income_category_id`) REFERENCES `income_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inner_page_gallery_dynamics`
--
ALTER TABLE `inner_page_gallery_dynamics`
  ADD CONSTRAINT `323774_5d25994f93188` FOREIGN KEY (`page_name_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inner_page_gallery_statics`
--
ALTER TABLE `inner_page_gallery_statics`
  ADD CONSTRAINT `323778_5d259aac6fb0e` FOREIGN KEY (`page_name_id`) REFERENCES `static_pages1s` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inner_page_tabs_dynamic_pages`
--
ALTER TABLE `inner_page_tabs_dynamic_pages`
  ADD CONSTRAINT `323773_5d2598cfca3d7` FOREIGN KEY (`page_name_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inner_page_tabs_static_pages`
--
ALTER TABLE `inner_page_tabs_static_pages`
  ADD CONSTRAINT `323777_5d259a4ed231b` FOREIGN KEY (`page_name_id`) REFERENCES `static_pages1s` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD CONSTRAINT `messenger_messages_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `messenger_topics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `323772_5d259860744bc` FOREIGN KEY (`category_name_id`) REFERENCES `page_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `fk_p_323424_323425_role_p_5dc5eed916a29` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_323425_323424_permis_5dc5eed916ae9` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_product_category`
--
ALTER TABLE `product_product_category`
  ADD CONSTRAINT `fk_p_324060_324062_produc_5dc5eed91c04f` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_324062_324060_produc_5dc5eed91bf15` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_product_tag`
--
ALTER TABLE `product_product_tag`
  ADD CONSTRAINT `fk_p_324061_324062_produc_5dc5eed91eddd` FOREIGN KEY (`product_tag_id`) REFERENCES `product_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_324062_324061_produc_5dc5eed91ece8` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `323799_5d259eefbe970` FOREIGN KEY (`category_name_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_p_323425_323426_user_r_5dc5eed918da5` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_323426_323425_role_u_5dc5eed918e4c` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `323437_5d2466a4cafaf` FOREIGN KEY (`status_id`) REFERENCES `task_statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `323437_5d2466a4f321a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_task_tag`
--
ALTER TABLE `task_task_tag`
  ADD CONSTRAINT `fk_p_323436_323437_task_t_5dc5eed926ef2` FOREIGN KEY (`task_tag_id`) REFERENCES `task_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_323437_323436_taskta_5dc5eed926e2e` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `323785_5d259cc19db32` FOREIGN KEY (`category_name_id`) REFERENCES `testimonial_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_actions`
--
ALTER TABLE `user_actions`
  ADD CONSTRAINT `323427_5d246616670bb` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `324071_5d26977493477` FOREIGN KEY (`video_album_id`) REFERENCES `video_albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video_albums`
--
ALTER TABLE `video_albums`
  ADD CONSTRAINT `324070_5d2696fba71d9` FOREIGN KEY (`category_name_id`) REFERENCES `vdo_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
