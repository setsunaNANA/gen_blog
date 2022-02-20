/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.28 : Database - vueblog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vueblog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `vueblog`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章标题',
  `first_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章首图，用于随机文章展示',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章正文',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `views` int NOT NULL COMMENT '浏览次数',
  `words` int NOT NULL COMMENT '文章字数',
  `type_id` bigint NOT NULL COMMENT '文章分类id',
  `user_id` bigint DEFAULT NULL COMMENT '文章作者id',
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `blog` */

insert  into `blog`(`id`,`title`,`first_picture`,`description`,`content`,`create_time`,`update_time`,`views`,`words`,`type_id`,`user_id`,`status`) values (1,'关于我！！','https://cdn.jsdelivr.net/gh/Naccl/blog-resource/blogHosting/2020/12/B01/001.jpg','guanyuuwp','关于我的信息如需哎','2020-05-22 22:05:49','2020-05-22 22:05:49',33,10,1,1,1),(2,'友情链接','https://cdn.jsdelivr.net/gh/Naccl/blog-resource/blogHosting/2020/12/B01/001.jpg','guanyuuwp','关于我的信息如需哎','2020-05-22 22:05:49','2020-05-22 22:05:49',32,10,1,1,1),(3,'最值得学习的博客项目eblog','https://cdn.jsdelivr.net/gh/Naccl/blog-resource/blogHosting/2020/12/B01/001.jpg','eblog是一个基于Springboot2.1.2开发的博客学习项目，为了让项目融合更多的知识点，达到学习目的，编写了详细的从0到1开发文档。主要学习包括：自定义Freemarker标签，使用shiro+redis完成了会话共享，redis的zset结构完成本周热议排行榜，t-io+websocket完成即时消息通知和群聊，rabbitmq+elasticsearch完成博客内容搜索引擎等。值得学习的地方很多！','**推荐阅读：**\r\n\r\n[分享一套SpringBoot开发博客系统源码，以及完整开发文档！速度保存！](https://mp.weixin.qq.com/s/jz6e977xP-OyaAKNjNca8w)\r\n\r\n[Github上最值得学习的100个Java开源项目，涵盖各种技术栈！](https://mp.weixin.qq.com/s/N-U0TaEUXnBFfBsmt_OESQ)\r\n\r\n[2020年最新的常问企业面试题大全以及答案](https://mp.weixin.qq.com/s/lR5LC5GnD2Gs59ecV5R0XA)','2020-05-28 09:36:38','2020-05-28 09:36:38',111,10,1,1,0),(4,'关注公众号JavaCat，回复xshell或navicat获取破解对应工具','https://cdn.jsdelivr.net/gh/Naccl/blog-resource/blogHosting/2020/12/B01/001.jpg','视频中所用到的xshell和navicat直接获取哈！','### 工具获取\r\n\r\n* xshell 6 绿色破解版：关注公众号：JavaCat，回复 xshell 获取\r\n* Navicat 11 简体中文版：关注公众号：JavaCat，回复 navicat 获取\r\n\r\n公众号二维码：\r\n\r\n![JavaCat](//image-1300566513.cos.ap-guangzhou.myqcloud.com/upload/images/20201020/7fa16a1f957f4cfebe7be1f6675f6f36.png \"JavaCat\")\r\n\r\n直接扫码回复对应关键字\r\n\r\n**推荐阅读：**\r\n\r\n[B站86K播放量，SpringBoot+Vue前后端分离完整入门教程！](https://mp.weixin.qq.com/s/jGEkHTf2X8l-wUenc-PpEw)\r\n\r\n[分享一套SpringBoot开发博客系统源码，以及完整开发文档！速度保存！](https://mp.weixin.qq.com/s/jz6e977xP-OyaAKNjNca8w)\r\n\r\n[Github上最值得学习的100个Java开源项目，涵盖各种技术栈！](https://mp.weixin.qq.com/s/N-U0TaEUXnBFfBsmt_OESQ)\r\n\r\n[2020年最新的常问企业面试题大全以及答案](https://mp.weixin.qq.com/s/lR5LC5GnD2Gs59ecV5R0XA)','2020-10-20 05:05:31','2020-10-20 05:05:31',101,11,1,1,0),(5,'生活就像海洋，只有意志坚强的人才能到达彼岸','','这里是摘要哈哈哈','内容？？？','2020-05-21 22:08:42','2020-05-21 22:08:42',100,10,2,1,0),(7,'你真的会写单例模式吗?','https://cdn.jsdelivr.net/gh/Naccl/blog-resource/blogHosting/2020/12/B01/001.jpg','单例模式可能是代码最少的模式了，但是少不一定意味着简单，想要用好、用对单例模式，还真得费一番脑筋。本文对 Java 中常见的单例模式写法做了一个总结，如有错漏之处，恳请读者指正。','> 作者：吃桔子的攻城狮 来源：http://www.tekbroaden.com/singleton-java.html\n\n\n单例模式可能是代码最少的模式了，但是少不一定意味着简单，想要用好、用对单例模式，还真得费一番脑筋。本文对 Java 中常见的单例模式写法做了一个总结，如有错漏之处，恳请读者指正。\n\n饿汉法\n===\n\n顾名思义，饿汉法就是在第一次引用该类的时候就创建对象实例，而不管实际是否需要创建。代码如下：\n\n```\npublic class Singleton {  \n    private static Singleton = new Singleton();\n    private Singleton() {}\n    public static getSignleton(){\n        return singleton;\n    }\n}\n\n```\n\n这样做的好处是编写简单，但是无法做到延迟创建对象。但是我们很多时候都希望对象可以尽可能地延迟加载，从而减小负载，所以就需要下面的懒汉法：\n','2020-05-22 00:42:44','2020-05-22 00:42:44',10,324,1,1,0),(9,'真正理解Mysql的四种隔离级别@','','事务是应用程序中一系列严密的操作，所有操作必须成功完成，否则在每个操作中所作的所有更改都会被撤消。也就是事务具有原子性，一个事务中的一系列的操作要么全部成功，要么一个都不做。\n\n事务的结束有两种，当事务中的所以步骤全部成功执行时，事务提交。如果其中一个步骤失败，将发生回滚操作，撤消撤消之前到事务开始时的所以操作。','### 什么是事务  \n\n> 事务是应用程序中一系列严密的操作，所有操作必须成功完成，否则在每个操作中所作的所有更改都会被撤消。也就是事务具有原子性，一个事务中的一系列的操作要么全部成功，要么一个都不做。\n> \n> 事务的结束有两种，当事务中的所以步骤全部成功执行时，事务提交。如果其中一个步骤失败，将发生回滚操作，撤消撤消之前到事务开始时的所以操作。\n\n**事务的 ACID**\n\n事务具有四个特征：原子性（ Atomicity ）、一致性（ Consistency ）、隔离性（ Isolation ）和持续性（ Durability ）。这四个特性简称为 ACID 特性。\n\n> 1 、原子性。事务是数据库的逻辑工作单位，事务中包含的各操作要么都做，要么都不做\n> \n> 2 、一致性。事 务执行的结果必须是使数据库从一个一致性状态变到另一个一致性状态。因此当数据库只包含成功事务提交的结果时，就说数据库处于一致性状态。如果数据库系统 运行中发生故障，有些事务尚未完成就被迫中断，这些未完成事务对数据库所做的修改有一部分已写入物理数据库，这时数据库就处于一种不正确的状态，或者说是 不一致的状态。','2020-05-22 22:04:46','2020-05-22 22:04:46',323,101,1,1,0),(10,'博客项目eblog讲解视频上线啦，长达17个小时！！','https://cdn.jsdelivr.net/gh/Naccl/blog-resource/blogHosting/2020/12/B01/001.jpg','1. 慕课网免费资源好久都没更新了，新教程大都付费\n2. B站上的视频繁多，通过收藏和弹幕数量通常很容易判断出视频是否优质\n3. 讲真，B站的弹幕文化，让我觉得，我不是一个在学习，自古人才出评论。哈哈哈\n4. B站视频通常广告少，up主的用心录制，通常只为了你关注他','ok，再回到我们的eblog项目，源码、文档、视频我都开源出来了。来些基本操作：github上给个star，B站视频给个三连支持咧。\n\neblog源码：https://github.com/MarkerHub/eblog\n\n点击这里：[10+篇完整开发文档](https://mp.weixin.qq.com/mp/homepage?__biz=MzIwODkzOTc1MQ==&hid=1&sn=8e512316c3dfe140e636d0c996951166)\n\n![](//image-1300566513.cos.ap-guangzhou.myqcloud.com/upload/images/20200508/c290d945b7d24c79b172759bdb5b94e0.png)\n\n视频讲解：（记得关注我噢！）\n\nhttps://www.bilibili.com/video/BV1ri4y1x71A\n\n![](//image-1300566513.cos.ap-guangzhou.myqcloud.com/upload/images/20200508/983b5abc1c934360a1a1362347a275f7.png)\n\n项目其实还很多bug的，哈哈，我还需要进行二次迭代，到时候再发迭代文档出来。\n\n关注下我的B站，作为一个自媒体的自由职业者，没有什么比涨粉更让我开心的了，嘻嘻。\n\n近期即将推出的视频教程：\n\n1. 搭建脚手架，前后端分离首秀\n2. Shiro入门到精通教程\n3. SpringBoot2.2.6最新入门教程','2020-05-22 22:05:49','2020-05-22 22:05:49',32,10,1,1,0),(11,'测试文章','','阿斯顿','阿斯达sa![sadadas](https://t7.baidu.com/it/u=2168645659,3174029352&fm=193&f=GIF)\n\ndsfs ![asdff](https://t7.baidu.com/it/u=2259261418,2370578071&fm=193&f=GIF)\n阿三大苏打撒','2022-01-20 15:51:35','2022-01-24 19:13:43',4,259,1,1,1),(12,'asda','','meiyouzhaiyao','asdasdfdf','2022-01-24 19:23:19','2022-01-24 19:23:19',0,233,1,5,0);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '头像(图片路径)',
  `create_time` datetime DEFAULT NULL COMMENT '评论时间',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '评论者ip地址',
  `is_admin_comment` int NOT NULL COMMENT '博主回复',
  `is_published` bit(1) NOT NULL DEFAULT b'1' COMMENT '公开或非公开',
  `blog_id` bigint DEFAULT NULL COMMENT '所属的文章',
  `parent_comment_id` bigint DEFAULT NULL COMMENT '父评论id，-1为根评论',
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '个人网站',
  `parent_comment_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '被回复昵称',
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '如果评论昵称为QQ号，则将昵称和头像置为QQ昵称和QQ头像，并将此字段置为QQ号备份',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `comment` */

