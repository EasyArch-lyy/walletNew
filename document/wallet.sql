CREATE DATABASE `wallet`;

CREATE TABLE `ums_wallet_login` (
  `id` int DEFAULT NULL COMMENT 'id',
  `username` varchar(50) DEFAULT NULL,
  `memberId` varchar(50) NOT NULL COMMENT '用户特征id',
  `loginAccount` varchar(50) DEFAULT NULL COMMENT '登录账号',
  `loginPasswd` varchar(50) DEFAULT NULL COMMENT '登录密码',
  PRIMARY KEY (`memberId`),
  KEY `memberIx` (`memberId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户登录表';

CREATE TABLE `ums_wallet_msg` (
  `id` int DEFAULT NULL COMMENT 'id',
  `memberId` varchar(50) NOT NULL COMMENT '用户特征id',
  `name` varchar(25) DEFAULT NULL COMMENT '用户姓名',
  `gender` tinyint(1) DEFAULT NULL COMMENT '性别，1男，0女',
  `age` int DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`memberId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
