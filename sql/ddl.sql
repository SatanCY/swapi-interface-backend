-- 创建库
create database if not exists op_api;

-- 切换库
use op_api;

-- 用户表
create table if not exists user
(
    id           bigint auto_increment comment 'id' primary key,
    userName     varchar(256)                           null comment '用户昵称',
    userAccount  varchar(256)                           not null comment '账号',
    userAvatar   varchar(1024)                          null comment '用户头像',
    gender       tinyint                                null comment '性别',
    userRole     varchar(256) default 'user'            not null comment '用户角色：user / admin',
    userPassword varchar(512)                           not null comment '密码',
    createTime   datetime     default CURRENT_TIMESTAMP not null comment '创建时间',
    updateTime   datetime     default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    isDelete     tinyint      default 0                 not null comment '是否删除',
    constraint uni_userAccount
        unique (userAccount)
) comment '用户';

-- 接口信息
create table if not exists op_api.`interface_info`
(
    `id`             bigint                             not null auto_increment comment '主键' primary key,
    `name`           varchar(256)                       not null comment '名称',
    `description`    varchar(256)                       null comment '描述',
    `url`            varchar(512)                       not null comment '接口地址',
    `requestHeader`  text                               null comment '请求头',
    `responseHeader` text                               null comment '响应头',
    `status`         int      default 0                 not null comment '接口状态（0-关闭，1-开启）',
    `method`         varchar(256)                       not null comment '请求类型',
    `userId`         bigint                             not null comment '创建人',
    `createTime`     datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime`     datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete`       tinyint  default 0                 not null comment '是否删除(0-未删, 1-已删)'
) comment '接口信息';

INSERT INTO op_api.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`,
                                     `method`, `userId`, `createTime`, `updateTime`, `isDelete`)
VALUES ('API 1', 'Description of API 1', 'http://example.com/api/1', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 1, 'GET', 1, '2023-01-01 00:00:00', '2023-01-01 00:00:00', 0),
       ('API 2', 'Description of API 2', 'http://example.com/api/2', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 1, 'POST', 1, '2023-01-01 00:00:00', '2023-01-01 00:00:00', 0),
       ('API 3', 'Description of API 3', 'http://example.com/api/3', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 0, 'GET', 2, '2023-01-02 00:00:00', '2023-01-02 00:00:00', 0),
       ('API 4', 'Description of API 4', 'http://example.com/api/4', '{"Content-Type": "application/xml"}',
        '{"Content-Type": "application/xml"}', 1, 'POST', 2, '2023-01-02 00:00:00', '2023-01-02 00:00:00', 0),
       ('API 5', 'Description of API 5', 'http://example.com/api/5', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 1, 'PUT', 3, '2023-01-03 00:00:00', '2023-01-03 00:00:00', 0),
       ('API 6', 'Description of API 6', 'http://example.com/api/6', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 0, 'DELETE', 3, '2023-01-03 00:00:00', '2023-01-03 00:00:00', 0),
       ('API 7', 'Description of API 7', 'http://example.com/api/7', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 1, 'GET', 1, '2023-01-04 00:00:00', '2023-01-04 00:00:00', 0),
       ('API 8', 'Description of API 8', 'http://example.com/api/8', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 1, 'POST', 2, '2023-01-04 00:00:00', '2023-01-04 00:00:00', 0),
       ('API 9', 'Description of API 9', 'http://example.com/api/9', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 0, 'PUT', 3, '2023-01-05 00:00:00', '2023-01-05 00:00:00', 0),
       ('API 10', 'Description of API 10', 'http://example.com/api/9', '{"Content-Type": "application/json"}',
        '{"Content-Type": "application/json"}', 0, 'PUT', 3, '2023-01-05 00:00:00', '2023-01-05 00:00:00', 0);