insert  into `comment`(`id`,`nickname`,`email`,`content`,`avatar`,`create_time`,`ip`,`is_admin_comment`,`is_published`,`blog_id`,`parent_comment_id`,`website`,`parent_comment_nickname`,`qq`) values (1,'醉墨','8949048964@qq.com','测试1','https://hbimg.huabanimg.com/8c7e98227a291c52e3951931b7a07158eec2acda27a8b-87wdWD_fw658/format/webp','2020-05-22 22:05:49','101,2,2,1',0,'',19,-1,'32','范德萨','894904866'),(2,'醉墨','8949048964@qq.com','测试11','https://hbimg.huabanimg.com/8c7e98227a291c52e3951931b7a07158eec2acda27a8b-87wdWD_fw658/format/webp','2020-05-23 22:05:49','101,2,2,1',1,'',19,1,'32','范德萨','894904866'),(3,'醉墨','8949048964@qq.com','测试12','https://hbimg.huabanimg.com/8c7e98227a291c52e3951931b7a07158eec2acda27a8b-87wdWD_fw658/format/webp','2020-05-24 22:05:49','101,2,2,1',0,'',19,1,'32','范德萨','894904866'),(4,'醉墨','8949048964@qq.com','测试2','https://hbimg.huabanimg.com/8c7e98227a291c52e3951931b7a07158eec2acda27a8b-87wdWD_fw658/format/webp','2020-05-25 22:05:49','101,2,2,1',1,'',19,-1,'32','范德萨','894904866'),(5,'醉墨','8949048964@qq.com','测试21','https://hbimg.huabanimg.com/8c7e98227a291c52e3951931b7a07158eec2acda27a8b-87wdWD_fw658/format/webp','2020-05-26 22:05:49','101,2,2,1',0,'',19,4,'32','范德萨','894904866'),(6,'醉墨','8949048964@qq.com','测试3','https://hbimg.huabanimg.com/8c7e98227a291c52e3951931b7a07158eec2acda27a8b-87wdWD_fw658/format/webp','2020-05-27 22:05:49','101,2,2,1',1,'',19,-1,'32','范德萨','894904866');

