//create category table
DROP TABLE IF EXISTS `mall_category`;
CREATE TABLE `mall_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'categoryID',
  `parent_id` int(11) DEFAULT NULL COMMENT 'ID of parent, 0 is the root level',
  `name` varchar(50) DEFAULT NULL COMMENT 'name of category',
  `status` tinyint(1) DEFAULT '1' COMMENT '1=normal 2=abandoned',
  `sort_order` int(4) DEFAULT '1' COMMENT 'sort',
  `create_time` datetime DEFAULT NULL COMMENT 'estiblashment time',
  `update_time` datetime DEFAULT NULL COMMENT 'update time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

//insert data into category table
INSERT INTO `mall_category` (`id`, `parent_id`, `name`, `status`, `sort_order`, `create_time`, `update_time`)
VALUES
	(100001,0,'Appliance',1,NULL,'2000-03-25 16:46:00','2000-03-25 16:46:00'),
	(100002,0,'Digital',1,NULL,'2000-03-25 16:46:21','2000-03-25 16:46:21'),
	(100003,0,'Clothing',1,NULL,'2000-03-25 16:49:53','2000-03-25 16:49:53'),
	(100004,0,'Food',1,NULL,'2000-03-25 16:50:19','2000-03-25 16:50:19'),
	(100005,0,'Wine',1,NULL,'2000-03-25 16:50:29','2000-03-25 16:50:29'),
	(100006,100001,'Refrigerator',1,NULL,'2000-03-25 16:52:15','2000-03-25 16:52:15'),
	(100007,100001,'TV',1,NULL,'2000-03-25 16:52:26','2000-03-25 16:52:26'),
	(100008,100001,'Washer',1,NULL,'2000-03-25 16:52:39','2000-03-25 16:52:39'),
	(100009,100001,'AC',1,NULL,'2000-03-25 16:52:45','2000-03-25 16:52:45'),
	(100010,100001,'Heater',1,NULL,'2000-03-25 16:52:54','2000-03-25 16:52:54'),
	(100011,100002,'PC',1,NULL,'2000-03-25 16:53:18','2000-03-25 16:53:18'),
	(100012,100002,'Phone',1,NULL,'2000-03-25 16:53:27','2000-03-25 16:53:27'),
	(100013,100002,'Pad',1,NULL,'2000-03-25 16:53:35','2000-03-25 16:53:35'),
	(100014,100002,'Camera',1,NULL,'2000-03-25 16:53:56','2000-03-25 16:53:56'),
	(100015,100002,'Accessory',1,NULL,'2000-03-25 16:54:07','2000-03-25 16:54:07'),
	(100016,100003,'Women',1,NULL,'2000-03-25 16:54:44','2000-03-25 16:54:44'),
	(100017,100003,'Hat',1,NULL,'2000-03-25 16:54:51','2000-03-25 16:54:51'),
	(100018,100003,'Suitcase',1,NULL,'2000-03-25 16:55:02','2000-03-25 16:55:02'),
	(100019,100003,'Bag',1,NULL,'2000-03-25 16:55:09','2000-03-25 16:55:09'),
	(100020,100003,'Underware',1,NULL,'2000-03-25 16:55:18','2000-03-25 16:55:18'),
	(100021,100004,'Snack',1,NULL,'2000-03-25 16:55:30','2000-03-25 16:55:30'),
	(100022,100004,'Fresh',1,NULL,'2000-03-25 16:55:37','2000-03-25 16:55:37'),
	(100023,100004,'Readytoeat',1,NULL,'2000-03-25 16:55:47','2000-03-25 16:55:47'),
	(100024,100004,'Vegetable',1,NULL,'2000-03-25 16:55:56','2000-03-25 16:55:56'),
	(100025,100004,'Seafood',1,NULL,'2000-03-25 16:56:06','2000-03-25 16:56:06'),
	(100026,100005,'Whitewine',1,NULL,'2000-03-25 16:56:22','2000-03-25 16:56:22'),
	(100027,100005,'Redwine',1,NULL,'2000-03-25 16:56:30','2000-03-25 16:56:30'),
	(100028,100005,'Beverage',1,NULL,'2000-03-25 16:56:37','2000-03-25 16:56:37'),
	(100029,100005,'Cocktail',1,NULL,'2000-03-25 16:56:45','2000-03-25 16:56:45'),
	(100030,100005,'Icewine',1,NULL,'2000-03-25 16:57:05','2000-03-25 16:57:05');
	
//create order table
DROP TABLE IF EXISTS `mall_order`;
CREATE TABLE `mall_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'orderID',
  `order_no` bigint(20) DEFAULT NULL COMMENT 'orderNumber',
  `user_id` int(11) DEFAULT NULL COMMENT 'UserID',
  `shipping_id` int(11) DEFAULT NULL COMMENT'shippingID',
  `payment` decimal(20,2) DEFAULT NULL COMMENT 'price',
  `payment_type` int(4) DEFAULT NULL COMMENT '1=online payment',
  `postage` int(10) DEFAULT NULL COMMENT 'delivery fee',
  `status` int(10) DEFAULT NULL COMMENT 'status of order:0=cancelled 10=unpaid 20=paid 40=delivered 50=complete 60=close',
  `payment_time` datetime DEFAULT NULL COMMENT 'payment time',
  `send_time` datetime DEFAULT NULL COMMENT 'delivery time',
  `end_time` datetime DEFAULT NULL COMMENT 'complete time',
  `close_time` datetime DEFAULT NULL COMMENT 'close time',
  `create_time` datetime DEFAULT NULL COMMENT 'establishment time',
  `update_time` datetime DEFAULT NULL COMMENT 'update time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no_index` (`order_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

