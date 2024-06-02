/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : cuahangdt

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 24/05/2024 13:05:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `data_rows_data_type_id_foreign`(`data_type_id` ASC) USING BTREE,
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES (1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3);
INSERT INTO `data_rows` VALUES (4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5);
INSERT INTO `data_rows` VALUES (6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6);
INSERT INTO `data_rows` VALUES (7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7);
INSERT INTO `data_rows` VALUES (8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8);
INSERT INTO `data_rows` VALUES (9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10);
INSERT INTO `data_rows` VALUES (10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11);
INSERT INTO `data_rows` VALUES (11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12);
INSERT INTO `data_rows` VALUES (12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1);
INSERT INTO `data_rows` VALUES (17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2);
INSERT INTO `data_rows` VALUES (18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3);
INSERT INTO `data_rows` VALUES (19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4);
INSERT INTO `data_rows` VALUES (20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5);
INSERT INTO `data_rows` VALUES (21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9);
INSERT INTO `data_rows` VALUES (56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (57, 7, 'hangsx', 'text', 'Hãng sản xuất', 0, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (58, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4);
INSERT INTO `data_rows` VALUES (60, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (61, 8, 'tensanpham', 'text', 'Tên sản phẩm', 0, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (62, 8, 'gia', 'number', 'Gia', 0, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (63, 8, 'soluong', 'number', 'Soluong', 0, 1, 1, 1, 1, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (64, 8, 'hang_id', 'text', 'Hang Id', 0, 1, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (65, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7);
INSERT INTO `data_rows` VALUES (66, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);
INSERT INTO `data_rows` VALUES (67, 8, 'sanpham_belongsto_hang_relationship', 'relationship', 'Hãng sản xuất', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Hang\",\"table\":\"hangs\",\"type\":\"belongsTo\",\"column\":\"hang_id\",\"key\":\"id\",\"label\":\"hangsx\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9);
INSERT INTO `data_rows` VALUES (68, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (69, 9, 'hoten', 'text', 'Họ tên', 0, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (70, 9, 'gmail', 'text', 'Gmail', 0, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (71, 9, 'noidung', 'text', 'Nội dung', 0, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (72, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (73, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);
INSERT INTO `data_rows` VALUES (74, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1);
INSERT INTO `data_rows` VALUES (75, 10, 'hoten', 'text', 'Họ tên', 0, 1, 1, 1, 1, 1, '{}', 2);
INSERT INTO `data_rows` VALUES (76, 10, 'sdt', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 3);
INSERT INTO `data_rows` VALUES (77, 10, 'soluong', 'number', 'Số lượng', 0, 1, 1, 1, 1, 1, '{}', 4);
INSERT INTO `data_rows` VALUES (78, 10, 'sapham_id', 'text', 'Sapham Id', 0, 1, 1, 1, 1, 1, '{}', 5);
INSERT INTO `data_rows` VALUES (79, 10, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6);
INSERT INTO `data_rows` VALUES (80, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7);
INSERT INTO `data_rows` VALUES (81, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);
INSERT INTO `data_rows` VALUES (82, 10, 'dathang_belongsto_sanpham_relationship', 'relationship', 'Sản phẩm', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sanpham\",\"table\":\"sanphams\",\"type\":\"belongsTo\",\"column\":\"sapham_id\",\"key\":\"id\",\"label\":\"tensanpham\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9);
INSERT INTO `data_rows` VALUES (83, 8, 'anh', 'image', 'Anh', 0, 1, 1, 1, 1, 1, '{}', 2);

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `data_types_name_unique`(`name` ASC) USING BTREE,
  UNIQUE INDEX `data_types_slug_unique`(`slug` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES (1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `data_types` VALUES (2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `data_types` VALUES (3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `data_types` VALUES (7, 'hangs', 'hangs', 'Hang', 'Hangs', 'voyager-window-list', 'App\\Hang', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-24 04:03:23', '2024-05-24 04:04:07');
INSERT INTO `data_types` VALUES (8, 'sanphams', 'sanphams', 'Sanpham', 'Sanphams', 'voyager-boat', 'App\\Sanpham', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-24 04:06:38', '2024-05-24 05:32:13');
INSERT INTO `data_types` VALUES (9, 'lienhes', 'lienhes', 'Lienhe', 'Lienhes', 'voyager-group', 'App\\Lienhe', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-05-24 04:17:37', '2024-05-24 04:17:37');
INSERT INTO `data_types` VALUES (10, 'dathangs', 'dathangs', 'Dathang', 'Dathangs', 'voyager-bag', 'App\\Dathang', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-24 04:18:19', '2024-05-24 04:19:53');

-- ----------------------------
-- Table structure for dathangs
-- ----------------------------
DROP TABLE IF EXISTS `dathangs`;
CREATE TABLE `dathangs`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `hoten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `soluong` int NULL DEFAULT NULL,
  `sapham_id` int UNSIGNED NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dathangs
-- ----------------------------
INSERT INTO `dathangs` VALUES (1, 'Phạm Văn A', '0987654321', 1, 1, 'demo@gmail.com', '2024-05-24 05:57:54', '2024-05-24 05:57:54');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for hangs
-- ----------------------------
DROP TABLE IF EXISTS `hangs`;
CREATE TABLE `hangs`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `hangsx` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hangs
-- ----------------------------
INSERT INTO `hangs` VALUES (1, 'iphone', '2024-05-24 05:30:29', '2024-05-24 05:30:29');
INSERT INTO `hangs` VALUES (2, 'android', '2024-05-24 05:30:38', '2024-05-24 05:30:38');

-- ----------------------------
-- Table structure for lienhes
-- ----------------------------
DROP TABLE IF EXISTS `lienhes`;
CREATE TABLE `lienhes`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `hoten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `noidung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lienhes
-- ----------------------------
INSERT INTO `lienhes` VALUES (1, 'Phạm Văn A', 'demo@gmail.com', 'Nội dung đặt hàng', '2024-05-24 05:42:58', '2024-05-24 05:42:58');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int UNSIGNED NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `menu_items_menu_id_foreign`(`menu_id` ASC) USING BTREE,
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES (2, 1, 'Thư mục', '', '_self', 'voyager-images', '#000000', NULL, 7, '2024-05-24 04:01:23', '2024-05-24 05:29:33', 'voyager.media.index', 'null');
INSERT INTO `menu_items` VALUES (3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', NULL, 1, '2024-05-24 04:01:23', '2024-05-24 05:29:18', 'voyager.users.index', 'null');
INSERT INTO `menu_items` VALUES (6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2024-05-24 04:01:23', '2024-05-24 04:01:23', 'voyager.menus.index', NULL);
INSERT INTO `menu_items` VALUES (7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2024-05-24 04:01:23', '2024-05-24 04:01:23', 'voyager.database.index', NULL);
INSERT INTO `menu_items` VALUES (8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2024-05-24 04:01:23', '2024-05-24 04:01:23', 'voyager.compass.index', NULL);
INSERT INTO `menu_items` VALUES (9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2024-05-24 04:01:23', '2024-05-24 04:01:23', 'voyager.bread.index', NULL);
INSERT INTO `menu_items` VALUES (14, 1, 'Hãng sản xuất', '', '_self', 'voyager-window-list', '#000000', NULL, 3, '2024-05-24 04:03:23', '2024-05-24 05:29:47', 'voyager.hangs.index', 'null');
INSERT INTO `menu_items` VALUES (15, 1, 'Sản phẩm', '', '_self', 'voyager-boat', '#000000', NULL, 4, '2024-05-24 04:06:38', '2024-05-24 05:29:53', 'voyager.sanphams.index', 'null');
INSERT INTO `menu_items` VALUES (16, 1, 'Liên hệ', '', '_self', 'voyager-group', '#000000', NULL, 5, '2024-05-24 04:17:37', '2024-05-24 05:30:01', 'voyager.lienhes.index', 'null');
INSERT INTO `menu_items` VALUES (17, 1, 'Đặt hàng', '', '_self', 'voyager-bag', '#000000', NULL, 6, '2024-05-24 04:18:19', '2024-05-24 05:30:08', 'voyager.dathangs.index', 'null');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `menus_name_unique`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'admin', '2024-05-24 04:01:23', '2024-05-24 04:01:23');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_01_000000_add_voyager_user_fields', 1);
INSERT INTO `migrations` VALUES (4, '2016_01_01_000000_create_data_types_table', 1);
INSERT INTO `migrations` VALUES (5, '2016_01_01_000000_create_pages_table', 1);
INSERT INTO `migrations` VALUES (6, '2016_01_01_000000_create_posts_table', 1);
INSERT INTO `migrations` VALUES (7, '2016_02_15_204651_create_categories_table', 1);
INSERT INTO `migrations` VALUES (8, '2016_05_19_173453_create_menu_table', 1);
INSERT INTO `migrations` VALUES (9, '2016_10_21_190000_create_roles_table', 1);
INSERT INTO `migrations` VALUES (10, '2016_10_21_190000_create_settings_table', 1);
INSERT INTO `migrations` VALUES (11, '2016_11_30_135954_create_permission_table', 1);
INSERT INTO `migrations` VALUES (12, '2016_11_30_141208_create_permission_role_table', 1);
INSERT INTO `migrations` VALUES (13, '2016_12_26_201236_data_types__add__server_side', 1);
INSERT INTO `migrations` VALUES (14, '2017_01_13_000000_add_route_to_menu_items_table', 1);
INSERT INTO `migrations` VALUES (15, '2017_01_14_005015_create_translations_table', 1);
INSERT INTO `migrations` VALUES (16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1);
INSERT INTO `migrations` VALUES (17, '2017_03_06_000000_add_controller_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (18, '2017_04_11_000000_alter_post_nullable_fields_table', 1);
INSERT INTO `migrations` VALUES (19, '2017_04_21_000000_add_order_to_data_rows_table', 1);
INSERT INTO `migrations` VALUES (20, '2017_07_05_210000_add_policyname_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (21, '2017_08_05_000000_add_group_to_settings_table', 1);
INSERT INTO `migrations` VALUES (22, '2017_11_26_013050_add_user_role_relationship', 1);
INSERT INTO `migrations` VALUES (23, '2017_11_26_015000_create_user_roles_table', 1);
INSERT INTO `migrations` VALUES (24, '2018_03_11_000000_add_user_settings', 1);
INSERT INTO `migrations` VALUES (25, '2018_03_14_000000_add_details_to_data_types_table', 1);
INSERT INTO `migrations` VALUES (26, '2018_03_16_000000_make_settings_value_nullable', 1);
INSERT INTO `migrations` VALUES (27, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (28, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `permission_role_permission_id_index`(`permission_id` ASC) USING BTREE,
  INDEX `permission_role_role_id_index`(`role_id` ASC) USING BTREE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, 1);
INSERT INTO `permission_role` VALUES (2, 1);
INSERT INTO `permission_role` VALUES (3, 1);
INSERT INTO `permission_role` VALUES (4, 1);
INSERT INTO `permission_role` VALUES (5, 1);
INSERT INTO `permission_role` VALUES (6, 1);
INSERT INTO `permission_role` VALUES (7, 1);
INSERT INTO `permission_role` VALUES (8, 1);
INSERT INTO `permission_role` VALUES (9, 1);
INSERT INTO `permission_role` VALUES (10, 1);
INSERT INTO `permission_role` VALUES (11, 1);
INSERT INTO `permission_role` VALUES (12, 1);
INSERT INTO `permission_role` VALUES (13, 1);
INSERT INTO `permission_role` VALUES (14, 1);
INSERT INTO `permission_role` VALUES (15, 1);
INSERT INTO `permission_role` VALUES (16, 1);
INSERT INTO `permission_role` VALUES (17, 1);
INSERT INTO `permission_role` VALUES (18, 1);
INSERT INTO `permission_role` VALUES (19, 1);
INSERT INTO `permission_role` VALUES (20, 1);
INSERT INTO `permission_role` VALUES (21, 1);
INSERT INTO `permission_role` VALUES (22, 1);
INSERT INTO `permission_role` VALUES (23, 1);
INSERT INTO `permission_role` VALUES (24, 1);
INSERT INTO `permission_role` VALUES (25, 1);
INSERT INTO `permission_role` VALUES (41, 1);
INSERT INTO `permission_role` VALUES (42, 1);
INSERT INTO `permission_role` VALUES (43, 1);
INSERT INTO `permission_role` VALUES (44, 1);
INSERT INTO `permission_role` VALUES (45, 1);
INSERT INTO `permission_role` VALUES (46, 1);
INSERT INTO `permission_role` VALUES (47, 1);
INSERT INTO `permission_role` VALUES (48, 1);
INSERT INTO `permission_role` VALUES (49, 1);
INSERT INTO `permission_role` VALUES (50, 1);
INSERT INTO `permission_role` VALUES (51, 1);
INSERT INTO `permission_role` VALUES (52, 1);
INSERT INTO `permission_role` VALUES (53, 1);
INSERT INTO `permission_role` VALUES (54, 1);
INSERT INTO `permission_role` VALUES (55, 1);
INSERT INTO `permission_role` VALUES (56, 1);
INSERT INTO `permission_role` VALUES (57, 1);
INSERT INTO `permission_role` VALUES (58, 1);
INSERT INTO `permission_role` VALUES (59, 1);
INSERT INTO `permission_role` VALUES (60, 1);

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permissions_key_index`(`key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'browse_admin', NULL, '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (2, 'browse_bread', NULL, '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (3, 'browse_database', NULL, '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (4, 'browse_media', NULL, '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (5, 'browse_compass', NULL, '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (6, 'browse_menus', 'menus', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (7, 'read_menus', 'menus', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (8, 'edit_menus', 'menus', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (9, 'add_menus', 'menus', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (10, 'delete_menus', 'menus', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (11, 'browse_roles', 'roles', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (12, 'read_roles', 'roles', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (13, 'edit_roles', 'roles', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (14, 'add_roles', 'roles', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (15, 'delete_roles', 'roles', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (16, 'browse_users', 'users', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (17, 'read_users', 'users', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (18, 'edit_users', 'users', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (19, 'add_users', 'users', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (20, 'delete_users', 'users', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (21, 'browse_settings', 'settings', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (22, 'read_settings', 'settings', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (23, 'edit_settings', 'settings', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (24, 'add_settings', 'settings', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (25, 'delete_settings', 'settings', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `permissions` VALUES (41, 'browse_hangs', 'hangs', '2024-05-24 04:03:23', '2024-05-24 04:03:23');
INSERT INTO `permissions` VALUES (42, 'read_hangs', 'hangs', '2024-05-24 04:03:23', '2024-05-24 04:03:23');
INSERT INTO `permissions` VALUES (43, 'edit_hangs', 'hangs', '2024-05-24 04:03:23', '2024-05-24 04:03:23');
INSERT INTO `permissions` VALUES (44, 'add_hangs', 'hangs', '2024-05-24 04:03:23', '2024-05-24 04:03:23');
INSERT INTO `permissions` VALUES (45, 'delete_hangs', 'hangs', '2024-05-24 04:03:23', '2024-05-24 04:03:23');
INSERT INTO `permissions` VALUES (46, 'browse_sanphams', 'sanphams', '2024-05-24 04:06:38', '2024-05-24 04:06:38');
INSERT INTO `permissions` VALUES (47, 'read_sanphams', 'sanphams', '2024-05-24 04:06:38', '2024-05-24 04:06:38');
INSERT INTO `permissions` VALUES (48, 'edit_sanphams', 'sanphams', '2024-05-24 04:06:38', '2024-05-24 04:06:38');
INSERT INTO `permissions` VALUES (49, 'add_sanphams', 'sanphams', '2024-05-24 04:06:38', '2024-05-24 04:06:38');
INSERT INTO `permissions` VALUES (50, 'delete_sanphams', 'sanphams', '2024-05-24 04:06:38', '2024-05-24 04:06:38');
INSERT INTO `permissions` VALUES (51, 'browse_lienhes', 'lienhes', '2024-05-24 04:17:37', '2024-05-24 04:17:37');
INSERT INTO `permissions` VALUES (52, 'read_lienhes', 'lienhes', '2024-05-24 04:17:37', '2024-05-24 04:17:37');
INSERT INTO `permissions` VALUES (53, 'edit_lienhes', 'lienhes', '2024-05-24 04:17:37', '2024-05-24 04:17:37');
INSERT INTO `permissions` VALUES (54, 'add_lienhes', 'lienhes', '2024-05-24 04:17:37', '2024-05-24 04:17:37');
INSERT INTO `permissions` VALUES (55, 'delete_lienhes', 'lienhes', '2024-05-24 04:17:37', '2024-05-24 04:17:37');
INSERT INTO `permissions` VALUES (56, 'browse_dathangs', 'dathangs', '2024-05-24 04:18:19', '2024-05-24 04:18:19');
INSERT INTO `permissions` VALUES (57, 'read_dathangs', 'dathangs', '2024-05-24 04:18:19', '2024-05-24 04:18:19');
INSERT INTO `permissions` VALUES (58, 'edit_dathangs', 'dathangs', '2024-05-24 04:18:19', '2024-05-24 04:18:19');
INSERT INTO `permissions` VALUES (59, 'add_dathangs', 'dathangs', '2024-05-24 04:18:19', '2024-05-24 04:18:19');
INSERT INTO `permissions` VALUES (60, 'delete_dathangs', 'dathangs', '2024-05-24 04:18:19', '2024-05-24 04:18:19');

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', 'Administrator', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `roles` VALUES (2, 'user', 'Normal User', '2024-05-24 04:01:23', '2024-05-24 04:01:23');

-- ----------------------------
-- Table structure for sanphams
-- ----------------------------
DROP TABLE IF EXISTS `sanphams`;
CREATE TABLE `sanphams`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gia` int NULL DEFAULT NULL,
  `soluong` int NULL DEFAULT NULL,
  `hang_id` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanphams
-- ----------------------------
INSERT INTO `sanphams` VALUES (1, 'điện thoại 1', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (2, 'điện thoại 2', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (3, 'điện thoại 3', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (4, 'điện thoại 4', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (5, 'điện thoại 5', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (6, 'điện thoại 6', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (7, 'điện thoại 7', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (8, 'điện thoại 8', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (9, 'điện thoại 9', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (10, 'điện thoại 10', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (11, 'điện thoại 11', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (12, 'điện thoại 12', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (13, 'điện thoại 13', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (14, 'điện thoại 14', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (15, 'điện thoại 15', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (16, 'điện thoại 16', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (17, 'điện thoại 17', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (18, 'điện thoại 18', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (19, 'điện thoại 19', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (20, 'điện thoại 20', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');
INSERT INTO `sanphams` VALUES (21, 'điện thoại 21', 50000000, 100, 1, '2024-05-24 05:32:49', '2024-05-24 05:32:49', 'sanphams\\May2024\\Sq3MUTvnYuuhPnMOeNyn.png');
INSERT INTO `sanphams` VALUES (22, 'điện thoại 2', 4500000, 140, 2, '2024-05-24 05:33:16', '2024-05-24 05:33:16', 'sanphams\\May2024\\CMgHitAZImVd2ychzurT.png');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT 1,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `settings_key_unique`(`key` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site');
INSERT INTO `settings` VALUES (2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site');
INSERT INTO `settings` VALUES (3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site');
INSERT INTO `settings` VALUES (4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site');
INSERT INTO `settings` VALUES (5, 'admin.bg_image', 'Admin Background Image', 'settings\\May2024\\uJ5SPsnFr0rPsvhkWFRi.jpg', '', 'image', 5, 'Admin');
INSERT INTO `settings` VALUES (6, 'admin.title', 'Admin Title', 'Cửa hàng điện thoại', '', 'text', 1, 'Admin');
INSERT INTO `settings` VALUES (7, 'admin.description', 'Admin Description', 'Cửa hàng điện thoại', '', 'text', 2, 'Admin');
INSERT INTO `settings` VALUES (8, 'admin.loader', 'Admin Loader', 'settings\\May2024\\PjLZQNQb9kx0U31nIHxZ.webp', '', 'image', 3, 'Admin');
INSERT INTO `settings` VALUES (9, 'admin.icon_image', 'Admin Icon Image', 'settings\\May2024\\ZvT6wmqNeNLsbd854914.webp', '', 'image', 4, 'Admin');
INSERT INTO `settings` VALUES (10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `translations_table_name_column_name_foreign_key_locale_unique`(`table_name` ASC, `column_name` ASC, `foreign_key` ASC, `locale` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of translations
-- ----------------------------
INSERT INTO `translations` VALUES (1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-05-24 04:01:23', '2024-05-24 04:01:23');
INSERT INTO `translations` VALUES (30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-05-24 04:01:23', '2024-05-24 04:01:23');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `user_roles_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `user_roles_role_id_index`(`role_id` ASC) USING BTREE,
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint UNSIGNED NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE,
  INDEX `users_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'Admin', 'admin@gmail.com', 'users\\May2024\\cpKU8nZemnS9eMMHmVl8.webp', NULL, '$2y$10$Q8.hbnb8e3NdBat.ZA0pDuyE2Ys1hoWNOg6X8CeXtLxFGypGqBKha', 'nuQgiJTvZKEEdGO6EK4D239YmBQyvHUSC77f5yuY0Cem4MTwgDkUUn3KYJeM', '{\"locale\":\"en\"}', '2024-05-24 04:01:23', '2024-05-24 05:43:25');

SET FOREIGN_KEY_CHECKS = 1;