/*Table structure for table `friend` */

DROP TABLE IF EXISTS `friend`;

CREATE TABLE `friend` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '站点',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '头像',
  `is_published` bit(1) NOT NULL DEFAULT b'1' COMMENT '公开或隐藏',
  `views` int NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `friend` */

insert  into `friend`(`id`,`nickname`,`description`,`website`,`avatar`,`is_published`,`views`,`create_time`) values (1,'SuiNian\'s Blog','你歪头眯眼一笑 我便沉溺无法逃离','https://blog.nianbroken.top','https://blog.nianbroken.top/favicon.png','',0,'2020-05-05 08:05:49'),(2,'听得入迷空间','记录，感受，表达','https://blog.tdrme.cn','https://cdn.jsdelivr.net/gh/tdrme/tdrme.github.io@master/20210504090204404.png','',0,'2020-05-05 08:05:49'),(3,'夕阳皎月的个人博客','When KobeBryant died,a piece of me died.','http://www.twilightjy.com/','https://cdn.jsdelivr.net/gh/yubifeng/blog-resource/bloghosting/website/friend/myavatar.jpg','',0,'2020-05-05 08:05:49'),(4,'空山柠语','歲時艱，行路難。形將破，意且存，勿忘我','http://www.lemjuice.cn/','http://www.lemjuice.cn/00000147.png','',0,'2020-05-05 08:05:49'),(5,'ZhaoQuinn\'s Blog','热爱科技，热爱生活.','https://zhaoq.me','https://zhaoq.me/usr/uploads/2020/03/2395074381.jpg','',0,'2020-05-05 08:05:49');

