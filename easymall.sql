/*
SQLyog Ultimate v8.32 
MySQL - 5.0.22-community-nt : Database - easymall
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`easymall` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `easymall`;

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `order_id` varchar(100) NOT NULL default '',
  `product_id` varchar(100) NOT NULL default '',
  `buynum` int(11) default NULL,
  PRIMARY KEY  (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

insert  into `orderitem`(`order_id`,`product_id`,`buynum`) values ('08b5b547-9f33-4c97-8203-014acdaf8fbc','16c653b3-da6b-49ad-8b61-a7263894e575',1),('08b5b547-9f33-4c97-8203-014acdaf8fbc','327e1fdd-1f11-4ebb-ba49-94882585cc96',1),('255895b4-428f-4ccd-89b6-38111e6a13f8','0afc774a-b6b7-4f17-95a9-17da3df3a0ea',1),('255895b4-428f-4ccd-89b6-38111e6a13f8','327e1fdd-1f11-4ebb-ba49-94882585cc96',1),('9c8b72cf-22e0-402a-addd-6b117a67c29c','16c653b3-da6b-49ad-8b61-a7263894e575',1),('9c8b72cf-22e0-402a-addd-6b117a67c29c','327e1fdd-1f11-4ebb-ba49-94882585cc96',1),('a8e64d30-7695-4c27-a986-b2508c3345ef','31c83d21-9e3e-4efb-bb64-39a537711eea',1),('a8e64d30-7695-4c27-a986-b2508c3345ef','c0b17be3-5d1b-41d8-8e49-599989d9392d',1),('b232bc54-95a1-4264-bfdf-05206d1c7d49','16c653b3-da6b-49ad-8b61-a7263894e575',1),('b2660a53-cb16-4124-aedf-3ce5823381d8','16c653b3-da6b-49ad-8b61-a7263894e575',1),('b2660a53-cb16-4124-aedf-3ce5823381d8','30b7d0d1-248b-471c-bea5-df140e02c1b5',1),('dbf80b8f-75ab-44c7-a592-5720892c4dbf','1ab4b5bd-c48c-4adc-925f-1ff1962db850',1),('dbf80b8f-75ab-44c7-a592-5720892c4dbf','30b7d0d1-248b-471c-bea5-df140e02c1b5',2),('df4eb1e2-26f6-466d-b210-4712ab3fd061','327e1fdd-1f11-4ebb-ba49-94882585cc96',1),('e81ce5ee-1143-4397-b577-27208befecd7','16c653b3-da6b-49ad-8b61-a7263894e575',1),('e81ce5ee-1143-4397-b577-27208befecd7','30b7d0d1-248b-471c-bea5-df140e02c1b5',1),('f055b064-b403-4f86-a578-7e0a59c40796','16c653b3-da6b-49ad-8b61-a7263894e575',3),('f055b064-b403-4f86-a578-7e0a59c40796','25ef3357-b938-43fe-b856-0e1a0a0b788b',8),('fd8d9c1c-da57-4551-870c-4b943d1c85ac','30b7d0d1-248b-471c-bea5-df140e02c1b5',1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(100) NOT NULL,
  `money` double default NULL,
  `receiverinfo` varchar(255) default NULL,
  `paystate` int(11) default NULL,
  `ordertime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`money`,`receiverinfo`,`paystate`,`ordertime`,`user_id`) values ('08b5b547-9f33-4c97-8203-014acdaf8fbc',51665,'@Tran测试2',1,'2016-09-13 10:52:28',16),('255895b4-428f-4ccd-89b6-38111e6a13f8',721,'aaaaaaaaaa',1,'2016-09-13 10:52:29',16),('9c8b72cf-22e0-402a-addd-6b117a67c29c',51665,'新的订单测试',1,'2016-09-13 10:52:30',16),('a8e64d30-7695-4c27-a986-b2508c3345ef',6000,'@TranByStu',1,'2016-09-13 10:52:32',23),('b232bc54-95a1-4264-bfdf-05206d1c7d49',50999,'ThreadLoad1024_01',1,'2016-10-26 16:07:43',33),('b2660a53-cb16-4124-aedf-3ce5823381d8',70998,'范德萨发',0,'2016-10-22 16:57:45',33),('dbf80b8f-75ab-44c7-a592-5720892c4dbf',40198,'事务订单添加1024_2',0,'2016-10-24 15:27:19',33),('df4eb1e2-26f6-466d-b210-4712ab3fd061',666,'ThreadLocal2',0,'2016-09-13 10:09:07',16),('e81ce5ee-1143-4397-b577-27208befecd7',70998,'发顺丰',0,'2016-10-22 17:00:52',33),('f055b064-b403-4f86-a578-7e0a59c40796',162773,'北京市昌平区。。。。',0,'2016-10-22 10:16:02',22),('fd8d9c1c-da57-4551-870c-4b943d1c85ac',19999,'ThreadLoad1024_02',0,'2016-10-24 16:44:06',33);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` varchar(100) NOT NULL,
  `name` varchar(255) default NULL,
  `price` double default NULL,
  `category` varchar(255) default NULL,
  `pnum` int(11) default NULL,
  `imgurl` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`price`,`category`,`pnum`,`imgurl`,`description`) values ('0afc774a-b6b7-4f17-95a9-17da3df3a0ea','充气娃娃v4389',55,'电子数码',19,'/WEB-INF/upload/b/d/3/8/1/e/4/4/b0634b30-4b77-4e71-8543-5dd446e8a58d103011-106.jpg','限量版！你懂得'),('14b49523-8592-4af0-8bfb-88b203361193',NULL,0,NULL,0,NULL,NULL),('16c653b3-da6b-49ad-8b61-a7263894e575','神舟战神GX10-PLUS',50999,'电子数码',674,'/WEB-INF/upload/8/b/4/2/9/3/3/0/00c12b7d-d9d2-4c11-92a5-b41183dbdac0IMG_1586.JPG','市面唯一桌面级CPU-6700K+双GTX1080桌面级显卡，最旗舰的配置，最旗舰的价格'),('1ab4b5bd-c48c-4adc-925f-1ff1962db850','女朋友出租',200,'日用百货',0,'/WEB-INF/upload/e/b/a/4/e/9/c/0/1d453905-0367-4cc4-aa92-32b3d252f07bdt_03-.jpg','。。。'),('25ef3357-b938-43fe-b856-0e1a0a0b788b','喝特么了',1222,'电子数码',8,'/WEB-INF/upload/9/e/b/c/4/2/2/f/bf89a48f-18b9-46b1-bea3-bc488ac38c42ab59421f-ed3c-484f-9238-d7af286f917a.jpg','赶快搬砖去'),('30b7d0d1-248b-471c-bea5-df140e02c1b5','雷蛇 灵刃17pro',19999,'电子数码',5,'/WEB-INF/upload/3/7/f/f/5/1/6/d/0507c342-dc9c-43d8-b36a-be615342170fIMG_1584.JPG','捍卫最强灯厂的顶级力作，我们有最炫酷的灯光、最炫酷的灯光和最炫酷的灯光'),('31c83d21-9e3e-4efb-bb64-39a537711eea','某某台式机+显示器',5000,'电子数码',5,'/WEB-INF/upload/6/d/4/c/0/1/4/d/64261265-8d77-4520-a005-c09d04c28d85_58a1c0a6-c0e6-4fec-aad9-7ac72bb4e23d.jpg','某某台式机+显示器'),('327e1fdd-1f11-4ebb-ba49-94882585cc96','惠普打印',666,'电子数码',6,'/WEB-INF/upload/3/0/c/6/c/c/8/f/3b32ce8d-238d-44f8-8da2-9d8ec80d6ba96f84843a-1d1e-49c7-b4ce-c035d7790171.jpg','惠普打印机'),('3662176a-57ab-4f6e-8226-2a68320965fd','日货原装写真集',180,'电子数码',44,'/WEB-INF/upload/e/4/0/c/c/d/e/c/2af75938-4b34-4999-b5ec-c2324b316b70SNIS-345.jpg','。。。。'),('49a5ad36-dd9a-4e46-9e46-4ba64f1c40a2','SHARP',2000,'家用电器',520,'/WEB-INF/upload/5/0/7/1/9/e/b/a/5bf2b167-9e80-4afa-b966-ac7a63fc62536963ecfb-9e33-4f03-8ec1-65c1db515755.jpg',''),('49b25d2b-d36d-467e-b844-8c0baa4c9b7e','Canon',2,'电子数码',5,'/WEB-INF/upload/9/1/2/c/5/0/1/5/36e7531c-a167-4ce8-816c-eaf2eeae9ccc20f22836-6142-4841-978b-6633b3b097e1.jpg',''),('4ca34ccb-d71c-41bb-a607-07064640338f','平板电脑',3000,'电子数码',3,'/WEB-INF/upload/4/4/3/4/f/1/1/c/d8cf24e5-59a8-410e-b434-eb2014cc924622d124c9-df52-4cd4-88b3-691005f1cafe.jpg','爆款热销，品质保障'),('4f969e7e-8605-4c88-8faa-b3cb5590c030','爱普生打印机1',3000,'电子数码',19,'/WEB-INF/upload/b/6/0/7/e/4/8/3/661f4eb3-77f1-430b-a3ca-a35394a7089e_6f84843a-1d1e-49c7-b4ce-c035d7790171.jpg','就是好用'),('530b9bc7-a649-45ac-bada-bf5e639d36a1','大数据全套教材',26800,'图书杂志',10,'/WEB-INF/upload/e/9/c/7/a/a/a/e/796c635d-052f-466c-ab72-9df8ed6494d9123_m_1_s_3.jpg','成为大数据工程师就是这么简单'),('6d4c7e1d-f780-4ae5-92fb-9b629bdbf090','欧莱雅',120,'电子数码',30,'/WEB-INF/upload/7/9/7/2/b/f/d/e/e49236ae-0506-4c95-955c-ed5dafb09078c987f2c1-4123-4d87-83bd-fe2fb221e272.jpg','城市套路深，我要回农村，带瓶欧莱雅，媳妇一大把。'),('79e7b865-520d-4977-8944-d9bd2004f2ae','kaola',999,'电子数码',99,'/WEB-INF/upload/2/e/7/1/4/7/7/e/b480151d-4ad5-4af0-8b33-d6d7a8a7bf12Koala.jpg','kaola'),('80b3cad7-9468-4b12-bdae-32ba5c2e20aa','礼物',0,'日用百货',1000,'/WEB-INF/upload/8/0/7/1/5/b/0/b/2907abde-9b8f-4f80-8b48-1683b68d5a20ProdImgServlet.jpg','kjjjjjjjjj'),('95df235d-da81-4d42-bfbf-65d5e32272ac','超薄本',3000,'电子数码',0,'/WEB-INF/upload/a/6/e/4/9/9/7/8/8c2c0c65-aaae-4f56-b0f2-a6d8f609151e_22d124c9-df52-4cd4-88b3-691005f1cafe.jpg','就是薄'),('9dc28e47-f8a2-4cfd-aaca-692cc673ea6c','农村土豪机',3000,'电子数码',12,'/WEB-INF/upload/3/1/4/6/c/2/e/8cce9af4-df76-439a-840a-b8fd77fc16d0301fb535-938a-4103-a2f5-f3f9af9ba9c6.jpg','城市套路深，我要回农村，农村路太滑，地形太复杂。'),('9e9a8721-12f9-4953-8aab-a7010532b12b','美女',123456789,'电子数码',1,'/WEB-INF/upload/2/3/8/a/9/b/d/4/fc31cf05-3b0d-4f5a-9f89-7a7d51b9e2f13.jpg','12345，上山打老虎，\r\n67890，。。。。。'),('a92a4f4b-fab2-440c-936c-2ec0b8985b4c','测试03',12,'电子数码',12,'/WEB-INF/upload/0/1/d/9/6/d/6/6/b751d2ba-3d38-4d52-982e-071fb525e852_371cee6d-d81b-42b7-a11f-3ad36dc0e537.jpg','地方撒发生的'),('af22bf4a-bfd8-4de9-b11f-e7fee3b930f4','AlienWare(外星人) 17',30999,'电子数码',10,'/WEB-INF/upload/5/5/3/4/2/4/6/1/5ff0a1ac-7d86-4359-ab3d-6f4701b648d8IMG_1583.JPG','我们不只做灯，新一代外星人17，买灯送笔记本啦！！'),('b5bc15ab-7b5f-475d-a378-f133f5d0ccdd','1313',1213,'电子数码',12,'/WEB-INF/upload/9/d/4/8/0/1/c/d/7c553e04-a928-461a-a9a3-de7e90c1280ca26a37a2-272b-4a28-b78b-c387f51de4a2.jpg',''),('b79da16c-eb74-4261-b499-4ac4260c46c9','金斯顿内存条',128,'电子数码',0,'/WEB-INF/upload/4/1/6/1/6/a/b/1/c69ee1e6-2d07-4a9e-b140-5f545d6deb95_244c59c6-bf0a-451b-81e6-18f8bb257e5f.jpg','金斯顿内存条'),('b843485b-e4dc-4891-a7f0-2c84e83d3b61','æµè¯åå',12,'çµå­æ°ç ',12,'/WEB-INF/upload/c/4/d/9/e/d/2/e/3c8a1ef9-c4b9-4822-a415-44bdd1fe019f_301fb535-938a-4103-a2f5-f3f9af9ba9c6.jpg','èå¾·è¨åçå¤§'),('bf0909fd-94bc-490f-ae92-81820bc0598c','Lenovo',1999,'电子数码',99,'/WEB-INF/upload/d/f/7/b/b/0/a/9/80bd2ff8-2f19-47ec-b83b-3349fdb74a6758a1c0a6-c0e6-4fec-aad9-7ac72bb4e23d.jpg',''),('c0b17be3-5d1b-41d8-8e49-599989d9392d','屌丝手机',1000,'电子数码',9,'/WEB-INF/upload/d/2/1/b/d/c/5/da979ccc-cd15-4c04-b4df-df3109ab46f0301fb535-938a-4103-a2f5-f3f9af9ba9c6.jpg','就是好'),('c3670f0a-a50d-467b-8f8c-736b90752ede','微星gt73vr-GTX1080',25999,'电子数码',10,'/WEB-INF/upload/e/f/8/f/b/b/8/2/8cbbd4fe-642e-41c7-95c2-d6aae0b06251IMG_1585.JPG','10根热管 5个风扇 一键强冷 直接起飞\r\n（前排提示：记得拴根绳子，防止飞的太远）。\r\n为了GTX1080值得拥有！！'),('c66c36b2-a9f7-4b31-a1de-0d19e1bdaa00','cf',123,'电子数码',0,'/WEB-INF/upload/4/d/8/3/1/f/c/f/f116e0da-346a-42e8-be2b-448ee5b0440d6f84843a-1d1e-49c7-b4ce-c035d7790171.jpg',''),('cc94f661-ca8d-4116-8c84-0e6d95b56b8f','骚年',1234,'日用百货',123,'/WEB-INF/upload/a/b/c/b/4/9/a/0/e63e1312-8663-48bf-8c22-db0ecefc87c22.gif','………………枝上柳绵吹又少………………'),('d31c6bf1-3106-4b58-b031-7b0876433f40','神州小本',30000,'电子数码',10,'/WEB-INF/upload/2/e/8/3/b/4/f/7139449d-7051-4c2e-a662-a15517e468f122d124c9-df52-4cd4-88b3-691005f1cafe.jpg','城市套路深，我要回农村，带回一神州，回家竟忽悠。'),('ef05ff1c-1501-481a-8999-02c883cf7d9c','鲜黄瓜',0.01,'日用百货',999,'/WEB-INF/upload/a/b/a/2/b/a/5/3c5e8973-497d-427f-92cd-48511bd3a04f1.jpg','买了我的黄瓜，忘了那个他');

/*Table structure for table `resource` */

