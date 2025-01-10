CREATE TABLE `interface_info` (
                                  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '接口ID',
                                  `userId` BIGINT(20) NOT NULL COMMENT '创建人ID',
                                  `name` VARCHAR(255) NOT NULL COMMENT '接口名称',
                                  `description` TEXT COMMENT '描述',
                                  `url` VARCHAR(1024) NOT NULL COMMENT '接口地址',
                                  `method` VARCHAR(50) NOT NULL COMMENT '请求方法 (GET, POST, PUT, DELETE等)',
                                  `requestHeader` TEXT COMMENT '请求头',
                                  `responseHeader` TEXT COMMENT '响应头',
                                  `status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '接口状态 (0-关闭, 1-开启)',
                                  `createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                  `updateTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
                                  `isDelete` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '是否删除 (0-未删除, 1-已删除)',
                                  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='接口信息表';
INSERT INTO `interface_info` (`userId`, `name`, `description`, `url`, `method`, `requestHeader`, `responseHeader`, `status`, `createTime`, `updateTime`, `isDelete`) VALUES
                                                                                                                                                                         (1, '用户登录', '用户登录接口', 'https://api.example.com/user/login', 'POST', '{"Content-Type": "application/json"}', '{"token": "string"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (2, '用户注册', '用户注册接口', 'https://api.example.com/user/register', 'POST', '{"Content-Type": "application/json"}', '{"userId": "long"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (3, '获取用户信息', '获取指定用户信息', 'https://api.example.com/user/info', 'GET', '{"Authorization": "Bearer token"}', '{"user": "object"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (4, '更新用户信息', '更新指定用户信息', 'https://api.example.com/user/update', 'PUT', '{"Authorization": "Bearer token"}', '{"status": "success"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (5, '删除用户', '删除指定用户', 'https://api.example.com/user/delete', 'DELETE', '{"Authorization": "Bearer token"}', '{"status": "success"}', 0, NOW(), NOW(), 0),
                                                                                                                                                                         (6, '获取商品列表', '获取所有商品信息', 'https://api.example.com/product/list', 'GET', '{}', '{"products": "array"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (7, '获取商品详情', '获取指定商品详情', 'https://api.example.com/product/detail', 'GET', '{}', '{"product": "object"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (8, '添加商品', '添加新商品', 'https://api.example.com/product/add', 'POST', '{"Content-Type": "application/json"}', '{"productId": "long"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (9, '更新商品信息', '更新指定商品', 'https://api.example.com/product/update', 'PUT', '{"Content-Type": "application/json"}', '{"status": "success"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (10, '删除商品', '删除指定商品', 'https://api.example.com/product/delete', 'DELETE', '{}', '{"status": "success"}', 0, NOW(), NOW(), 0),
                                                                                                                                                                         (11, '获取订单列表', '获取用户订单列表', 'https://api.example.com/order/list', 'GET', '{"Authorization": "Bearer token"}', '{"orders": "array"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (12, '获取订单详情', '获取指定订单详情', 'https://api.example.com/order/detail', 'GET', '{"Authorization": "Bearer token"}', '{"order": "object"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (13, '创建订单', '用户创建订单', 'https://api.example.com/order/create', 'POST', '{"Content-Type": "application/json"}', '{"orderId": "long"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (14, '取消订单', '取消指定订单', 'https://api.example.com/order/cancel', 'PUT', '{"Authorization": "Bearer token"}', '{"status": "success"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (15, '获取支付状态', '获取订单支付状态', 'https://api.example.com/payment/status', 'GET', '{}', '{"status": "paid"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (16, '提交支付', '提交订单支付', 'https://api.example.com/payment/submit', 'POST', '{"Content-Type": "application/json"}', '{"paymentId": "long"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (17, '退款申请', '用户申请退款', 'https://api.example.com/payment/refund', 'POST', '{"Authorization": "Bearer token"}', '{"refundId": "long"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (18, '查询退款状态', '查询订单退款状态', 'https://api.example.com/payment/refund/status', 'GET', '{"Authorization": "Bearer token"}', '{"status": "processing"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (19, '获取用户通知', '获取用户消息通知', 'https://api.example.com/notification/list', 'GET', '{"Authorization": "Bearer token"}', '{"notifications": "array"}', 1, NOW(), NOW(), 0),
                                                                                                                                                                         (20, '标记通知已读', '标记用户通知为已读', 'https://api.example.com/notification/read', 'PUT', '{"Authorization": "Bearer token"}', '{"status": "success"}', 1, NOW(), NOW(), 0);