/*Table structure for table `type` */

DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `type` */

insert  into `type`(`id`,`type_name`) values (1,'技术博客'),(2,'面试'),(3,'心情随写'),(4,'学习笔记');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '头像地址',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮箱',
  `status` int NOT NULL,
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色访问权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`nickname`,`avatar`,`email`,`status`,`create_time`,`update_time`,`role`) values (1,'root','96e79218965eb72c92a549dd5a330112','root','https://img.lanrentuku.com/img/allimg/1612/14831720501619.jpg','admin@naccl.top',1,'2020-04-20 10:44:01','2020-04-20 10:44:01','role_root'),(2,'admin','96e79218965eb72c92a549dd5a330112','Admin','https://image-1300566513.cos.ap-guangzhou.myqcloud.com/upload/images/5a9f48118166308daba8b6da7e466aab.jpg','admin@naccl.top',1,'2020-04-20 10:44:01','2020-04-20 10:44:01','role_admin'),(3,'user','96e79218965eb72c92a549dd5a330112','User','https://img.lanrentuku.com/img/allimg/1612/14831720501619.jpg','admin@naccl.top',1,'2020-04-20 10:44:01','2020-04-20 10:44:01','role_user'),(4,'Visitor','96e79218965eb72c92a549dd5a330112','vistor','https://img.lanrentuku.com/img/allimg/1612/14831720501619.jpg','admin@naccl.top',1,'2020-04-20 10:44:01','2020-04-20 10:44:01','role_guest'),(5,'lzy','lzy','lzy','https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AASTbqe.img?h=416&w=799&m=6&q=60&u=t&o=f&l=f','827725477@qq.com',1,'2022-01-22 01:49:18','2022-01-21 01:49:23','role_root');

