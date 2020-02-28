USE gmonstar_orchestration;
--
-- -- Disable foreign keys
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

--
-- Dropping constraints from api_input_parameters
--
ALTER TABLE api_input_parameters 
   DROP FOREIGN KEY fk_api_id_201703142800;

--
-- Dropping constraints from inherit_api_input_parameters
--
ALTER TABLE inherit_api_input_parameters 
   DROP FOREIGN KEY fk_api_api_group_id_201808011133;

--
-- Dropping constraints from inherit_notification
--
ALTER TABLE inherit_notification 
   DROP FOREIGN KEY fk_api_api_group_id201808011157;
ALTER TABLE inherit_notification 
   DROP FOREIGN KEY fk_notification_id_201808011158;

--
-- Dropping constraints from inherit_notification_template
--
ALTER TABLE inherit_notification_template 
   DROP FOREIGN KEY fk_inherit_notification_id_201808011159;

--
-- Deleting data from table api_input_parameters
--
DELETE FROM api_input_parameters WHERE id = 4512;

--
-- Inserting data into table api_input_parameters
--
INSERT INTO api_input_parameters(id, api_id, name, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(4547, 57, 'purchaseVatRate', 'string', 0, NULL, NULL, NULL, 'purchaseVatRate', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(4548, 57, 'purchaseVatAmount', 'string', 0, NULL, NULL, NULL, 'purchaseVatAmount', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL);

--
-- Deleting data from table inherit_api_input_parameters
--
DELETE FROM inherit_api_input_parameters WHERE id = 4967;

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET regex = NULL WHERE id = 4984;

--
-- Inserting data into table inherit_api_input_parameters
--
INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(5000, 136, 4547, 'string', 0, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(5001, 136, 4548, 'string', 0, NULL, NULL, NULL, NULL, '', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL);

--
-- Deleting data from table inherit_notification
--
DELETE FROM inherit_notification WHERE id = 41;

--
-- Deleting data from table inherit_notification_template
--
DELETE FROM inherit_notification_template WHERE id IN(688, 689, 690, 691, 692, 
693, 694, 695, 696, 697, 
698, 699, 700, 701, 702, 
703, 704, 705, 706, 707, 
708, 709, 710);

--
-- Updating data of table inherit_notification_template
--
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [101]: [Invalid credentials]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''orderDetails'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 84;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [102]: [Invalid token]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 85;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [103]: [Expired token]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 86;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [104]: [Restricted operation]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 87;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [106]: [External party call was unsuccessful]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 88;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [109]: [Malformed request object]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 89;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'':{''code'':''0'',''description'':''Success''},''deviceDetails'':{''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>''},''orderDetails'':{''planId'':''<newPlanId>'',''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1'',''paymentDetails'':{''currency'':''<currency>'',''purchaseAmount'':''<purchaseAmount>'',''purchaseVatRate'':''0.0'',''purchaseVatAmount'':''0.0''}}}"}]' WHERE id = 90;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [300]: [There is no started session, please log in correctly]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 91;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [301]: [Session was stopeed, please log in]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 92;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''ORA003'', ''Downstream System Error: [505]: [User was not found by provided parameters]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 93;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [618]: [Invalid login data]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 94;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''ORA001'', ''description'':''Invalid Parameter: [ParameterName]  Value not supported''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 95;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''ORA001'', ''description'':''Invalid Parameter: [ParameterName]  Value not supported''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 96;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''ORA001'', ''description'':''Invalid Parameter: [ParameterName]  Value not supported''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 97;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [642]: [Entry was not found by provided  identifier]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 98;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''ORA003'', ''description'':''Data Not Found : [externalExtraPassId]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 99;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''ORA003'', ''description'':''Data Not Found : [external extrapass]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''orderDetails'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 100;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [800]: [Unable to process order transaction]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 101;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [801]: [Required order parameters not provided]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 102;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [804]: [Unable to perform order]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 103;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [900]: [Access denied]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 104;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [901]: [Black listed user performed operation. Access denied]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 105;
UPDATE inherit_notification_template SET template = '[{"notification_type":"webhook","api_url":"<returnUrl>/carrierInboundGateway/v2/subscribers/<userIdentifier>/events/orderAdded","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [904]: [SLA conditions were not met]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''servicePlan'': {''planId'':''<newPlanId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<created>'',''instanceId'':''1''      }}"}]' WHERE id = 106;

UPDATE`inherit_api_input_parameters` SET `regex`=NULL WHERE `id`='4242';
UPDATE `inherit_api_input_parameters` SET `regex`=NULL WHERE `id`='4609';
UPDATE `inherit_api_input_parameters` SET `regex`=NULL WHERE `id`='4622';
UPDATE `inherit_api_input_parameters` SET `length`=NULL, `regex`=NULL WHERE `id`='4641';


--
-- -- Enable foreign keys
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

--
-- Creating constraints for api_input_parameters
--
ALTER TABLE api_input_parameters 
  ADD CONSTRAINT fk_api_id_201703142800 FOREIGN KEY (api_id)
    REFERENCES api(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for inherit_api_input_parameters
--
ALTER TABLE inherit_api_input_parameters 
  ADD CONSTRAINT fk_api_api_group_id_201808011133 FOREIGN KEY (api_api_group_id)
    REFERENCES api_api_group(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for inherit_notification
--
ALTER TABLE inherit_notification 
  ADD CONSTRAINT fk_api_api_group_id201808011157 FOREIGN KEY (api_api_group_id)
    REFERENCES api_api_group(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE inherit_notification 
  ADD CONSTRAINT fk_notification_id_201808011158 FOREIGN KEY (notification_id)
    REFERENCES notification(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for inherit_notification_template
--
ALTER TABLE inherit_notification_template 
  ADD CONSTRAINT fk_inherit_notification_id_201808011159 FOREIGN KEY (inherit_notification_id)
    REFERENCES inherit_notification(id) ON DELETE NO ACTION ON UPDATE NO ACTION;