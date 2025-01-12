CREATE TABLE `interface_info` (
                                  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '接口ID',
                                  `userId` BIGINT(20) NOT NULL COMMENT '创建人ID',
                                  `name` VARCHAR(255) NOT NULL COMMENT '接口名称',
                                  `description` TEXT COMMENT '描述',
                                  `url` VARCHAR(1024) NOT NULL COMMENT '接口地址',
                                  `method` VARCHAR(50) NOT NULL COMMENT '请求方法 (GET, POST, PUT, DELETE等)',
                                  `requestParams` text COMMENT '请求参数',
                                  `requestHeader` TEXT COMMENT '请求头',
                                  `responseHeader` TEXT COMMENT '响应头',
                                  `status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '接口状态 (0-关闭, 1-开启)',
                                  `createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                  `updateTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                  `isDelete` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否删除 (0-未删除, 1-已删除)',
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='接口信息表';