/*Table structure for table `visit_log` */

DROP TABLE IF EXISTS `visit_log`;

CREATE TABLE `visit_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '访客标识码',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求接口',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求方式',
  `param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '请求参数',
  `behavior` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '访问行为',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '访问内容',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ip',
  `ip_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ip来源',
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '浏览器',
  `times` int NOT NULL COMMENT '请求耗时（毫秒）',
  `create_time` datetime DEFAULT NULL COMMENT '访问时间',
  `user_agent` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'user-agent用户代理',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `visit_log` */

insert  into `visit_log`(`id`,`uuid`,`uri`,`method`,`param`,`behavior`,`content`,`remark`,`ip`,`ip_source`,`os`,`browser`,`times`,`create_time`,`user_agent`) values (1,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.62',397,'2022-01-20 01:56:39','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(2,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blog/1','GET','{\"id\":1}','查看博客','关于我！！','文章标题：关于我！！',NULL,NULL,'Windows 10','Edge 97.0.1072.62',11,'2022-01-20 01:57:24','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(3,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.62',14,'2022-01-20 01:58:01','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(4,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/about','GET','{}','访问页面','关于我','',NULL,NULL,'Windows 10','Edge 97.0.1072.62',30,'2022-01-20 01:58:03','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(5,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blog/archives','GET','{\"currentPage\":1}','访问页面','归档','',NULL,NULL,'Windows 10','Edge 97.0.1072.62',11,'2022-01-20 01:58:11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(6,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/friends','GET','{}','访问页面','友链','',NULL,NULL,'Windows 10','Edge 97.0.1072.62',9,'2022-01-20 01:58:11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(7,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.62',486,'2022-01-20 14:14:37','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(8,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.62',120,'2022-01-20 15:49:27','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(9,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.62',12,'2022-01-20 15:52:44','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(10,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blog/11','GET','{\"id\":11}','查看博客','测试文章','文章标题：测试文章',NULL,NULL,'Windows 10','Edge 97.0.1072.62',5,'2022-01-20 15:52:47','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(11,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.62',10,'2022-01-20 15:53:15','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(12,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blog/11','GET','{\"id\":11}','查看博客','测试文章','文章标题：测试文章',NULL,NULL,'Windows 10','Edge 97.0.1072.62',6,'2022-01-20 15:53:17','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(13,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.62',10,'2022-01-20 16:07:25','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(14,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blog/11','GET','{\"id\":11}','查看博客','测试文章','文章标题：测试文章',NULL,NULL,'Windows 10','Edge 97.0.1072.62',7,'2022-01-20 16:07:27','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(15,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blog/11','GET','{\"id\":11}','查看博客','测试文章','文章标题：测试文章',NULL,NULL,'Windows 10','Edge 97.0.1072.62',5,'2022-01-20 16:09:34','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62'),(16,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.69',15,'2022-01-22 16:57:14','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69'),(17,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.69',17,'2022-01-22 17:08:29','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69'),(18,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0','/blogs','GET','{\"currentPage\":1}','访问页面','首页','第1页',NULL,NULL,'Windows 10','Edge 97.0.1072.69',2,'2022-01-22 17:08:49','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.69');

/*Table structure for table `visitor` */

DROP TABLE IF EXISTS `visitor`;

CREATE TABLE `visitor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '访客标识码',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ip',
  `ip_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ip来源',
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '浏览器',
  `create_time` datetime NOT NULL COMMENT '首次访问时间',
  `last_time` datetime NOT NULL COMMENT '最后访问时间',
  `pv` int DEFAULT NULL COMMENT '访问页数统计',
  `user_agent` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'user-agent用户代理',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `visitor` */

insert  into `visitor`(`id`,`uuid`,`ip`,`ip_source`,`os`,`browser`,`create_time`,`last_time`,`pv`,`user_agent`) values (1,'3c47a1ae-d62e-4b2e-85df-de9f0d9d27e0',NULL,NULL,'Windows 10','Edge 97.0.1072.62','2022-01-20 01:56:39','2022-01-22 17:08:49',18,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