//create order detail order
DROP TABLE IF EXISTS `mall_order_item`;
CREATE TABLE `mall_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'orderDetailID',
  `user_id` int(11) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT 'productID',
  `product_name` varchar(100) DEFAULT NULL COMMENT 'productName',
  `product_image` varchar(500) DEFAULT NULL COMMENT 'addressOfProductImage',
  `current_unit_price` decimal(20,2) DEFAULT NULL COMMENT 'unitPrice',
  `quantity` int(10) DEFAULT NULL COMMENT 'quantity',
  `total_price` decimal(20,2) DEFAULT NULL COMMENT 'totalPrice',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_no_index` (`order_no`) USING BTREE,
  KEY `order_no_user_id_index` (`user_id`,`order_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

//create payment table
DROP TABLE IF EXISTS `mall_pay_info`;
CREATE TABLE `mall_pay_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT 'userID',
  `order_no` bigint(20) DEFAULT NULL COMMENT 'orderNumber',
  `pay_platform` int(10) DEFAULT NULL COMMENT '1=alipay 2=wechat pay',
  `platform_number` varchar(200) DEFAULT NULL COMMENT 'Alipay paltform number',
  `platform_status` varchar(20) DEFAULT NULL COMMENT 'Alipay status',
  `pay_amount` decimal(20,2) NOT NULL COMMENT 'pay amount',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
  UNIQUE KEY `uqe_order_no` (`order_no`),
  UNIQUE KEY `uqe_platform_number` (`platform_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

//create product table
DROP TABLE IF EXISTS `mall_product`;
CREATE TABLE `mall_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'productID',
  `category_id` int(11) NOT NULL COMMENT 'categoryID(paimary key in mall_category table)',
  `name` varchar(100) NOT NULL COMMENT 'productName',
  `subtitle` varchar(200) DEFAULT NULL COMMENT 'subtitleOfProduct',
  `main_image` varchar(500) DEFAULT NULL COMMENT 'imageOfProduct',
  `sub_images` text COMMENT 'subImageOfProduct',
  `detail` text COMMENT 'DetailOfProduct',
  `price` decimal(20,2) NOT NULL COMMENT 'price',
  `stock` int(11) NOT NULL COMMENT 'stock quantity',
  `status` int(6) DEFAULT '1' COMMENT 'statusOfProduct 1=in stock 2=out of stock 3=deteled',
  `create_time` datetime DEFAULT NULL COMMENT 'establishment time',
  `update_time` datetime DEFAULT NULL COMMENT 'update time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

//insert data into product table
INSERT INTO `mall_product` (`id`, `category_id`, `name`, `subtitle`, `main_image`, `sub_images`, `detail`, `price`, `stock`, `status`, `create_time`, `update_time`)
VALUES
	(26,100002,'HongPhone1','The first best phone','','','',599.00,96,1,'2000-04-12 21:45:41','2000-04-13 21:45:41'),
	(27,100006,'HongRefrigerator2','The first best Refrigerator','','','',499.00,99,1,'2000-04-13 18:51:54','2000-04-13 21:45:41'),
	(28,100012,'HongPhone3','The third best phone','','','',799.00,100,1,'2000-04-13 18:57:18','2000-04-13 21:45:41'),
	(29,100008,'HongWasher4','The fourth best washer','','','',899.00,100,1,'2000-04-13 19:07:47','2000-04-13 21:45:41');

//create receiver's address table
DROP TABLE IF EXISTS `mall_shipping`;
CREATE TABLE `mall_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT 'uderID',
  `receiver_name` varchar(20) DEFAULT NULL,
  `receiver_phone` varchar(20) DEFAULT NULL,
  `receiver_mobile` varchar(20) DEFAULT NULL,
  `receiver_province` varchar(20) DEFAULT NULL,
  `receiver_city` varchar(20) DEFAULT NULL,
  `receiver_district` varchar(20) DEFAULT NULL,
  `receiver_address` varchar(200) DEFAULT NULL,
  `receiver_zip` varchar(6) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//insert data into shipping table
INSERT INTO `mall_shipping` (`id`, `user_id`, `receiver_name`, `receiver_phone`, `receiver_mobile`, `receiver_province`, `receiver_city`, `receiver_district`, `receiver_address`, `receiver_zip`, `create_time`, `update_time`)
VALUES
	(4,1,'Jeffery','6476156877','6476115555','Ontario','Toronto','NorthYork','56 Ali Street','100000','2000-01-22 14:26:25','2000-01-22 14:26:25');
//create user table
DROP TABLE IF EXISTS `mall_user`;
CREATE TABLE `mall_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'userID',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL COMMENT 'MD5 encrypted',
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL COMMENT 'security questions',
  `answer` varchar(100) DEFAULT NULL COMMENT 'security answers',
  `role` int(4) NOT NULL COMMENT '0=administrator,1=guest',
  `create_time` datetime NOT NULL COMMENT 'establishment time',
  `update_time` datetime NOT NULL COMMENT 'update time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_unique` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//insert data to user table
INSERT INTO `mall_user` (`id`, `username`, `password`, `email`, `phone`, `question`, `answer`, `role`, `create_time`, `update_time`)
VALUES
	(1,'admin','21232F297A57A5A743894A0E4A801FC3','admin@gmail.com',NULL,NULL,NULL,0,'2000-08-06 15:12:00','2000-08-06 15:12:00');

//Modify payment table
alter table mall_pay_info add pay_amount decimal(20,2) NOT NULL COMMENT 'payment amount' after platform_status

alter table mall_user modify create_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'establishment time';
alter table mall_user modify update_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'last time';


