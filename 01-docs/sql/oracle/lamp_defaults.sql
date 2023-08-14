/*
 Navicat Premium Data Transfer

 Source Server         : 172.26.3.67_lamp
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : 172.26.3.67:1521
 Source Schema         : LAMP_DEFAULTS

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 02/09/2022 10:17:30
*/


-- ----------------------------
-- Table structure for C_APPENDIX
-- ----------------------------
DROP TABLE "LAMP_DEFAULTS"."C_APPENDIX";
CREATE TABLE "LAMP_DEFAULTS"."C_APPENDIX"
(
    "ID"                 NUMBER(20) NOT NULL,
    "BIZ_ID"             NUMBER(20) DEFAULT 0 NOT NULL,
    "BIZ_TYPE"           VARCHAR2(255 BYTE) NOT NULL,
    "FILE_TYPE"          VARCHAR2(255 BYTE),
    "BUCKET"             VARCHAR2(255 BYTE),
    "PATH"               VARCHAR2(255 BYTE),
    "ORIGINAL_FILE_NAME" VARCHAR2(255 BYTE),
    "CONTENT_TYPE"       VARCHAR2(255 BYTE),
    "SIZE_"              NUMBER(20) DEFAULT 0,
    "CREATE_TIME"        DATE NOT NULL,
    "CREATED_BY"         NUMBER(20),
    "UPDATE_TIME"        DATE NOT NULL,
    "UPDATED_BY"         NUMBER(20)
) TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."ID" IS 'ID';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."BIZ_ID" IS '业务id';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."BIZ_TYPE" IS '业务类型';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."FILE_TYPE" IS '文件类型';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."BUCKET" IS '桶';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."PATH" IS '文件相对地址';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."ORIGINAL_FILE_NAME" IS '原始文件名';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."CONTENT_TYPE" IS '文件类型';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."SIZE_" IS '大小';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."CREATE_TIME" IS '创建时间';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."CREATED_BY" IS '创建人';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."UPDATE_TIME" IS '最后修改时间';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_APPENDIX"."UPDATED_BY" IS '最后修改人';
COMMENT
ON TABLE "LAMP_DEFAULTS"."C_APPENDIX" IS '业务附件';

-- ----------------------------
-- Table structure for C_DATASOURCE_CONFIG
-- ----------------------------
DROP TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG";
CREATE TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"
(
    "ID"                NUMBER(20) NOT NULL,
    "NAME"              VARCHAR2(255 BYTE) NOT NULL,
    "USERNAME"          VARCHAR2(255 BYTE) NOT NULL,
    "PASSWORD"          VARCHAR2(255 BYTE) NOT NULL,
    "URL"               VARCHAR2(255 BYTE) NOT NULL,
    "DRIVER_CLASS_NAME" VARCHAR2(255 BYTE) NOT NULL,
    "CREATE_TIME"       DATE,
    "CREATED_BY"        NUMBER(20),
    "UPDATE_TIME"       DATE,
    "UPDATED_BY"        NUMBER(20)
) TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."ID" IS '主键ID';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."NAME" IS '名称';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."USERNAME" IS '账号';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."PASSWORD" IS '密码';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."URL" IS '链接';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."DRIVER_CLASS_NAME" IS '驱动';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."CREATE_TIME" IS '创建时间';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."CREATED_BY" IS '创建人';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."UPDATE_TIME" IS '修改时间';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"."UPDATED_BY" IS '修改人';
COMMENT
ON TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG" IS '数据源';

-- ----------------------------
-- Table structure for C_TENANT
-- ----------------------------
DROP TABLE "LAMP_DEFAULTS"."C_TENANT";
CREATE TABLE "LAMP_DEFAULTS"."C_TENANT"
(
    "ID"              NUMBER(20) NOT NULL,
    "CODE"            VARCHAR2(255 BYTE) NOT NULL,
    "NAME"            VARCHAR2(255 BYTE),
    "TYPE"            VARCHAR2(10 BYTE),
    "CONNECT_TYPE"    VARCHAR2(10 BYTE),
    "STATUS"          VARCHAR2(10 BYTE),
    "READONLY_"       NUMBER(1) DEFAULT 0,
    "DUTY"            VARCHAR2(50 BYTE),
    "EXPIRATION_TIME" DATE,
    "LOGO"            VARCHAR2(255 BYTE),
    "DESCRIBE_"       VARCHAR2(255 BYTE),
    "CREATE_TIME"     DATE,
    "CREATED_BY"      NUMBER(20),
    "UPDATE_TIME"     DATE,
    "UPDATED_BY"      NUMBER(20)
) TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536
  NEXT 1048576
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."ID" IS '主键ID';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."CODE" IS '企业编码';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."NAME" IS '企业名称';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."TYPE" IS '类型;
#{CREATE:创建;REGISTER:注册}';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."CONNECT_TYPE" IS '链接类型;
#TenantConnectTypeEnum{SYSTEM:系统;CUSTOM:自定义}';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."STATUS" IS '状态;
#{NORMAL:正常;WAIT_INIT:待初始化;FORBIDDEN:禁用;WAITING:待审核;REFUSE:拒绝;DELETE:已删除}';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."READONLY_" IS '内置';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."DUTY" IS '责任人';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."EXPIRATION_TIME" IS '有效期;
为空表示永久';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."LOGO" IS 'logo地址';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."DESCRIBE_" IS '企业简介';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."CREATE_TIME" IS '创建时间';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."CREATED_BY" IS '创建人';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."UPDATE_TIME" IS '修改时间';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT"."UPDATED_BY" IS '修改人';
COMMENT
ON TABLE "LAMP_DEFAULTS"."C_TENANT" IS '企业';

