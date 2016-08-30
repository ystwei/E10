/*
Navicat MySQL Data Transfer

Source Server         : win
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : mpet

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-04-18 14:51:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `username` varchar(80) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `xm` varchar(80) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB';

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('44443', '111', 'wk2003119@163.com', 'sdsdsd', '1212');
INSERT INTO `account` VALUES ('6767', '6767', 'wk2003119@163.com', '4554', '3434');
INSERT INTO `account` VALUES ('67679', '6767', 'wk2003119@163.com', '4554', '3434');
INSERT INTO `account` VALUES ('8888', '111', 'w@123.com', '111', '23232');
INSERT INTO `account` VALUES ('8989uuu', '111', 'wk2003119@163.com', '222', '12222');
INSERT INTO `account` VALUES ('898y', '111', 'wk2003119@163.com', 'ddd', '121212');
INSERT INTO `account` VALUES ('9999', '111', 'w@123.com', 'xsssss', 'dddd');
INSERT INTO `account` VALUES ('hhhh', '111', 'wk@163.com', '111', '4444');
INSERT INTO `account` VALUES ('KKK12', '999', 'wk@163.com', 'dffdfd', '221');
INSERT INTO `account` VALUES ('kkkkk', '111', 'wk2003119@163.com', 'xxxx', 'jjdjdj');
INSERT INTO `account` VALUES ('LLLL', '111', 'wk2003119@163.com', 'LLLL', 'dslflfsl');
INSERT INTO `account` VALUES ('UUU', '111', 'wk@163.com', 'UUU', 'UUU');
INSERT INTO `account` VALUES ('weikun', '119', 'wk2003119@163.com', '卫昆1', '哈尔滨');
INSERT INTO `account` VALUES ('www', '111', 'Q@123.com', 'rrr', '2121');
INSERT INTO `account` VALUES ('ytytytu', '111', 'wk2003119@163.com', '222', '121212');
INSERT INTO `account` VALUES ('yyyy', '111', 'w@123.com', 'yyy', 'sdfdsfd');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `favcategory` varchar(80) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favcategory`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`favcategory`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 6144 kB';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('BIRDS', '<image src=\"../images/banner_birds.gif\">');
INSERT INTO `banner` VALUES ('CATS', '<image src=\"../images/banner_cats.gif\">');
INSERT INTO `banner` VALUES ('DOGS', '<image src=\"../images/banner_dogs.gif\">');
INSERT INTO `banner` VALUES ('FISH', '<image src=\"../images/banner_fish.gif\">');
INSERT INTO `banner` VALUES ('REPTILES', '<image src=\"../images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `orderid` int(11) NOT NULL DEFAULT '0',
  `itemid` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`orderid`,`itemid`),
  KEY `FK_FK_Reference_51` (`itemid`),
  CONSTRAINT `FK_FK_Reference_51` FOREIGN KEY (`itemid`) REFERENCES `item` (`itemid`),
  CONSTRAINT `FK_Relationship_71` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  CONSTRAINT `FK_Relationship_733` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`itemid`) REFER';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', 'EST_4', '3');
INSERT INTO `cart` VALUES ('1000', 'EST_4', '3');
INSERT INTO `cart` VALUES ('1001', 'EST_4', '3');
INSERT INTO `cart` VALUES ('1002', 'EST_4', '3');
INSERT INTO `cart` VALUES ('1003', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1003', 'EST_19', '6');
INSERT INTO `cart` VALUES ('1003', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1003', 'EST_20', '3');
INSERT INTO `cart` VALUES ('1004', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1004', 'EST_20', '2');
INSERT INTO `cart` VALUES ('1004', 'EST_3', '4');
INSERT INTO `cart` VALUES ('1005', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1006', 'EST_20', '8');
INSERT INTO `cart` VALUES ('1006', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1006', 'EST_9', '7');
INSERT INTO `cart` VALUES ('1007', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1007', 'EST_28', '3');
INSERT INTO `cart` VALUES ('1007', 'EST_5', '7');
INSERT INTO `cart` VALUES ('1008', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1008', 'EST_28', '3');
INSERT INTO `cart` VALUES ('1009', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1010', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1010', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1011', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1011', 'EST_9', '1');
INSERT INTO `cart` VALUES ('1012', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1012', 'EST_9', '1');
INSERT INTO `cart` VALUES ('1013', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1013', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1014', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1014', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1014', 'EST_5', '6');
INSERT INTO `cart` VALUES ('1015', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1015', 'EST_4', '3');
INSERT INTO `cart` VALUES ('1016', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1016', 'EST_3', '4');
INSERT INTO `cart` VALUES ('1017', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1018', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1018', 'EST_27', '1');
INSERT INTO `cart` VALUES ('1018', 'EST_3', '4');
INSERT INTO `cart` VALUES ('1018', 'EST_5', '1');
INSERT INTO `cart` VALUES ('1019', 'EST_5', '4');
INSERT INTO `cart` VALUES ('1020', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1021', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1021', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1022', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1022', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1022', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1023', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1023', 'EST_4', '3');
INSERT INTO `cart` VALUES ('1023', 'EST_5', '3');
INSERT INTO `cart` VALUES ('1024', 'EST_4', '3');
INSERT INTO `cart` VALUES ('1025', 'EST_20', '2');
INSERT INTO `cart` VALUES ('1027', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1027', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1027', 'EST_3', '4');
INSERT INTO `cart` VALUES ('1027', 'EST_5', '1');
INSERT INTO `cart` VALUES ('1028', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1028', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1029', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1029', 'EST_3', '4');
INSERT INTO `cart` VALUES ('1030', 'EST_5', '6');
INSERT INTO `cart` VALUES ('1031', 'EST_20', '100');
INSERT INTO `cart` VALUES ('1031', 'EST_21', '3');
INSERT INTO `cart` VALUES ('1032', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1032', 'EST_15', '1');
INSERT INTO `cart` VALUES ('1032', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1032', 'EST_3', '4');
INSERT INTO `cart` VALUES ('1032', 'EST_5', '3');
INSERT INTO `cart` VALUES ('1033', 'EST_1', '4');
INSERT INTO `cart` VALUES ('1033', 'EST_2', '2');
INSERT INTO `cart` VALUES ('1034', 'EST_28', '3');
INSERT INTO `cart` VALUES ('1034', 'EST_4', '3');
INSERT INTO `cart` VALUES ('1035', 'EST_27', '1');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"${ppath}/static/images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"${ppath}/static/images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"${ppath}/static/images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"${ppath}/static/images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"${ppath}/static/images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `itemid` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `attr1` varchar(80) DEFAULT NULL,
  `attr2` varchar(80) DEFAULT NULL,
  `attr3` varchar(80) DEFAULT NULL,
  `attr4` varchar(80) DEFAULT NULL,
  `attr5` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FK_fk_item_1` (`productid`),
  CONSTRAINT `FK_fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; (`productid`) REFER `jpetstore/product';

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST_1', 'FI-SW-01', '16.50', '10.00', 'P', 'Large', null, null, null, null);
INSERT INTO `item` VALUES ('EST_10', 'K9-DL-01', '18.50', '12.00', 'P', 'Spotted Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST_11', 'RP-SN-01', '18.50', '12.00', 'P', 'Venomless', null, null, null, null);
INSERT INTO `item` VALUES ('EST_12', 'RP-SN-01', '18.50', '12.00', 'P', 'Rattleless', null, null, null, null);
INSERT INTO `item` VALUES ('EST_13', 'RP-LI-02', '18.50', '12.00', 'P', 'Green Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST_14', 'FL-DSH-01', '58.50', '12.00', 'P', 'Tailless', null, null, null, null);
INSERT INTO `item` VALUES ('EST_15', 'FL-DSH-01', '23.50', '12.00', 'P', 'With tail', null, null, null, null);
INSERT INTO `item` VALUES ('EST_16', 'FL-DLH-02', '93.50', '12.00', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST_17', 'FL-DLH-02', '93.50', '12.00', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST_18', 'AV-CB-01', '193.50', '92.00', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST_19', 'AV-SB-02', '15.50', '2.00', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST_2', 'FI-SW-01', '16.50', '10.00', 'P', 'Small', null, null, null, null);
INSERT INTO `item` VALUES ('EST_20', 'FI-FW-02', '5.50', '2.00', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST_21', 'FI-FW-02', '5.29', '1.00', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST_22', 'K9-RT-02', '135.50', '100.00', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST_23', 'K9-RT-02', '145.49', '100.00', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST_24', 'K9-RT-02', '255.50', '92.00', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST_25', 'K9-RT-02', '325.29', '90.00', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST_26', 'K9-CW-01', '125.50', '92.00', 'P', 'Adult Male', null, null, null, null);
INSERT INTO `item` VALUES ('EST_27', 'K9-CW-01', '155.29', '90.00', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST_28', 'K9-RT-01', '155.29', '90.00', 'P', 'Adult Female', null, null, null, null);
INSERT INTO `item` VALUES ('EST_3', 'FI-SW-02', '18.50', '12.00', 'P', 'Toothless', null, null, null, null);
INSERT INTO `item` VALUES ('EST_4', 'FI-FW-01', '18.50', '12.00', 'P', 'Spotted', null, null, null, null);
INSERT INTO `item` VALUES ('EST_5', 'FI-FW-01', '18.50', '12.00', 'P', 'Spotless', null, null, null, null);
INSERT INTO `item` VALUES ('EST_6', 'K9-BD-01', '18.50', '12.00', 'P', 'Male Adult', null, null, null, null);
INSERT INTO `item` VALUES ('EST_7', 'K9-BD-01', '18.50', '12.00', 'P', 'Female Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST_8', 'K9-PO-02', '18.50', '12.00', 'P', 'Male Puppy', null, null, null, null);
INSERT INTO `item` VALUES ('EST_9', 'K9-DL-01', '18.50', '12.00', 'P', 'Spotless Male Puppy', null, null, null, null);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL DEFAULT '0' COMMENT '订单序号',
  `orderdate` date DEFAULT NULL COMMENT '订单日期',
  `totalprice` decimal(10,2) DEFAULT '0.00' COMMENT '总价格',
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`linenum` `orde';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', null, '0.00');
INSERT INTO `orders` VALUES ('1000', '2013-09-13', '0.00');
INSERT INTO `orders` VALUES ('1001', null, '0.00');
INSERT INTO `orders` VALUES ('1002', '2013-09-18', '0.00');
INSERT INTO `orders` VALUES ('1003', '2014-01-14', '0.00');
INSERT INTO `orders` VALUES ('1004', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1005', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1006', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1007', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1008', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1009', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1010', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1011', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1012', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1013', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1014', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1015', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1016', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1017', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1018', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1019', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1020', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1021', '2014-06-27', '0.00');
INSERT INTO `orders` VALUES ('1022', '2013-03-01', '0.00');
INSERT INTO `orders` VALUES ('1023', '2014-09-16', '0.00');
INSERT INTO `orders` VALUES ('1024', '2014-09-16', '0.00');
INSERT INTO `orders` VALUES ('1025', '2014-09-16', '0.00');
INSERT INTO `orders` VALUES ('1027', '2014-12-26', '0.00');
INSERT INTO `orders` VALUES ('1028', '2014-12-26', '0.00');
INSERT INTO `orders` VALUES ('1029', '2014-12-26', '0.00');
INSERT INTO `orders` VALUES ('1030', '2014-12-28', '0.00');
INSERT INTO `orders` VALUES ('1031', '2014-12-28', '0.00');
INSERT INTO `orders` VALUES ('1032', '2015-02-23', '0.00');
INSERT INTO `orders` VALUES ('1033', '2015-02-23', '0.00');
INSERT INTO `orders` VALUES ('1034', '2015-04-06', '0.00');
INSERT INTO `orders` VALUES ('1035', null, '0.00');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `catid` varchar(10) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `descn` varchar(255) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `FK_fk_product_1` (`catid`),
  CONSTRAINT `FK_fk_product_1` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; (`category`) REFER `jpetstore/category';

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', 'Great companion for up to 75 years', 'bird4.gif');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', 'Great stress reliever', 'bird1.gif');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', 'Fresh Water fish from Japan', 'fish3.gif');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', 'Fresh Water fish from China', 'fish2.gif');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', 'Salt Water fish from Australia', 'fish1.jpg');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', 'Salt Water fish from Australia', 'fish4.gif');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', 'Friendly house cat, doubles as a princess', 'cat1.gif');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', 'Great for reducing mouse populations', 'cat3.gif');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', 'Friendly dog from England', 'dog2.gif');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', 'Great companion dog', 'dog4.gif');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', 'Great dog for a Fire Station', 'dog5.gif');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', 'Cute dog from France', 'dog6.gif');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', 'Great family dog', 'dog1.gif');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', 'Great hunting dog', 'dog5.gif');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', 'Friendly green friend', 'lizard2.gif');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', 'Doubles as a watch dog', 'lizard3.gif');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `username` varchar(80) NOT NULL,
  `lang` varchar(80) NOT NULL,
  `catid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `FK_Reference_7` (`catid`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`username`) REFERENCES `account` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 7168 kB; InnoDB free: 6144 kB; (`username`) REF';

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('44443', 'english', 'BIRDS');
INSERT INTO `profile` VALUES ('8888', 'chinese', 'REPTILES');
INSERT INTO `profile` VALUES ('8989uuu', 'english', 'BIRDS');
INSERT INTO `profile` VALUES ('9999', 'chinese', 'BIRDS');
INSERT INTO `profile` VALUES ('hhhh', 'chinese', 'DOGS');
INSERT INTO `profile` VALUES ('KKK12', 'chi', 'BIRDS');
INSERT INTO `profile` VALUES ('LLLL', '1', 'BIRDS');
INSERT INTO `profile` VALUES ('UUU', 'chi', 'BIRDS');
INSERT INTO `profile` VALUES ('weikun', 'english', 'FISH');
INSERT INTO `profile` VALUES ('www', 'english', 'FISH');
INSERT INTO `profile` VALUES ('yyyy', 'english', 'DOGS');

-- ----------------------------
-- Procedure structure for addCart
-- ----------------------------
DROP PROCEDURE IF EXISTS `addCart`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCart`(IN `in_itemid` vaRCHAR(50), IN `in_qty` INT)
BEGIN
	
	set @maxid=0;
	set @orderdate='';
	set @count=0;
	set @qty=0;
	
	select max(orderid),orderdate into @maxid,@orderdate from orders; 
	
	if  @orderdate is null then -- 代表订单还可以添加新商品
		
		 -- 查询本次添加的商品是否在同一订单下还有同种商品，
		-- 如果有，将进行修改数量，如果没有，是真正的新商品，只需要insert。
		
		select count(*) into @count
		
		from cart
		where orderid=@maxid and 
				itemid=in_itemid;
		if @count=0 then
		
			insert into cart(orderid,itemid,quantity)
			values( @maxid ,in_itemid,in_qty);
			commit;
			
			
	   else
	   		select quantity into @qty
	   		from cart
	   		where orderid=@maxid and
	   		      itemid=in_itemid;
				
				call updateCart(@maxid,in_itemid,@qty+in_qty);	
		
			
		end if;
		
		
	else -- 日期为空的时候
		
			select max(orderid)+1 into @maxid from orders; 
			
			insert into orders(orderid)
			values( @maxid );
			
			insert into cart(orderid,itemid,quantity)
			values( @maxid ,in_itemid,in_qty);
		
	end if;
	call queryCart(@maxid);
	
	
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for delCart
-- ----------------------------
DROP PROCEDURE IF EXISTS `delCart`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delCart`(IN `in_orderid` INT, IN `in_itemid` vARCHAR(50))
BEGIN
	
	delete from Cart
	where orderid=in_orderid and
	  		itemid=in_itemid;
	commit;

	call queryCart(in_orderid);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for queryCart
-- ----------------------------
DROP PROCEDURE IF EXISTS `queryCart`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `queryCart`(IN `in_orderid` INT)
BEGIN
	
	
		select * 
		from 	product p,category c,item i,cart a
		where  
		      p.catid=c.catid and
		      i.productid=p.productid and
		      a.itemid=i.itemid and
		      a.orderid=in_orderid;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for queryPet
-- ----------------------------
DROP PROCEDURE IF EXISTS `queryPet`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `queryPet`(IN `in_category` CHAR(10), IN `in_pro` CHAR(10), IN `in_item` CHAR(10))
BEGIN

	
	/*
		in_category:宠物种类，为了查询product表
		in_pro:宠物产品,为了查询item表
		in_item:宠物项目，为了查询单个项目 为了查询item表
		

	*/
	if in_category!='' then
	
		select * from 
			product p,category c
		where  
		      p.catid=in_category and
				p.catid=c.catid;      
		      
	elseif in_pro!='' then
		
		select * 
		from 	product p,category c,item i
		where  i.productid=in_pro and
		       p.catid=c.catid and
		       i.productid=p.productid;
		      
	
		      
	elseif in_item!='' then	      
			select * 
			from 	item i,product p
			where  i.itemid=in_item and
			       i.productid=p.productid;
			      
		
	end if;

	


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_print_result
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_print_result`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_print_result`(
IN f_string varchar(1000),IN f_delimiter varchar(5)
)
BEGIN
  -- Get the separated string.
  declare cnt int default 0;
  declare i int default 0;
  set cnt = func_get_split_string_total(f_string,f_delimiter);
  drop table if exists tmp_print;
  create temporary table tmp_print (num int not null);
  while i < cnt
  do
    set i = i + 1;
    insert into tmp_print(num) values (func_get_split_string(f_string,f_delimiter,i));
  end while;
  select * from tmp_print;
  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for updateCartB
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateCartB`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCartB`(IN `in_olist` varchar(1000), IN `in_qlist` varchar(1000), IN `in_dlist` varchar(1000), IN `f_delimiter` varchar(5)
)
BEGIN
	
  /*
	  in_olist-- 要分割的orderid字符串
	  in_qlist-- 要分割的quantity字符串
	  in_dlist-- 要分割的itemid字符串
	  f_delimiter-- 分隔符
	*/	

  declare cnt int default 0;
  declare i int default 0;
  declare orderid int default 0;
  set @cnt = func_get_split_string_total(in_olist,f_delimiter); 
  
  while i < @cnt  do
    set i = i + 1;    
    set orderid=0+func_get_split_string(in_olist,f_delimiter,i);
    set @itemid=func_get_split_string(in_dlist,f_delimiter,i);
    set @quantity=0+func_get_split_string(in_qlist,f_delimiter,i);    
    update cart set quantity=@quantity	 
	 where orderid=orderid
	 and itemid=@itemid;   
  end while;
  commit;
  
  call queryCart(orderid+0);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for updateOrders
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateOrders`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateOrders`(IN `in_orderid` INT)
BEGIN
	update orders 
	set orderdate=now() 
	where orderid=in_orderid;
	commit;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_get_split_string
-- ----------------------------
DROP FUNCTION IF EXISTS `func_get_split_string`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_get_split_string`(`f_string` varchar(1000), `f_delimiter` varchar(5), `f_order` int) RETURNS varchar(255) CHARSET utf8
BEGIN
  -- Get the separated number of given string.
  declare result varchar(255) default '';
  set result = reverse(substring_index(reverse(substring_index(f_string,f_delimiter,f_order)),f_delimiter,1));
  return result;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_get_split_string_total
-- ----------------------------
DROP FUNCTION IF EXISTS `func_get_split_string_total`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_get_split_string_total`(`f_string` varchar(1000), `f_delimiter` varchar(5)
) RETURNS int(11)
BEGIN
  -- Get the total number of given string.
  return 1+(length(f_string) - length(replace(f_string,f_delimiter,'')));
END
;;
DELIMITER ;
