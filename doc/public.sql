/*
 Navicat Premium Data Transfer

 Source Server         : 10.33.42.204_5432
 Source Server Type    : PostgreSQL
 Source Server Version : 90013
 Source Host           : 10.33.42.204:5432
 Source Catalog        : ctdata1
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90013
 File Encoding         : 65001

 Date: 04/04/2019 11:10:33
*/


-- ----------------------------
-- Table structure for case_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."case_info";
CREATE TABLE "public"."case_info" (
  "case_id" char(32) NOT NULL,
  "case_index_code" varchar(32) NOT NULL,
  "case_no_all" varchar(128) NOT NULL,
  "case_no_year" varchar(32),
  "case_no_courthouse_id" varchar(32),
  "case_no_type_id" varchar(32),
  "case_no_num" int4,
  "default_type" bool DEFAULT true,
  "case_name" varchar(256),
  "case_reason_id" varchar(32),
  "status" varchar(32),
  "undertaker_dept_id" varchar(32),
  "undertaker_person_id" varchar(32),
  "syn_type" varchar(10) NOT NULL,
  "register_time" date,
  "create_time" timestamp(6) NOT NULL,
  "update_time" timestamp(6) NOT NULL,
  "creator_username" varchar(64),
  "case_resume" varchar(1024),
  "case_type_id" varchar(32),
  "del_flag" bool DEFAULT false,
  "trial_program_num_id" varchar(32),
  "trial_program_type_id" varchar(32),
  "court_no" varchar(64),
  "court_fj_code" varchar(64),
  "case_type_name" varchar(32),
  "undertaker_dept_name" varchar(64),
  "undertaker_person_name" varchar(64),
  "case_reason_name" varchar(128),
  "status_name" varchar(32),
  "trial_program_name" varchar(128),
  "case_no_type_name" varchar(32),
  "trial_program_num" int4
)
;
COMMENT ON COLUMN "public"."case_info"."case_id" IS '主键，案件id';
COMMENT ON COLUMN "public"."case_info"."case_index_code" IS '案件编码';
COMMENT ON COLUMN "public"."case_info"."case_no_all" IS '案号全称';
COMMENT ON COLUMN "public"."case_info"."case_no_year" IS '案件年号';
COMMENT ON COLUMN "public"."case_info"."case_no_courthouse_id" IS '法院代字id';
COMMENT ON COLUMN "public"."case_info"."case_no_type_id" IS '案件代字id';
COMMENT ON COLUMN "public"."case_info"."case_no_num" IS '第几号案件';
COMMENT ON COLUMN "public"."case_info"."default_type" IS '是否默认案号：true是；false否';
COMMENT ON COLUMN "public"."case_info"."case_name" IS '案件名称';
COMMENT ON COLUMN "public"."case_info"."case_reason_id" IS '案由id';
COMMENT ON COLUMN "public"."case_info"."status" IS '案件状态：unPlan：未排期；unTrial：待开庭；trialing：庭审中；trialed：已闭庭';
COMMENT ON COLUMN "public"."case_info"."undertaker_dept_id" IS '承办部门id';
COMMENT ON COLUMN "public"."case_info"."undertaker_person_id" IS '承办人id';
COMMENT ON COLUMN "public"."case_info"."syn_type" IS '同步类型：syned从第三方同步的，created本系统创建的';
COMMENT ON COLUMN "public"."case_info"."register_time" IS '立案时间';
COMMENT ON COLUMN "public"."case_info"."creator_username" IS '案件创建人账号';
COMMENT ON COLUMN "public"."case_info"."case_resume" IS '案件简述';
COMMENT ON COLUMN "public"."case_info"."case_type_id" IS '案件类别id';
COMMENT ON COLUMN "public"."case_info"."del_flag" IS '删除标识位：true已删除，false未删除';
COMMENT ON COLUMN "public"."case_info"."trial_program_num_id" IS '案件类型次数：一审、二审、再审。用于确认诉讼地位';
COMMENT ON COLUMN "public"."case_info"."trial_program_type_id" IS '案件类型：要有刑事、民事、行政等。用于确认诉讼地位';
COMMENT ON COLUMN "public"."case_info"."court_no" IS '经办法院代码';
COMMENT ON COLUMN "public"."case_info"."court_fj_code" IS '法院分级码';
COMMENT ON COLUMN "public"."case_info"."case_type_name" IS '案件类别名称';
COMMENT ON COLUMN "public"."case_info"."undertaker_dept_name" IS '承办部门名称';
COMMENT ON COLUMN "public"."case_info"."undertaker_person_name" IS '承办人姓名';
COMMENT ON COLUMN "public"."case_info"."case_reason_name" IS '案由名称';
COMMENT ON COLUMN "public"."case_info"."status_name" IS '案件状态描述';
COMMENT ON COLUMN "public"."case_info"."trial_program_name" IS '案件类型名称(如民事一审)';
COMMENT ON COLUMN "public"."case_info"."case_no_type_name" IS '案件代字名称（同步案件显示用）';
COMMENT ON COLUMN "public"."case_info"."trial_program_num" IS '案件类型的第几申：一审1、二审2、再审3';