DROP TABLE IF EXISTS `resource`;

CREATE TABLE `resource` (
  `id` int(11) NOT NULL auto_increment,
  `path` varchar(255) default NULL,
  `role_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resource` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) default NULL,
  `password` varchar(40) default NULL,
  `nickname` varchar(60) default NULL,
  `email` varchar(60) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`nickname`,`email`) values (16,'tom1','456','tom','tom@qq.com'),(17,'tom2','202cb962ac59075b964b07152d234b70','tom2','tom2@qq.com'),(22,'guanyu','202cb962ac59075b964b07152d234b70','guanyu','guanyu@126.com'),(23,'boss','ceb8447cc4ab78d2ec34cd9f11e4bed2','boss','boss@tedu.com'),(24,'朴乾','202cb962ac59075b964b07152d234b70','朴朴','PIAOQIAN@easymall.com'),(25,'guanyu1','202cb962ac59075b964b07152d234b70','guanyui1','guanyu@126.com'),(26,'tuhao1','698d51a19d8a121ce581499d7b701668','tuhao','tuhao@126.com'),(27,'tuhao2','698d51a19d8a121ce581499d7b701668','tuhao2','tuhao@126.com'),(28,'tuhao3','202cb962ac59075b964b07152d234b70','tuhao3','tuhao@126.com'),(33,'jinxf','202cb962ac59075b964b07152d234b70','靳幸福','xflovejava@126.com'),(34,'jinxf1','123','jinxf','jinxf@tedu.cn'),(35,'jinxf898','202cb962ac59075b964b07152d234b70','jinxf898','jinxf@tedu.cn');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