-- ----------------------------
-- Records of C_TENANT
-- ----------------------------
INSERT INTO "LAMP_DEFAULTS"."C_TENANT"
VALUES ('1', '0000', '最后内置的运营&超级租户', 'CREATE', 'SYSTEM', 'NORMAL', '1', '最后', NULL, NULL,
        '内置租户,用于测试租户系统所有功能, 用于管理整个系统.请勿删除',
        TO_DATE('2022-08-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1',
        TO_DATE('2022-08-30 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '1');
COMMIT;

-- ----------------------------
-- Table structure for C_TENANT_DATASOURCE_CONFIG
-- ----------------------------
DROP TABLE "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG";
CREATE TABLE "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"
(
    "ID"                   NUMBER(20) NOT NULL,
    "TENANT_ID"            NUMBER(20) NOT NULL,
    "DATASOURCE_CONFIG_ID" NUMBER(20) NOT NULL,
    "DB_PREFIX"            VARCHAR2(100 BYTE) NOT NULL,
    "CREATE_TIME"          DATE,
    "CREATED_BY"           NUMBER(20)
) TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"."ID" IS 'ID';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"."TENANT_ID" IS '租户id';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"."DATASOURCE_CONFIG_ID" IS '数据源id';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"."DB_PREFIX" IS '数据库前缀';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"."CREATE_TIME" IS '创建时间';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"."CREATED_BY" IS '创建人';
COMMENT
ON TABLE "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG" IS '租户数据源关系';

-- ----------------------------
-- Table structure for UNDO_LOG
-- ----------------------------
DROP TABLE "LAMP_DEFAULTS"."UNDO_LOG";
CREATE TABLE "LAMP_DEFAULTS"."UNDO_LOG"
(
    "ID"            NUMBER(20) NOT NULL,
    "BRANCH_ID"     NUMBER(20) NOT NULL,
    "XID"           VARCHAR2(100 BYTE) NOT NULL,
    "CONTEXT"       VARCHAR2(128 BYTE) NOT NULL,
    "ROLLBACK_INFO" CLOB NOT NULL,
    "LOG_STATUS"    NUMBER(10) NOT NULL,
    "LOG_CREATED"   DATE,
    "LOG_MODIFIED"  DATE
) TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT
ON COLUMN "LAMP_DEFAULTS"."UNDO_LOG"."ID" IS 'increment;id';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."UNDO_LOG"."BRANCH_ID" IS 'branch;transaction id';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."UNDO_LOG"."XID" IS 'global;transaction id';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."UNDO_LOG"."CONTEXT" IS 'undo_log;context,such as serialization';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."UNDO_LOG"."ROLLBACK_INFO" IS 'rollback;info';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."UNDO_LOG"."LOG_STATUS" IS '0:normal;status,1:defense status';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."UNDO_LOG"."LOG_CREATED" IS 'create;datetime';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."UNDO_LOG"."LOG_MODIFIED" IS 'modify;datetime';
COMMENT
ON TABLE "LAMP_DEFAULTS"."UNDO_LOG" IS 'AT;transaction mode undo table';

-- ----------------------------
-- Table structure for WORKER_NODE
-- ----------------------------
DROP TABLE "LAMP_DEFAULTS"."WORKER_NODE";
CREATE TABLE "LAMP_DEFAULTS"."WORKER_NODE"
(
    "ID"          NUMBER(20) NOT NULL,
    "HOST_NAME"   VARCHAR2(64 BYTE) NOT NULL,
    "PORT"        VARCHAR2(64 BYTE) NOT NULL,
    "TYPE"        NUMBER(10) NOT NULL,
    "LAUNCH_DATE" DATE NOT NULL,
    "MODIFIED"    DATE,
    "CREATED"     DATE
) TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT
ON COLUMN "LAMP_DEFAULTS"."WORKER_NODE"."ID" IS 'auto;increment id';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."WORKER_NODE"."HOST_NAME" IS '主机名';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."WORKER_NODE"."PORT" IS '端口';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."WORKER_NODE"."TYPE" IS '节点类型:;ACTUAL 或者 CONTAINER';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."WORKER_NODE"."LAUNCH_DATE" IS '上线日期';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."WORKER_NODE"."MODIFIED" IS '修改时间';
COMMENT
ON COLUMN "LAMP_DEFAULTS"."WORKER_NODE"."CREATED" IS '创建时间';
COMMENT
ON TABLE "LAMP_DEFAULTS"."WORKER_NODE" IS 'DB;WorkerID Assigner for UID Generator';

-- ----------------------------
-- Primary Key structure for table C_APPENDIX
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."C_APPENDIX"
    ADD CONSTRAINT "SYS_C0014423" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table C_APPENDIX
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."C_APPENDIX"
    ADD CONSTRAINT "SYS_C0014418" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_APPENDIX"
    ADD CONSTRAINT "SYS_C0014419" CHECK ("BIZ_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_APPENDIX"
    ADD CONSTRAINT "SYS_C0014420" CHECK ("BIZ_TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_APPENDIX"
    ADD CONSTRAINT "SYS_C0014421" CHECK ("CREATE_TIME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_APPENDIX"
    ADD CONSTRAINT "SYS_C0014422" CHECK ("UPDATE_TIME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table C_DATASOURCE_CONFIG
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014430" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table C_DATASOURCE_CONFIG
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014424" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014425" CHECK ("NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014426" CHECK ("USERNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014427" CHECK ("PASSWORD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014428" CHECK ("URL" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014429" CHECK ("DRIVER_CLASS_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table C_TENANT
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."C_TENANT"
    ADD CONSTRAINT "SYS_C0014433" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table C_TENANT
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."C_TENANT"
    ADD CONSTRAINT "SYS_C0014431" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_TENANT"
    ADD CONSTRAINT "SYS_C0014432" CHECK ("CODE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table C_TENANT
-- ----------------------------
CREATE UNIQUE INDEX "LAMP_DEFAULTS"."UK_CODE"
    ON "LAMP_DEFAULTS"."C_TENANT" ("CODE" ASC) LOGGING
  TABLESPACE "USERS"
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  INITIAL 65536
  NEXT 1048576
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table C_TENANT_DATASOURCE_CONFIG
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014438" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table C_TENANT_DATASOURCE_CONFIG
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014434" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014435" CHECK ("TENANT_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014436" CHECK ("DATASOURCE_CONFIG_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG"
    ADD CONSTRAINT "SYS_C0014437" CHECK ("DB_PREFIX" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table C_TENANT_DATASOURCE_CONFIG
-- ----------------------------
CREATE UNIQUE INDEX "LAMP_DEFAULTS"."UK_TENAN_APPLICATION"
    ON "LAMP_DEFAULTS"."C_TENANT_DATASOURCE_CONFIG" ("TENANT_ID" ASC, "DB_PREFIX" ASC, "DATASOURCE_CONFIG_ID" ASC) LOGGING
  TABLESPACE "USERS"
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table UNDO_LOG
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."UNDO_LOG"
    ADD CONSTRAINT "SYS_C0014451" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table UNDO_LOG
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."UNDO_LOG"
    ADD CONSTRAINT "SYS_C0014445" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."UNDO_LOG"
    ADD CONSTRAINT "SYS_C0014446" CHECK ("BRANCH_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."UNDO_LOG"
    ADD CONSTRAINT "SYS_C0014447" CHECK ("XID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."UNDO_LOG"
    ADD CONSTRAINT "SYS_C0014448" CHECK ("CONTEXT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."UNDO_LOG"
    ADD CONSTRAINT "SYS_C0014449" CHECK ("ROLLBACK_INFO" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."UNDO_LOG"
    ADD CONSTRAINT "SYS_C0014450" CHECK ("LOG_STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Indexes structure for table UNDO_LOG
-- ----------------------------
CREATE UNIQUE INDEX "LAMP_DEFAULTS"."UX_UNDO_LOG"
    ON "LAMP_DEFAULTS"."UNDO_LOG" ("BRANCH_ID" ASC, "XID" ASC) LOCAL
  LOGGING
  TABLESPACE "USERS"
  VISIBLE
PCTFREE 10
INITRANS 2
STORAGE (
  BUFFER_POOL DEFAULT
);

-- ----------------------------
-- Primary Key structure for table WORKER_NODE
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."WORKER_NODE"
    ADD CONSTRAINT "SYS_C0014444" PRIMARY KEY ("ID");

-- ----------------------------
-- Checks structure for table WORKER_NODE
-- ----------------------------
ALTER TABLE "LAMP_DEFAULTS"."WORKER_NODE"
    ADD CONSTRAINT "SYS_C0014439" CHECK ("ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."WORKER_NODE"
    ADD CONSTRAINT "SYS_C0014440" CHECK ("HOST_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."WORKER_NODE"
    ADD CONSTRAINT "SYS_C0014441" CHECK ("PORT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."WORKER_NODE"
    ADD CONSTRAINT "SYS_C0014442" CHECK ("TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "LAMP_DEFAULTS"."WORKER_NODE"
    ADD CONSTRAINT "SYS_C0014443" CHECK ("LAUNCH_DATE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