-- ----------------------------
-- Records of case_info
-- ----------------------------
INSERT INTO "public"."case_info" VALUES ('8a90d25e690e226e01690e2378dd0000', 'ecd2534233c1442794e67d8d31b5b5c6', '1234567118901', '2018', NULL, NULL, NULL, 't', 'this is case name1', NULL, 'unPlan', NULL, NULL, 'created', NULL, '2019-02-21 11:39:59.533', '2019-02-21 11:39:59.533', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe496310006', '338220190301000020', '(2019)云0381民初20号', NULL, NULL, NULL, NULL, 'f', '打架斗殴案', NULL, 'unPlan', '53222423', 'zhoupei', 'syned', '2019-03-12', '2019-03-18 16:21:53.613', '2019-03-18 16:29:19.017', NULL, NULL, NULL, 'f', NULL, NULL, '3382', 'P44', '民事', '第一审判庭', '周培', '打架斗殴', '审理', '民事二审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6909ec70016909ed25500000', '195e2979b7934ef7a780d9464df198a2', '(2018)杭民辖20号', NULL, NULL, NULL, NULL, NULL, '案件名称1', NULL, 'unTrial', NULL, NULL, 'created', NULL, '2019-02-20 16:02:10.348', '2019-02-20 16:02:10.348', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6909ec70016909edde940001', 'a323350dea95458c8b9ebadb6491ad32', '(2018)杭民辖20号', NULL, NULL, NULL, NULL, NULL, '案件名称2', NULL, 'unTrial', NULL, NULL, 'created', NULL, '2019-02-20 16:02:57.811', '2019-02-20 16:02:57.811', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6909ec7001690a09140c0003', 'd0f6f128a4e24871a7bb0664592843fb', '(2018)杭民辖20号', NULL, NULL, NULL, NULL, NULL, '案件名称4', NULL, 'unTrial', NULL, NULL, 'created', NULL, '2019-02-20 16:32:40.972', '2019-02-20 16:32:40.972', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6909ec7001690a15e1ed0007', 'd2138c9409034c27b8c648c256ec65cd', '(2018)杭民辖20号', NULL, NULL, NULL, NULL, NULL, '案件名称8', NULL, 'unTrial', NULL, NULL, 'created', NULL, '2019-02-20 16:46:40.108', '2019-02-20 16:46:40.108', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6909ec7001690a0cc42a0005', '677f715d0f6d45138594b1abfcfe536b', '(2018)杭民辖20号old', NULL, NULL, NULL, NULL, NULL, '案件名称6', NULL, 'unTrial', NULL, NULL, 'created', NULL, '2019-02-20 16:36:42.665', '2019-02-20 16:36:42.665', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6905c151016905c1822b0000', 'b7c17bb690514a698ad7df59013bb136', '1234567118901', '2018', NULL, NULL, NULL, 't', 'this is case name2', NULL, 'unTrial', NULL, NULL, 'created', '2019-02-26', '2019-02-21 16:52:13.685', '2019-02-21 16:52:13.685', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe13de30001', '66dee685804342c0b7b5d030db345752', '(2019)云0381民初72号', NULL, NULL, NULL, NULL, 'f', '浦仕伟与羊场煤矿、羊场煤矿合同纠纷', NULL, 'unPlan', '53222423', 'wangliqi', 'syned', '2019-01-03', '2019-03-18 16:18:17.186', '2019-03-18 16:18:17.186', NULL, NULL, NULL, 'f', NULL, NULL, '3382', 'P44', '民事', '羊场法庭', '王黎奇', '合同纠纷', '审理', '民事一审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe144730002', '7f06880368a441c0ac440ef9eecb97ea', '(2019)云0381民初12号', NULL, NULL, NULL, NULL, 'f', '杨朗努与谭陆云离婚纠纷', NULL, 'unPlan', '53222423', 'lixingxue', 'syned', '2019-01-02', '2019-03-18 16:18:18.866', '2019-03-18 16:18:18.866', NULL, NULL, NULL, 'f', NULL, NULL, '3382', 'P44', '民事', '羊场法庭', '李兴学', '离婚纠纷', '审理', '民事一审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe281460003', 'bb551ad5f8184eff86d1aa76cc569e07', '(2019)云0381民初20号', NULL, NULL, NULL, NULL, 'f', '打架斗殴案', NULL, 'unPlan', '53222423', 'zhoupei', 'syned', '2019-03-12', '2019-03-18 16:19:39.974', '2019-03-18 16:19:39.974', NULL, NULL, NULL, 'f', NULL, NULL, '3382', 'P44', '民事', '第一审判庭', '周培', '打架斗殴', '审理', '民事二审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe282f80004', '920ae307e83b46879f4b1594da275379', '(2019)云0381民初72号', NULL, NULL, NULL, NULL, 'f', '浦仕伟与羊场煤矿、羊场煤矿合同纠纷', NULL, 'unPlan', '53222423', 'wangliqi', 'syned', '2019-01-03', '2019-03-18 16:19:40.408', '2019-03-18 16:19:40.408', NULL, NULL, NULL, 'f', NULL, NULL, '3382', 'P44', '民事', '羊场法庭', '王黎奇', '合同纠纷', '审理', '民事一审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe283960005', 'd238c14afe1743289be4ef41bdd4c191', '(2019)云0381民初12号', NULL, NULL, NULL, NULL, 'f', '杨朗努与谭陆云离婚纠纷', NULL, 'unPlan', '53222423', 'lixingxue', 'syned', '2019-01-02', '2019-03-18 16:19:40.566', '2019-03-18 16:19:40.566', NULL, NULL, NULL, 'f', NULL, NULL, '3382', 'P44', '民事', '羊场法庭', '李兴学', '离婚纠纷', '审理', '民事一审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6974ecc2016974f119f70003', '72d54051cc434c1fb972ed1e867a17f6', '(2018)杭邢辖32号', '2018', '1', '1', 29, 't', '案件名称', '1', 'trialed', '2', 'user', 'created', '2019-03-12', '2019-03-13 10:45:51.734', '2019-03-13 10:45:51.734', 'admin', '案件简述，巴拉巴拉', '119', 'f', '4', NULL, '1', '100', NULL, '北京市第一中级人民法院', '234', NULL, '未排期', '', NULL, 2);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6974ecc2016974ed7c250000', 'dad5dfed17784de4b55b8db18194a7d5', '(2018)杭邢辖31号', '2018', '1', '1', 29, 't', '案件名称', '1', 'trialed', '2', 'user', 'created', '2019-03-12', '2019-03-13 10:41:54.636', '2019-03-13 15:31:36.49', 'admin', '案件简述，巴拉巴拉', '119', 'f', '4', NULL, '1', '100', NULL, '北京市第一中级人民法院', '234', NULL, '未排期', '', NULL, 2);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6909ec7001690a092e9e0004', '80e0d0a12b8248c695428bdc468d0d6f', '(2028)杭民辖20号', '2028', NULL, NULL, NULL, NULL, '案件名称5', '19', 'trialing', 'wqewqeqwe', 'user', 'created', '2019-03-05', '2019-02-20 16:32:47.774', '2019-02-27 14:21:43.34', NULL, '案件简介啦啦啦', '9', 'f', '4', '1', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e690ec68101690ec802070000', '35192906fd9c4fdf8a9716bd0f943476', '1234567118901', NULL, NULL, '', NULL, 't', 'this is case name7', NULL, 'trialing', NULL, NULL, 'created', NULL, '2019-02-28 11:12:27.886', '2019-02-28 11:12:27.886', 'admin', NULL, NULL, 'f', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe5713e0008', '338220190301000014', '(2019)云0381民初12号', NULL, NULL, NULL, NULL, 'f', '杨朗努与谭陆云离婚纠纷', NULL, 'unPlan', '53222423', 'lixingxue', 'syned', '2019-01-02', '2019-03-18 16:22:51.812', '2019-03-22 09:59:17.916', NULL, NULL, NULL, 'f', NULL, NULL, '3382', 'P44', '民事', '羊场法庭', '李兴学', '离婚纠纷', '审理', '民事一审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe56a1a0007', '338220190301000094', '(2019)云0381民初72号', NULL, NULL, NULL, NULL, 'f', '浦仕伟与羊场煤矿、羊场煤矿合同纠纷', NULL, 'unPlan', '53222423', 'wangliqi', 'syned', '2019-01-03', '2019-03-18 16:22:49.505', '2019-03-22 09:59:17.921', NULL, NULL, NULL, 'f', NULL, NULL, '3382', 'P44', '民事', '羊场法庭', '王黎奇', '合同纠纷', '审理', '民事一审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6909ec7001690a085ec70002', '7a059b28b2f145f19b116134f236b0b0', '1234567118901', NULL, NULL, NULL, NULL, 't', 'this is case name7', '19', 'trialing', NULL, NULL, 'created', NULL, '2019-02-28 18:56:52.652', '2019-02-28 18:56:52.652', NULL, NULL, NULL, 'f', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6909ec7001690a12257b0006', 'ca3c5db48aca4faa8dd7015f261a2983', '(2018)杭民辖20号new', NULL, NULL, NULL, NULL, NULL, '案件名称6', NULL, 'trialing', NULL, NULL, 'created', '2019-02-25', '2019-02-20 16:42:35.257', '2019-02-20 16:42:35.257', NULL, NULL, NULL, 'f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e69b9a7560169b9a898900000', '01f3db3218a34a26837d08b0fc49e7f2', '(2018)京01刑终120号', '2018', NULL, '10', 120, 't', '', '2', 'unPlan', '2', 'user', 'created', '2019-03-26', '2019-03-26 19:00:27.908', '2019-03-26 19:05:32.382', 'user', '测试的项目', '137', 't', '7', '2', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "public"."case_info" VALUES ('8a90d25e69b91fe20169b98e33250002', '5329fc8c65d840d2ad44829fb9be0c75', '(2019)京01刑辖10号', '2019', NULL, '1', 10, 't', '', '1', 'unPlan', '2', 'user', 'created', '2019-03-26', '2019-03-26 18:31:38.021', '2019-03-26 19:05:51.752', 'user', '测试项目', '118', 't', '4', '1', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "public"."case_info" VALUES ('8a90d25e69b91fe20169b94c088e0000', '3f3d445bc6c84a1b952d60107a6c41d0', '(2017)京01请外引120号', '2017', NULL, '100', 120, 't', '', '2', 'unPlan', '2', 'ceshi', 'created', '2019-03-26', '2019-03-26 17:19:21.446', '2019-03-26 19:05:59.002', 'user', '测试的咯', '286', 't', '4', '1', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "public"."case_info" VALUES ('8a90d25e698fe0cc01698fe130040000', 'f93441ddb2bb413c9c2384371200a5ce', '(2019)云0381民初20号', NULL, NULL, NULL, NULL, 'f', '打架斗殴案', NULL, 'unPlan', '53222423', 'zhoupei', 'syned', '2019-03-12', '2019-03-18 16:18:13.513', '2019-03-26 19:01:34.558', NULL, NULL, NULL, 't', NULL, NULL, '3382', 'P44', '民事', '第一审判庭', '周培', '打架斗殴', '审理', '民事二审案件', '民初', NULL);
INSERT INTO "public"."case_info" VALUES ('8a90d25e6970877e0169708a1a470000', '67cf984bf2dc4b379c2b6cd74fe31ee6', '(2018)杭邢辖29号', '2018', '1', '1', 29, 't', '案件名称', '1', 'unPlan', '2', 'user', 'created', '2019-03-12', '2019-03-12 14:14:52.711', '2019-03-26 19:01:34.558', NULL, '案件简述，巴拉巴拉', '119', 't', '4', NULL, '1', '100', NULL, '北京市第一中级人民法院', '234', NULL, '未排期', '', NULL, 2);
INSERT INTO "public"."case_info" VALUES ('8a90d25e69b9a7560169b9aff82d0002', '7f79ee3f5f104059975ee179fc3db3c9', '(2018)京01请外引2018号', '2018', NULL, '100', 2018, 't', '', '1', 'unPlan', '2', 'user', 'created', '2019-03-26', '2019-03-26 19:08:31.148', '2019-03-26 19:13:39.567', 'user', '测试', '286', 't', '4', '1', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "public"."case_info" VALUES ('8a90d25e69b38e060169b8c39f390000', 'debb4dc528a9438d99e62071f5a40df1', '(2018)京01请外引101号', '2018', NULL, '100', 101, 't', '', '3', 'unPlan', '2', 'user', 'created', '2019-03-29', '2019-03-26 14:50:11.675', '2019-04-01 19:35:04.88', 'user', '测试案件', '286', 't', '4', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "public"."case_info" VALUES ('8a90d29c69d821b90169d8306ad80001', '5c9c0486c37c483d850533f842edb7ce', '(2019)京01刑终20号', '2019', NULL, '10', 20, 't', '', '1', 'unPlan', '2', 'ceshi', 'created', '2019-04-16', '2019-04-01 17:17:25.592', '2019-04-01 17:17:25.592', 'user', '测试的，啊', '137', 'f', '4', '1', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "public"."case_info" VALUES ('8a90d25e69b9a7560169b9c2c4380004', '4089c8ad8de94ef4b2c3855f86ff06f7', '(2017)京01司惩复10号', '2017', NULL, '103', 10, 't', '', '2', 'unPlan', '2', 'user', 'created', '2019-03-26', '2019-03-26 19:29:03.032', '2019-04-02 16:42:28.799', 'user', '测试复用', '292', 'f', '7', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "public"."case_info" VALUES ('8a90d29c69d821b90169d83456ca0004', '51c1c089d7fb41df9f03b41db122e758', '(2019)京01刑辖10号', '2019', NULL, '1', 10, 't', '', '2', 'unTrial', '2', 'user', 'created', '2019-04-02', '2019-04-01 17:21:42.602', '2019-04-03 13:40:51.855', 'user', '测试的', '118', 'f', '4', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "public"."case_info" VALUES ('8a90d29c69d821b90169d835d9b30007', '20fe6163b7a1454aa1f52b782dd670f8', '(2019)京01刑辖30号', '2019', NULL, '1', 30, 't', '', '3', 'unPlan', '2', 'user', 'created', '2019-04-30', '2019-04-01 17:23:21.651', '2019-04-01 17:23:21.651', 'user', '测试', '118', 'f', '4', '1', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "public"."case_info" VALUES ('8a90d29c69d8dc950169d8e21c0e000c', '0ee7bf7ae69f40b8888b6cb32a7da70d', '(2018)京01刑终302号', '2018', NULL, '10', 302, 't', '', '2', 'unPlan', '2', 'user', 'created', '2019-04-16', '2019-04-01 20:31:30.829', '2019-04-01 20:31:30.829', 'user', 'ces', '137', 'f', '4', '1', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "public"."case_info" VALUES ('8a90d25e69b8fccb0169b91283f40000', '93a76b8cb50d4cbab419d01419cac694', '(2019)京01刑辖20号', '2019', NULL, '1', 20, 't', '', '1', 'unTrial', '2', 'user', 'created', '2019-03-26', '2019-03-26 16:16:32.23', '2019-04-02 15:30:59.066', 'user', 'ceshide', '118', 'f', '4', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "public"."case_info" VALUES ('8a90d29c69d8dc950169d8dd3ab50008', '4ef5737facf84ca4aa278b7fe9509ef8', '(2019)京01刑终203号', '2019', NULL, '10', 203, 't', '', '15', 'unPlan', '2', 'user', 'created', '2019-04-01', '2019-04-01 20:26:10.997', '2019-04-03 13:13:49.199', 'user', 'eeee', '137', 'f', '8', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "public"."case_info" VALUES ('8a90d25e69b8c6ec0169b8dc1ed00000', 'e44d3c5a73df4bc49c15fb73c4386c77', '(2016)京01司惩120号', '2016', NULL, '102', 120, 't', '', '1', 'unTrial', '2', 'user', 'created', '2019-03-29', '2019-03-26 15:17:07.396', '2019-04-03 13:13:54.458', 'user', '测试用它胡', '290', 'f', '4', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "public"."case_info" VALUES ('8a90d29c69d8dc950169d8dd3a7f0000', '3ca0595676ad4b608ba1715778ebcdd8', '(2019)京01刑终204号', '2019', NULL, '10', 204, 't', '', '15', 'unPlan', '2', 'user', 'created', '2019-04-01', '2019-04-01 20:26:10.934', '2019-04-03 13:14:32.706', 'user', 'eeee', '137', 'f', '8', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "public"."case_info" VALUES ('8a90d29c69d8dc950169d8dd3aae0004', '37d2603ebe6d4ef5a6c6f0f92b34b950', '(2019)京01刑终205号', '2019', NULL, '10', 205, 't', '', '15', 'unPlan', '2', 'user', 'created', '2019-04-01', '2019-04-01 20:26:10.989', '2019-04-03 13:14:43.913', 'user', 'eeee', '137', 'f', '8', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "public"."case_info" VALUES ('8a90d29c69d821b90169d8d83955001c', '5e79bf7f810245a79b23a116ecb42736', '(2019)京01刑辖201号', '', NULL, '', 201, 'f', '(2019)京01刑辖201号', '8a90d2f9696ae78601696ae83f1e0000', 'unTrial', '2', 'user', 'created', '2019-04-02', '2019-04-01 20:20:42.965', '2019-04-03 13:52:03.439', 'user', 'ceshi de ', '118', 'f', '7', '', '2', '101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for case_schedule_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."case_schedule_relation";
CREATE TABLE "public"."case_schedule_relation" (
  "relation_id" varchar(32) NOT NULL,
  "case_index_code" varchar(32),
  "court_schedule_id" varchar(32),
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "trial_times" int4 DEFAULT 1,
  "order_num" int4
)
;
COMMENT ON COLUMN "public"."case_schedule_relation"."relation_id" IS '关系id';
COMMENT ON COLUMN "public"."case_schedule_relation"."case_index_code" IS '案件编号';
COMMENT ON COLUMN "public"."case_schedule_relation"."court_schedule_id" IS '排期id';
COMMENT ON COLUMN "public"."case_schedule_relation"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."case_schedule_relation"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."case_schedule_relation"."trial_times" IS '排期次别';
COMMENT ON COLUMN "public"."case_schedule_relation"."order_num" IS '排序顺序';

-- ----------------------------
-- Records of case_schedule_relation
-- ----------------------------
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e6946d634016946d706700004', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e6946d634016946d706690003', '2019-03-04 11:54:50.858', '2019-03-04 11:54:50.858', 5, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e6946d634016946d706770005', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e6946d634016946d706690003', '2019-03-04 11:54:50.865', '2019-03-04 11:54:50.865', 5, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e694c932601694ccd27e20001', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e694c932601694ccd279b0000', '2019-03-05 15:41:47.316', '2019-03-05 15:41:47.316', 6, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e694c932601694ccd28130002', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e694c932601694ccd279b0000', '2019-03-05 15:41:47.363', '2019-03-05 15:41:47.363', 6, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69764a40016979d797ed0006', 'dad5dfed17784de4b55b8db18194a7d5', '8a90d25e69764a40016979d797ea0005', '2019-03-14 09:36:06.122', '2019-03-14 09:36:06.122', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69764a40016979d797f40007', '72d54051cc434c1fb972ed1e867a17f6', '8a90d25e69764a40016979d797ea0005', '2019-03-14 09:36:06.125', '2019-03-14 09:36:06.125', 1, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e693848fd0169384a4be00001', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e69382aca0169382f3b6d0006', '2019-03-01 16:06:27.04', '2019-03-01 16:06:27.04', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e693848fd0169384a4be00002', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e69382aca0169382f3b6d0006', '2019-03-01 16:06:27.04', '2019-03-01 16:06:27.04', 2, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e6946a86c016946aa128d0004', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e6946a86c016946a9fce90003', '2019-03-04 11:05:39.305', '2019-03-04 11:05:39.305', 2, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e6946a86c016946aa14a60005', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e6946a86c016946a9fce90003', '2019-03-04 11:05:44.845', '2019-03-04 11:05:44.845', 2, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e693848fd0169384a4be00003', 'dad5dfed17784de4b55b8db18194a7d5', '8a90d25e69382aca01693831cc190008', '2019-03-03 10:41:51', '2019-03-04 10:41:55', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c30b640169c3de86a6002b', '4089c8ad8de94ef4b2c3855f86ff06f7', '8a90d25e69c30b640169c3de86a1002a', '2019-03-28 18:35:34.433', '2019-03-28 18:35:34.433', 2, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c30b640169c3de86ab002c', '93a76b8cb50d4cbab419d01419cac694', '8a90d25e69c30b640169c3de86a1002a', '2019-03-28 18:35:34.438', '2019-03-28 18:35:34.438', 2, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c30b640169c421f3a40032', '93a76b8cb50d4cbab419d01419cac694', '8a90d25e69c30b640169c3d93cfa0020', '2019-03-28 19:49:13.251', '2019-03-28 19:49:13.251', 2, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c30b640169c421f3a90033', '4089c8ad8de94ef4b2c3855f86ff06f7', '8a90d25e69c30b640169c3d93cfa0020', '2019-03-28 19:49:13.252', '2019-03-28 19:49:13.252', 2, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c77aabc40009', '4089c8ad8de94ef4b2c3855f86ff06f7', '8a90d25e69c724af0169c77aabc20008', '2019-03-29 11:24:59.202', '2019-03-29 11:24:59.202', 5, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c77aabca000a', '93a76b8cb50d4cbab419d01419cac694', '8a90d25e69c724af0169c77aabc20008', '2019-03-29 11:24:59.204', '2019-03-29 11:24:59.204', 4, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c77aabd0000b', 'e44d3c5a73df4bc49c15fb73c4386c77', '8a90d25e69c724af0169c77aabc20008', '2019-03-29 11:24:59.21', '2019-03-29 11:24:59.21', 1, 3);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c77aabd5000c', 'debb4dc528a9438d99e62071f5a40df1', '8a90d25e69c724af0169c77aabc20008', '2019-03-29 11:24:59.216', '2019-03-29 11:24:59.216', 1, 4);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c8903f6f0017', '4089c8ad8de94ef4b2c3855f86ff06f7', '8a90d25e69c724af0169c773f6d70006', '2019-03-29 16:28:10.475', '2019-03-29 16:28:10.475', 6, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69a02a400169a31fb4b50524', '338220190301000022', '8a90d25e6990b0c2016990bd3560001a', '2019-03-22 09:59:17.94', '2019-03-22 09:59:17.94', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69a02a400169a31fb4bc0525', '338220190301000021', '8a90d25e6990b0c2016990bd3c99001c', '2019-03-22 09:59:17.947', '2019-03-22 09:59:17.947', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69a02a400169a31fb4c10526', '338220190301000094', '8a90d25e6990b0c2016990bd1f170016', '2019-03-22 09:59:17.952', '2019-03-22 09:59:17.952', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e6946d634016946d6a4b60002', '8a90d25e698fe0cc01698fe56a1a0007', '8a90d25e6946d634016946d6a4110000', '2019-03-04 11:54:25.806', '2019-03-04 11:54:25.806', 4, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69a02a400169a31fb4c80527', '338220190301000014', '8a90d25e6990b0c2016990bd2e580018', '2019-03-22 09:59:17.959', '2019-03-22 09:59:17.959', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c890f56c0018', '4089c8ad8de94ef4b2c3855f86ff06f7', '8a90d25e69c724af0169c77b0f3d000d', '2019-03-29 16:28:57.066', '2019-03-29 16:28:57.066', 6, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c890f5700019', '93a76b8cb50d4cbab419d01419cac694', '8a90d25e69c724af0169c77b0f3d000d', '2019-03-29 16:28:57.068', '2019-03-29 16:28:57.068', 5, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c890f572001a', 'e44d3c5a73df4bc49c15fb73c4386c77', '8a90d25e69c724af0169c77b0f3d000d', '2019-03-29 16:28:57.072', '2019-03-29 16:28:57.072', 2, 3);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e69c724af0169c890f574001b', 'debb4dc528a9438d99e62071f5a40df1', '8a90d25e69c724af0169c77b0f3d000d', '2019-03-29 16:28:57.074', '2019-03-29 16:28:57.074', 2, 4);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d821b90169d8ca598d001b', '4089c8ad8de94ef4b2c3855f86ff06f7', '8a90d29c69d821b90169d8ca598a001a', '2019-04-01 20:05:33.706', '2019-04-01 20:05:33.706', 7, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dbba41a60000', '4089c8ad8de94ef4b2c3855f86ff06f7', '8a90d25e69c724af0169c73f27060000', '2019-04-02 09:46:50.656', '2019-04-02 09:46:50.656', 7, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dbba41bd0001', '93a76b8cb50d4cbab419d01419cac694', '8a90d25e69c724af0169c73f27060000', '2019-04-02 09:46:50.666', '2019-04-02 09:46:50.666', 5, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dc20ea460003', '4ef5737facf84ca4aa278b7fe9509ef8', '8a90d29c69d8e2450169dc20ea430002', '2019-04-02 11:38:58.499', '2019-04-02 11:38:58.499', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e6946a86c016946ab10e40007', 'ca3c5db48aca4faa8dd7015f261a2983', '8a90d25e6946d634016946d6a4110000', '2019-03-04 11:06:49.953', '2019-03-04 11:06:49.953', 3, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e6946a86c016946ab10ec0008', '8a90d25e698fe0cc01698fe5713e0008', '8a90d25e6946d634016946d6a4110000', '2019-03-04 11:06:49.957', '2019-03-04 11:06:49.957', 3, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d25e6946d634016946d6a48d0001', '8a90d25e698fe0cc01698fe282f80004', '8a90d25e6946d634016946d6a4110000', '2019-03-04 11:54:25.717', '2019-03-04 11:54:25.717', 4, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dc20ea4d0004', '37d2603ebe6d4ef5a6c6f0f92b34b950', '8a90d29c69d8e2450169dc20ea430002', '2019-04-02 11:38:58.503', '2019-04-02 11:38:58.503', 1, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dc20ea510005', '3ca0595676ad4b608ba1715778ebcdd8', '8a90d29c69d8e2450169dc20ea430002', '2019-04-02 11:38:58.509', '2019-04-02 11:38:58.509', 1, 3);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dc20ea540006', '5e79bf7f810245a79b23a116ecb42736', '8a90d29c69d8e2450169dc20ea430002', '2019-04-02 11:38:58.513', '2019-04-02 11:38:58.513', 1, 4);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dc211dd60008', '4ef5737facf84ca4aa278b7fe9509ef8', '8a90d29c69d8e2450169dc211dd20007', '2019-04-02 11:39:11.698', '2019-04-02 11:39:11.698', 2, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dc211ddd0009', '37d2603ebe6d4ef5a6c6f0f92b34b950', '8a90d29c69d8e2450169dc211dd20007', '2019-04-02 11:39:11.702', '2019-04-02 11:39:11.702', 2, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dc211de2000a', '3ca0595676ad4b608ba1715778ebcdd8', '8a90d29c69d8e2450169dc211dd20007', '2019-04-02 11:39:11.71', '2019-04-02 11:39:11.71', 2, 3);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69d8e2450169dc211de6000b', '5e79bf7f810245a79b23a116ecb42736', '8a90d29c69d8e2450169dc211dd20007', '2019-04-02 11:39:11.714', '2019-04-02 11:39:11.714', 2, 4);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69dc95ff0169dcf5536d0001', 'e44d3c5a73df4bc49c15fb73c4386c77', '8a90d29c69dc95ff0169dcf5535d0000', '2019-04-02 15:30:59.046', '2019-04-02 15:30:59.046', 3, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69dc95ff0169dcf5537a0002', '93a76b8cb50d4cbab419d01419cac694', '8a90d29c69dc95ff0169dcf5535d0000', '2019-04-02 15:30:59.053', '2019-04-02 15:30:59.053', 6, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69dd8c2b0169ddc81cef0003', '51c1c089d7fb41df9f03b41db122e758', '8a90d29c69dd8c2b0169ddc81ce80002', '2019-04-02 19:21:13.193', '2019-04-02 19:21:13.193', 1, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69e0d42c0169e0d98df20001', '51c1c089d7fb41df9f03b41db122e758', '8a90d29c69e0d42c0169e0d98ddf0000', '2019-04-03 09:39:07.88', '2019-04-03 09:39:07.88', 2, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69e0d42c0169e0d98e460002', '5e79bf7f810245a79b23a116ecb42736', '8a90d29c69e0d42c0169e0d98ddf0000', '2019-04-03 09:39:07.89', '2019-04-03 09:39:07.89', 3, 2);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69e20e4e0169e23920340002', '51c1c089d7fb41df9f03b41db122e758', '8a90d29c69e1085c0169e10943490000', '2019-04-03 16:03:08.465', '2019-04-03 16:03:08.465', 3, 1);
INSERT INTO "public"."case_schedule_relation" VALUES ('8a90d29c69e20e4e0169e239203d0003', '5e79bf7f810245a79b23a116ecb42736', '8a90d29c69e1085c0169e10943490000', '2019-04-03 16:03:08.469', '2019-04-03 16:03:08.469', 4, 2);

-- ----------------------------
-- Table structure for court_schedule_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."court_schedule_info";
CREATE TABLE "public"."court_schedule_info" (
  "schedule_id" varchar(32) NOT NULL,
  "plan_date" date,
  "plan_start_time" time(6),
  "plan_end_time" time(6),
  "if_single" bool,
  "clerk_id" varchar(32),
  "clerk_name" varchar(128),
  "chief_judge_id" varchar(32),
  "chief_judge_name" varchar(128),
  "judge_name" varchar(128),
  "venireman_name" varchar(256),
  "law_clerk_name" varchar(128),
  "if_live" bool,
  "third_code" varchar,
  "trial_status" varchar(255),
  "program_type" varchar(16),
  "syn_type" varchar(16),
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "creator_username" varchar(32),
  "tribunal_id" varchar(32),
  "meridiem" varchar(2),
  "tribunal_name" varchar(64),
  "row_uuid" varchar(32)
)
;
COMMENT ON COLUMN "public"."court_schedule_info"."schedule_id" IS '排期id';
COMMENT ON COLUMN "public"."court_schedule_info"."plan_date" IS '计划日期';
COMMENT ON COLUMN "public"."court_schedule_info"."plan_start_time" IS '计划开始时间';
COMMENT ON COLUMN "public"."court_schedule_info"."plan_end_time" IS '计划结束时间';
COMMENT ON COLUMN "public"."court_schedule_info"."if_single" IS '是否单个案件：true单个案件、false合并审理';
COMMENT ON COLUMN "public"."court_schedule_info"."clerk_id" IS '书记员ID';
COMMENT ON COLUMN "public"."court_schedule_info"."clerk_name" IS '书记员';
COMMENT ON COLUMN "public"."court_schedule_info"."chief_judge_id" IS '审判长ID';
COMMENT ON COLUMN "public"."court_schedule_info"."chief_judge_name" IS '审判长';
COMMENT ON COLUMN "public"."court_schedule_info"."judge_name" IS '审判员';
COMMENT ON COLUMN "public"."court_schedule_info"."venireman_name" IS '陪审员';
COMMENT ON COLUMN "public"."court_schedule_info"."law_clerk_name" IS '法官助理';
COMMENT ON COLUMN "public"."court_schedule_info"."if_live" IS '是否开启直播:true开启；false不开启';
COMMENT ON COLUMN "public"."court_schedule_info"."third_code" IS '第三方数据编码,暂时不用';
COMMENT ON COLUMN "public"."court_schedule_info"."trial_status" IS '庭审状态：unPlan：未排期；unTrial：待开庭；trialing：庭审中；trialed：已闭庭';
COMMENT ON COLUMN "public"."court_schedule_info"."program_type" IS '普通程序general/简易程序summary';
COMMENT ON COLUMN "public"."court_schedule_info"."syn_type" IS '数据来源。syned从第三方同步的，created本系统创建的';
COMMENT ON COLUMN "public"."court_schedule_info"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."court_schedule_info"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."court_schedule_info"."creator_username" IS '排期创建者用户名';
COMMENT ON COLUMN "public"."court_schedule_info"."tribunal_id" IS '法庭id';
COMMENT ON COLUMN "public"."court_schedule_info"."meridiem" IS '上下午：上午am；下午pm';
COMMENT ON COLUMN "public"."court_schedule_info"."tribunal_name" IS '开庭法庭名称';
COMMENT ON COLUMN "public"."court_schedule_info"."row_uuid" IS '从通达海同步的案件排期主键';

-- ----------------------------
-- Records of court_schedule_info
-- ----------------------------
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6946d634016946d706690003', '2019-03-29', '11:50:00', '15:03:00', NULL, 'user', NULL, NULL, 'chiefJudgeName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'created', '2019-03-24 11:54:50.857', '2019-03-04 11:54:50.857', NULL, 'asdasdasdasda', 'am', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b3c2f10004', '2019-01-03', '14:00:00', '14:30:00', NULL, 'litingting', '李婷婷', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:08:13.776', '2019-03-18 20:08:13.776', NULL, '012', 'pm', '羊场法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b439440005', '2019-01-03', '09:30:00', '10:30:00', NULL, 'litingting', '李婷婷', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:08:44.1', '2019-03-18 20:08:44.1', NULL, '012', 'am', '羊场法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b4394e0007', '2019-03-13', '08:30:00', '11:30:00', NULL, 'zhangni', '张妮', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:08:44.11', '2019-03-18 20:08:44.11', NULL, '117', 'am', '速裁法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b439520008', '2019-03-12', '09:30:00', '11:30:00', NULL, 'litingting', '李婷婷', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:08:44.114', '2019-03-18 20:08:44.114', NULL, '001', 'am', '第一审判庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b6803a000d', '2019-01-03', '14:00:00', '14:30:00', NULL, 'litingting', '李婷婷', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:11:13.338', '2019-03-18 20:11:13.338', NULL, '012', 'pm', '羊场法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b6a4bc000e', '2019-01-03', '09:30:00', '10:30:00', NULL, 'litingting', '李婷婷', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:11:22.683', '2019-03-18 20:11:22.683', NULL, '012', 'am', '羊场法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b6a685000f', '2019-03-15', '11:30:00', '13:30:00', NULL, 'zhangguangting', '张光厅', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:11:23.141', '2019-03-18 20:11:23.141', NULL, '016', 'am', '倘塘法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b6aaa10011', '2019-03-12', '09:30:00', '11:30:00', NULL, 'litingting', '李婷婷', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:11:24.193', '2019-03-18 20:11:24.193', NULL, '001', 'am', '第一审判庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990bd3c99001c', '2019-03-13', '08:30:00', '11:30:00', NULL, 'zhangni', '张妮', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'syned', '2019-03-18 20:18:34.775', '2019-03-22 09:59:17.945', NULL, '117', 'am', '速裁法庭', '0s7e4c008f404be491cff8e3996ea10f');
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990bd1f170016', '2019-01-03', '14:00:00', '14:30:00', NULL, 'litingting', '李婷婷', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'syned', '2019-03-18 20:18:27.222', '2019-03-22 09:59:17.951', NULL, '012', 'pm', '羊场法庭', 'db431956cd544b4db4d5d6919e28d936');
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990bd2e580018', '2019-01-03', '09:30:00', '10:30:00', NULL, 'litingting', '李婷婷', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'syned', '2019-03-18 20:18:31.127', '2019-03-22 09:59:17.957', NULL, '012', 'am', '羊场法庭', '0b7e4c008f404be491cff8e3996eab8f');
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b439490006', '2019-03-25', '11:30:00', '13:30:00', NULL, 'zhangguangting', '张光厅', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:08:44.105', '2019-03-18 20:08:44.105', NULL, '016', 'am', '倘塘法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990b6a8a10010', '2019-03-25', '08:30:00', '11:30:00', NULL, 'zhangni', '张妮', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'created', '2019-03-18 20:11:23.681', '2019-03-18 20:11:23.681', NULL, '117', 'am', '速裁法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69c30b640169c3d93cfa0020', '2019-03-28', '10:45:00', '12:15:00', 'f', 'ceshi', NULL, 'user', NULL, 'dt', 'dt', 'dt', 't', NULL, 'unTrial', 'general', 'created', '2019-03-28 18:29:47.897', '2019-03-28 19:49:13.249', 'user', '8a90d2f9697a555d01697b32d2190000', 'am', '第二人民法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69382aca0169382f3b6d0006', '2019-03-25', '14:07:00', '15:03:00', NULL, 'user', NULL, NULL, 'chiefJudgeName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'created', '2019-03-21 15:36:53.357', '2019-03-01 16:06:27.038', NULL, '8a90d2f9696cd90401696cd9e9df000', 'pm', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69382aca01693831cc190008', '2019-03-25', '14:03:00', '14:03:00', NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'created', '2019-03-21 15:39:41', '2019-03-01 15:39:41.464', NULL, '8a90d2f9697a555d01697b33710b0001', 'pm', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e694c932601694ccd279b0000', '2019-03-25', '11:59:00', '15:03:00', NULL, 'user', NULL, NULL, 'chiefJudgeName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'created', '2019-03-25 15:41:47.269', '2019-03-05 15:41:47.269', NULL, 'asdasdasdasda', 'pm', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69764a40016979d797ea0005', '2019-03-21', '14:42:00', '14:30:00', 'f', 'user', NULL, 'ceshi', NULL, '审判员A,审判员b', '陪审员1，陪审员2', '法官助理a,法院助理b', 't', NULL, 'trialed', 'general', 'created', '2019-03-26 09:36:06', '2019-03-14 09:36:06.121', 'admin', '8a90d2f9696cd90401696cd9e9df0000', 'pm', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6990b0c2016990bd3560001a', '2019-03-15', '11:30:00', '13:30:00', NULL, 'zhangguangting', '张光厅', '', '', NULL, '', NULL, 't', NULL, 'noStart', NULL, 'syned', '2019-03-18 20:18:32.927', '2019-03-22 09:59:17.938', NULL, '016', 'pm', '倘塘法庭', '0b7e4c0082344be491cff8e3996ea20f');
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6946d634016946d6a4110000', '2019-03-23', '12:00:00', '15:03:00', NULL, 'user', NULL, NULL, 'chiefJudgeName', NULL, NULL, NULL, NULL, NULL, 'trialing', NULL, 'created', '2019-03-27 11:54:25', '2019-03-04 11:54:25.663', NULL, '8a90d2f9697a555d01697b32d2190000', 'pm', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6946a86c016946ab10e10006', '2019-03-29', '11:03:00', '15:03:00', NULL, 'user', NULL, NULL, 'chiefJudgeName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'created', '2019-03-24 11:06:49.953', '2019-03-04 11:06:49.953', NULL, 'asdasdasdasda', 'am', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e6946a86c016946a9fce90003', '2019-03-20', '11:03:00', '15:03:00', NULL, 'user', NULL, NULL, 'chiefJudgeName', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'created', '2019-03-24 11:05:39.305', '2019-03-04 11:05:39.305', NULL, 'asdasdasdasda', 'pm', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69c724af0169c77aabc20008', '2019-03-29', '13:00:00', '14:30:00', 'f', 'user', NULL, 'ceshi', NULL, 'dt', 'dt', 'dt', 'f', NULL, 'unTrial', 'general', 'created', '2019-03-29 11:24:59.202', '2019-03-29 11:24:59.202', 'user', '8a90d2f9696cd90401696cd9e9df0000', 'pm', '2222', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d29c69dc95ff0169dcf5535d0000', '2019-04-02', '12:00:00', '13:00:00', 'f', 'user', NULL, 'ceshi', NULL, 'dt', 'dt', 'dt', 't', NULL, 'unTrial', 'general', 'created', '2019-04-02 15:30:59.023', '2019-04-02 15:30:59.023', 'user', '8a90d2f9697a555d01697b33710b0001', 'pm', '第一人民法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d29c69dd8c2b0169ddc81ce80002', '2019-04-02', '09:45:00', '13:30:00', 't', 'ceshi', NULL, 'user', NULL, '张三,李四', '', '', 't', NULL, 'unTrial', 'general', 'created', '2019-04-02 19:21:13.188', '2019-04-02 19:21:13.188', 'user', '8a90d2f9696cd90401696cd9e9df0000', 'am', '2222', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69c724af0169c773f6d70006', '2019-03-29', '11:00:00', '13:00:00', 't', 'user', NULL, 'ceshi', NULL, 'dt', 'dt', 'dt', 't', NULL, 'unTrial', 'general', 'created', '2019-03-29 11:17:39.665', '2019-03-29 16:28:10.471', 'user', '8a90d2f9696cd90401696cd9e9df0000', 'am', '2222', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69c724af0169c77b0f3d000d', '2019-03-29', '11:00:00', '11:15:00', 'f', 'ceshi', NULL, 'user', NULL, '', '', '', 't', NULL, 'unTrial', 'general', 'created', '2019-03-29 11:25:24.668', '2019-03-29 16:28:57.064', 'user', '8a90d2f9697a555d01697b32d2190000', 'am', '第二人民法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d29c69d821b90169d8ca598a001a', '2019-04-01', '11:15:00', '12:30:00', 't', 'ceshi', NULL, 'user', NULL, 'dt', 'dtttt', 'd11223', 't', NULL, 'unTrial', 'general', 'created', '2019-04-01 20:05:33.703', '2019-04-01 20:05:33.703', 'user', '8a90d2f9696cd90401696cd9e9df0000', 'am', '2222', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69c30b640169c3de86a1002a', '2019-03-28', '12:15:00', '12:30:00', 'f', 'user', NULL, 'ceshi', NULL, 'dt', 'dt', 'dt', 't', NULL, 'unTrial', 'general', 'created', '2019-03-28 18:35:34.433', '2019-03-28 18:35:34.433', 'user', '8a90d2f9697a555d01697b32d2190000', 'pm', '第二人民法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d25e69c724af0169c73f27060000', '2019-04-02', '09:45:00', '11:45:00', 'f', 'user', NULL, 'ceshi', NULL, 'dt', 'dt', 'dt', 't', NULL, 'unTrial', 'general', 'created', '2019-03-29 10:19:58.565', '2019-04-02 09:46:50.606', 'user', '8a90d2f9697a555d01697b32d2190000', 'am', '第二人民法庭', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d29c69d8e2450169dc20ea430002', '2019-04-02', '15:00:00', '16:00:00', 'f', 'ceshi', NULL, 'user', NULL, 'dt,dryyy', 'dtyy,ddgf', 'drty,sdfgdg', 't', NULL, 'unTrial', 'general', 'created', '2019-04-02 11:38:58.498', '2019-04-02 11:38:58.498', 'user', '8a90d2f9697a555d01697b32d2190000', 'pm', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d29c69e0d42c0169e0d98ddf0000', '2019-04-03', '10:00:00', '11:00:00', 'f', 'ceshi', NULL, 'user', NULL, 'dt', 'dt', 'dt', 't', NULL, 'unTrial', 'general', 'created', '2019-04-03 09:39:07.832', '2019-04-03 09:39:07.832', 'user', '8a90d2f9696cd90401696cd9e9df0000', 'am', '2222', NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d29c69d8e2450169dc211dd20007', '2019-04-02', '15:00:00', '16:00:00', 'f', 'ceshi', NULL, 'user', NULL, 'dt,dryyy', 'dtyy,ddgf', 'drty,sdfgdg', 't', NULL, 'unTrial', 'general', 'created', '2019-04-02 11:39:11.698', '2019-04-02 11:39:11.698', 'user', '8a90d2f9697a555d01697b32d2190000', 'pm', NULL, NULL);
INSERT INTO "public"."court_schedule_info" VALUES ('8a90d29c69e1085c0169e10943490000', '2019-04-03', '12:00:00', '13:00:00', 'f', 'ceshi', NULL, 'user', NULL, '', '', '', 't', NULL, 'unTrial', 'general', 'created', '2019-04-03 10:31:14.495', '2019-04-03 16:03:08.462', 'user', '8a90d2f9696cd90401696cd9e9df0000', 'pm', '2222', NULL);

-- ----------------------------
-- Table structure for party_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."party_info";
CREATE TABLE "public"."party_info" (
  "party_id" varchar(32) NOT NULL,
  "case_index_code" varchar(32) NOT NULL,
  "litigation_status_one_id" varchar(32),
  "party_type" varchar(10),
  "party_name" varchar(255) NOT NULL,
  "id_card_no" varchar(18),
  "sex" varchar(10),
  "age" int2,
  "address" varchar(255),
  "phone_no" varchar(32),
  "education" varchar(32),
  "job" varchar(64),
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" bool DEFAULT false,
  "litigation_status_two_id" varchar(32),
  "litigation_status_three_id" varchar,
  "litigation_status_one_name" varchar(64),
  "litigation_status_two_name" varchar(64),
  "litigation_status_three_name" varchar(64),
  "syn_type" varchar(10)
)
;
COMMENT ON COLUMN "public"."party_info"."party_id" IS '主键,当事人id';
COMMENT ON COLUMN "public"."party_info"."case_index_code" IS '关联案件编号';
COMMENT ON COLUMN "public"."party_info"."litigation_status_one_id" IS '一审诉讼地位id';
COMMENT ON COLUMN "public"."party_info"."party_type" IS '当事人类别：自然人person；机构org';
COMMENT ON COLUMN "public"."party_info"."party_name" IS '当事人名称，姓名或组织名';
COMMENT ON COLUMN "public"."party_info"."id_card_no" IS '身份证号码';
COMMENT ON COLUMN "public"."party_info"."sex" IS '性别：man男，women女，unknown未知';
COMMENT ON COLUMN "public"."party_info"."age" IS '年龄';
COMMENT ON COLUMN "public"."party_info"."address" IS '住址';
COMMENT ON COLUMN "public"."party_info"."phone_no" IS '联系电话';
COMMENT ON COLUMN "public"."party_info"."education" IS '教育程度';
COMMENT ON COLUMN "public"."party_info"."job" IS '职务';
COMMENT ON COLUMN "public"."party_info"."del_flag" IS '删除标识位：true已删除，false未删除';
COMMENT ON COLUMN "public"."party_info"."litigation_status_two_id" IS '二审诉讼地位id';
COMMENT ON COLUMN "public"."party_info"."litigation_status_three_id" IS '再审诉讼地位id';
COMMENT ON COLUMN "public"."party_info"."litigation_status_one_name" IS '一审诉讼地位名称';
COMMENT ON COLUMN "public"."party_info"."litigation_status_two_name" IS '二审诉讼地位名称';
COMMENT ON COLUMN "public"."party_info"."litigation_status_three_name" IS '再审诉讼地位名称';
COMMENT ON COLUMN "public"."party_info"."syn_type" IS '同步类型：syned从第三方同步的，created本系统创建的';

-- ----------------------------
-- Records of party_info
-- ----------------------------
INSERT INTO "public"."party_info" VALUES ('8a90d25e6975eeb4016975f6b5ae000a', 'dad5dfed17784de4b55b8db18194a7d5', '15', 'person', '张三', '3310120939131823', '男', 30, '地址', '15099900908', '本科', '医生', '2019-03-13 15:31:36.494', '2019-03-13 15:31:36.494', 'f', '17', '19', NULL, NULL, NULL, NULL);
INSERT INTO "public"."party_info" VALUES ('8a90d25e690ecf0801690ecf93200000', '5f551656135a41e19d56e870587e9f47', '30', NULL, 'this is party name updated', '123123', 'man', 12, '地址1', '123123', 'specialist', '伙夫', '2019-02-21 14:47:58.477', '2019-02-25 20:57:25.806', 'f', '17', '23', NULL, NULL, NULL, NULL);
INSERT INTO "public"."party_info" VALUES ('8a90d25e690ecf0801690ed291550001', '80e0d0a12b8248c695428bdc468d0d6f', '30', NULL, 'this is party name', '412412', 'women', 412, '地址2', '142142', 'junior', '护士', '2019-02-21 14:51:14.644', '2019-02-28 15:36:25.667', 't', '30', '24', NULL, NULL, NULL, NULL);
INSERT INTO "public"."party_info" VALUES ('8a90d25e6974ecc2016974f119f70004', '72d54051cc434c1fb972ed1e867a17f6', '15', 'person', '张三', '3310120939131823', '男', 30, '地址', '15099900908', '本科', '医生', '2019-03-13 10:45:51.735', '2019-03-13 10:45:51.735', 'f', '17', '19', NULL, NULL, NULL, NULL);
INSERT INTO "public"."party_info" VALUES ('8a90d29c69d821b90169d8ac1ecc0013', '93a76b8cb50d4cbab419d01419cac694', '13', 'person', 'dongtao', '', '', 10, '', '', NULL, '', '2019-04-01 19:32:32.585', '2019-04-01 19:32:32.585', 'f', NULL, NULL, '原告', NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d25e697179b30169717dffae0003', '67cf984bf2dc4b379c2b6cd74fe31ee6', '15', 'person', '张三', '3310120939131823', 'man', 30, '地址', '15099900908', 'bachelor', '医生', '2019-03-12 18:41:16.718', '2019-03-26 19:01:34.561', 't', '17', '19', NULL, NULL, NULL, NULL);
INSERT INTO "public"."party_info" VALUES ('8a90d25e69b9a7560169b9a898b70001', '01f3db3218a34a26837d08b0fc49e7f2', NULL, 'person', 'dongtao1', '', '', 10, '', '', '', '', '2019-03-26 19:00:27.953', '2019-03-26 19:05:32.384', 't', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69b91fe20169b98e33260003', '5329fc8c65d840d2ad44829fb9be0c75', NULL, 'person', 'dongtao', '', '', 12, '', '', '', '', '2019-03-26 18:31:38.022', '2019-03-26 19:05:51.755', 't', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69b91fe20169b98e33260004', '5329fc8c65d840d2ad44829fb9be0c75', NULL, 'person', 'dongtao', '', '', 28, '', '', '', '', '2019-03-26 18:31:38.022', '2019-03-26 19:05:51.755', 't', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69b91fe20169b98e33260005', '5329fc8c65d840d2ad44829fb9be0c75', NULL, 'person', 'dongtao', '', '', 0, '', '', '', '', '2019-03-26 18:31:38.022', '2019-03-26 19:05:51.755', 't', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69b91fe20169b94c08a20001', '3f3d445bc6c84a1b952d60107a6c41d0', NULL, 'person', 'dongtao', '', '', 10, '', '', '', '', '2019-03-26 17:19:21.756', '2019-03-26 19:05:59.007', 't', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69b9a7560169b9aff82d0003', '7f79ee3f5f104059975ee179fc3db3c9', NULL, 'person', 'dongtao', '', '', 26, '', '', '', '', '2019-03-26 19:08:31.149', '2019-03-26 19:13:39.57', 't', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69d821b90169d8306ad90002', '5c9c0486c37c483d850533f842edb7ce', NULL, 'person', 'dongtao', '', '', NULL, '', '', '', '', '2019-04-01 17:17:25.593', '2019-04-01 17:17:25.593', 'f', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69d821b90169d835d9b40008', '20fe6163b7a1454aa1f52b782dd670f8', '13', 'person', 'dongtao', '', '', NULL, '', '', '', '', '2019-04-01 17:23:21.652', '2019-04-01 17:23:21.652', 'f', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69d821b90169d8ad7df50019', 'debb4dc528a9438d99e62071f5a40df1', NULL, 'person', 'dongtao', '330821199107100734', 'man', 28, '', '', NULL, '', '2019-04-01 19:34:02.485', '2019-04-01 19:35:04.889', 't', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69d8dc950169d8e21c0e000d', '0ee7bf7ae69f40b8888b6cb32a7da70d', '13', 'person', 'dongtao', '', '', NULL, '', '', '', '', '2019-04-01 20:31:30.83', '2019-04-01 20:31:30.83', 'f', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69a02a400169a31fb4a70520', '338220190301000014', NULL, 'person', '杨朗努', '53042819941208112X', 'unknown', NULL, '宣威市羊场镇茨营村委会缪家村93号', '', NULL, '', '2019-03-22 09:59:17.927', '2019-03-22 09:59:17.927', 'f', NULL, NULL, '原告', '', '', 'syned');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69a02a400169a31fb4a70521', '338220190301000014', NULL, 'person', '谭陆云', '530381199403204518', 'unknown', NULL, '宣威市羊场镇茨营村委会缪家村93号', '', NULL, '', '2019-03-22 09:59:17.927', '2019-03-22 09:59:17.927', 'f', NULL, NULL, '被告', '', '', 'syned');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69a02a400169a31fb4ab0522', '338220190301000020', NULL, 'person', '王胖子', '330428199412031123', 'unknown', NULL, '杭州93号', '', NULL, '', '2019-03-22 09:59:17.931', '2019-03-22 09:59:17.931', 'f', NULL, NULL, '原告', '', '', 'syned');
INSERT INTO "public"."party_info" VALUES ('8a90d25e69a02a400169a31fb4ab0523', '338220190301000020', NULL, 'person', '张胖子', '330428199412031111', 'unknown', NULL, '杭州梅家坞1号', '', NULL, '', '2019-03-22 09:59:17.931', '2019-03-22 09:59:17.931', 'f', NULL, NULL, '被告', '', '', 'syned');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69dc95ff0169dd36c8480007', '4089c8ad8de94ef4b2c3855f86ff06f7', '19', 'person', 'dongtao', '', '', 10, '', '', NULL, '', '2019-04-02 16:42:28.806', '2019-04-02 16:42:28.806', 'f', NULL, NULL, '原告', NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69dc95ff0169dd36c8480008', '4089c8ad8de94ef4b2c3855f86ff06f7', NULL, 'org', 'dt', NULL, '', 18, NULL, NULL, NULL, NULL, '2019-04-02 16:42:28.808', '2019-04-02 16:42:28.808', 'f', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1085c0169e19e1b9f0003', '4ef5737facf84ca4aa278b7fe9509ef8', NULL, 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:13:49.211', '2019-04-03 13:13:49.211', 'f', NULL, NULL, NULL, '原告', NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1085c0169e19e1ba10004', '4ef5737facf84ca4aa278b7fe9509ef8', NULL, 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:13:49.216', '2019-04-03 13:13:49.216', 'f', NULL, NULL, NULL, '被告', NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1085c0169e19e301f0006', 'e44d3c5a73df4bc49c15fb73c4386c77', NULL, 'person', 'dongtao', '', '', 10, '', '', NULL, '', '2019-04-03 13:13:54.462', '2019-04-03 13:13:54.462', 'f', NULL, NULL, NULL, NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1085c0169e19ec58c0007', '3ca0595676ad4b608ba1715778ebcdd8', NULL, 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:14:32.714', '2019-04-03 13:14:32.714', 'f', NULL, NULL, NULL, '原告', NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1085c0169e19ec58e0008', '3ca0595676ad4b608ba1715778ebcdd8', NULL, 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:14:32.716', '2019-04-03 13:14:32.716', 'f', NULL, NULL, NULL, '被告', NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1085c0169e19ef152000a', '37d2603ebe6d4ef5a6c6f0f92b34b950', NULL, 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:14:43.92', '2019-04-03 13:14:43.92', 'f', NULL, NULL, NULL, '原告', NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1085c0169e19ef155000b', '37d2603ebe6d4ef5a6c6f0f92b34b950', NULL, 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:14:43.922', '2019-04-03 13:14:43.922', 'f', NULL, NULL, NULL, '被告', NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1085c0169e1b6de140013', '51c1c089d7fb41df9f03b41db122e758', '13', 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:40:51.859', '2019-04-03 13:40:51.859', 'f', NULL, NULL, '原告', NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1bfdc0169e1c11d7b0004', '5e79bf7f810245a79b23a116ecb42736', '19', 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:52:03.448', '2019-04-03 13:52:03.448', 'f', NULL, NULL, '原告', NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1bfdc0169e1c11d7e0005', '5e79bf7f810245a79b23a116ecb42736', '20', 'person', 'dongtao', '', '', NULL, '', '', NULL, '', '2019-04-03 13:52:03.452', '2019-04-03 13:52:03.452', 'f', NULL, NULL, '被告', NULL, NULL, 'created');
INSERT INTO "public"."party_info" VALUES ('8a90d29c69e1bfdc0169e1c11d7f0006', '5e79bf7f810245a79b23a116ecb42736', '19', 'person', 'dongtao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-03 13:52:03.454', '2019-04-03 13:52:03.454', 'f', NULL, NULL, '原告', NULL, NULL, 'created');

-- ----------------------------
-- Table structure for procurator_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."procurator_info";
CREATE TABLE "public"."procurator_info" (
  "procurator_id" varchar(32) NOT NULL,
  "case_index_code" varchar(32) NOT NULL,
  "litigation_status_id" varchar(32),
  "procurator_name" varchar(64) NOT NULL,
  "id_card_no" varchar(18),
  "phone_no" varchar(32),
  "law_office" varchar(64),
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "del_flag" bool DEFAULT false,
  "sex" varchar(10)
)
;
COMMENT ON COLUMN "public"."procurator_info"."procurator_id" IS '主键，代理人id';
COMMENT ON COLUMN "public"."procurator_info"."case_index_code" IS '关联案件编号';
COMMENT ON COLUMN "public"."procurator_info"."litigation_status_id" IS '诉讼地位id';
COMMENT ON COLUMN "public"."procurator_info"."procurator_name" IS '代理人名字';
COMMENT ON COLUMN "public"."procurator_info"."id_card_no" IS '代理人身份证号码';
COMMENT ON COLUMN "public"."procurator_info"."phone_no" IS '联系方式';
COMMENT ON COLUMN "public"."procurator_info"."law_office" IS '所在律师事务所';
COMMENT ON COLUMN "public"."procurator_info"."del_flag" IS '删除标识位：true已删除，false未删除';
COMMENT ON COLUMN "public"."procurator_info"."sex" IS '性别：man男，women女，unknown未知';

-- ----------------------------
-- Records of procurator_info
-- ----------------------------
INSERT INTO "public"."procurator_info" VALUES ('8a90d25e6975eeb4016975f6b5af000b', 'dad5dfed17784de4b55b8db18194a7d5', '19', '张益达律师', '3302184546161', '13909090101', '滨江没希望律师事务所', '2019-03-13 15:31:36.494', '2019-03-13 15:31:36.494', 'f', 'man');
INSERT INTO "public"."procurator_info" VALUES ('8a90d25e690f2bdc01690f2d66b70000', '80e0d0a12b8248c695428bdc468d0d6f', '17', '1this is procurator name update', '1', '1', '1', '2019-02-21 16:30:27.478', '2019-02-28 15:36:25.67', 'f', NULL);
INSERT INTO "public"."procurator_info" VALUES ('8a90d25e6974ecc2016974f119f80005', '72d54051cc434c1fb972ed1e867a17f6', '19', '张益达律师', '3302184546161', '13909090101', '滨江没希望律师事务所', '2019-03-13 10:45:51.736', '2019-03-13 10:45:51.736', 'f', 'man');
INSERT INTO "public"."procurator_info" VALUES ('8a90d25e697179b3016971a98db70004', '67cf984bf2dc4b379c2b6cd74fe31ee6', '19', '张益达律师', '3302184546161', '13909090101', '滨江没希望律师事务所', '2019-03-12 19:37:41.963', '2019-03-26 19:01:34.564', 't', 'man');
INSERT INTO "public"."procurator_info" VALUES ('8a90d29c69d821b90169d8306adb0003', '5c9c0486c37c483d850533f842edb7ce', '13', 'dongtao', '', '', '', '2019-04-01 17:17:25.593', '2019-04-01 17:17:25.593', 'f', NULL);
INSERT INTO "public"."procurator_info" VALUES ('8a90d29c69d821b90169d835d9b40009', '20fe6163b7a1454aa1f52b782dd670f8', NULL, 'dongtaop', '', '', '', '2019-04-01 17:23:21.652', '2019-04-01 17:23:21.652', 'f', NULL);
INSERT INTO "public"."procurator_info" VALUES ('8a90d29c69e1085c0169e19e1ba40005', '4ef5737facf84ca4aa278b7fe9509ef8', '22', 'dongtao', '', '', '', '2019-04-03 13:13:49.217', '2019-04-03 13:13:49.217', 'f', NULL);
INSERT INTO "public"."procurator_info" VALUES ('8a90d29c69e1085c0169e19ec58f0009', '3ca0595676ad4b608ba1715778ebcdd8', '22', 'dongtao', '', '', '', '2019-04-03 13:14:32.718', '2019-04-03 13:14:32.718', 'f', NULL);
INSERT INTO "public"."procurator_info" VALUES ('8a90d29c69e1085c0169e19ef156000c', '37d2603ebe6d4ef5a6c6f0f92b34b950', '22', 'dongtao', '', '', '', '2019-04-03 13:14:43.925', '2019-04-03 13:14:43.925', 'f', NULL);
INSERT INTO "public"."procurator_info" VALUES ('8a90d29c69e1085c0169e1b6de150014', '51c1c089d7fb41df9f03b41db122e758', '13', 'dongtao', '', '', '', '2019-04-03 13:40:51.86', '2019-04-03 13:40:51.86', 'f', NULL);
INSERT INTO "public"."procurator_info" VALUES ('8a90d29c69e1bfdc0169e1c11d810007', '5e79bf7f810245a79b23a116ecb42736', '19', 'dongtao', '', '', '', '2019-04-03 13:52:03.455', '2019-04-03 13:52:03.455', 'f', NULL);

-- ----------------------------
-- Table structure for trial_note_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."trial_note_info";
CREATE TABLE "public"."trial_note_info" (
  "trial_note_id" varchar(32) NOT NULL,
  "trial_code" varchar(32),
  "summary_note" varchar(1024),
  "create_time" timestamp(6),
  "update_time" timestamp(6),
  "case_no" varchar(128)
)
;
COMMENT ON COLUMN "public"."trial_note_info"."trial_note_id" IS '主键，id';
COMMENT ON COLUMN "public"."trial_note_info"."trial_code" IS '关联庭审记录id';
COMMENT ON COLUMN "public"."trial_note_info"."summary_note" IS '笔录下载地址';
COMMENT ON COLUMN "public"."trial_note_info"."case_no" IS '案号';

-- ----------------------------
-- Records of trial_note_info
-- ----------------------------
INSERT INTO "public"."trial_note_info" VALUES ('asdadasdads', '1', 'http://10.123.123.4/url/download/123.doc', '2019-03-26 15:58:40', '2019-03-26 15:58:44', '(2018)杭邢辖12号');

-- ----------------------------
-- Primary Key structure for table case_info
-- ----------------------------
ALTER TABLE "public"."case_info" ADD CONSTRAINT "case_info_pkey" PRIMARY KEY ("case_id");

-- ----------------------------
-- Primary Key structure for table case_schedule_relation
-- ----------------------------
ALTER TABLE "public"."case_schedule_relation" ADD CONSTRAINT "case_schedule_relation_pkey" PRIMARY KEY ("relation_id");

-- ----------------------------
-- Primary Key structure for table court_schedule_info
-- ----------------------------
ALTER TABLE "public"."court_schedule_info" ADD CONSTRAINT "court_schedule_info_pkey" PRIMARY KEY ("schedule_id");

-- ----------------------------
-- Primary Key structure for table party_info
-- ----------------------------
ALTER TABLE "public"."party_info" ADD CONSTRAINT "party_info_pkey" PRIMARY KEY ("party_id");

-- ----------------------------
-- Primary Key structure for table procurator_info
-- ----------------------------
ALTER TABLE "public"."procurator_info" ADD CONSTRAINT "procurator_info_pkey" PRIMARY KEY ("procurator_id");

-- ----------------------------
-- Primary Key structure for table trial_note_info
-- ----------------------------
ALTER TABLE "public"."trial_note_info" ADD CONSTRAINT "trial_note_info_pkey" PRIMARY KEY ("trial_note_id");
