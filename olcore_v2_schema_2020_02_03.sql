USE gmonstar_orchestration;

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 7 WHERE id = 43;
UPDATE inherit_api_input_parameters SET length = '<65' WHERE id = 146;
UPDATE inherit_api_input_parameters SET length = '<65' WHERE id = 160;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 9 WHERE id = 207;
UPDATE inherit_api_input_parameters SET length = '<65', regex_description = 'Value should be <65 characters' WHERE id = 210;
UPDATE inherit_api_input_parameters SET length = '<5' WHERE id = 211;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 8 WHERE id = 216;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 11 WHERE id = 217;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 12 WHERE id = 218;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 13 WHERE id = 219;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 7 WHERE id = 308;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 7 WHERE id = 365;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 10 WHERE id = 424;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 8 WHERE id = 568;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 14 WHERE id = 621;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 8 WHERE id = 641;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 8 WHERE id = 663;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 8 WHERE id = 746;
UPDATE inherit_api_input_parameters SET inherit_api_response_parameter_id = 8 WHERE id = 780;
UPDATE inherit_api_input_parameters SET length = '<65' WHERE id = 1068;
UPDATE inherit_api_input_parameters SET length = '<65' WHERE id = 1082;
UPDATE inherit_api_input_parameters SET regex = '\\d+\\.?\\d*' WHERE id = 4984;


INSERT INTO inherit_notification_template(id, template, inherit_notification_id, response_code, is_response, get_response_key, set_response_key, response_http_code) VALUES
(920, '[{"notification_type":"webhook","api_url":"<returnUrl>/subscribers/<userIdentifier>/events/orderCancelled","method_type":"POST","notification_id":"@tracking_message_header","table_name":"","table_parameter":"","header_parameter":"{''Authorization'':''Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw''}","db_driver":"com.mysql.jdbc.Driver","api_type":"REST","db_url":"","end_node_name":"true","end_node_ip":"127.0.0.1","api_goup_id":"@api_group_id","api_id":"@api_id","body_parameter":"{''requestId'':''<requestIdMsg>'',''eventStatus'': {''code'':''CMN-INB002'', ''description'':''Downstream System Error: [CMN004]: [Entry was not found by provided  identifier]''},  ''deviceDetails'': {''iccid'':''<iccid>'',''imsi'':''<imsi>'',''msisdn'':''<msisdn>'' },  ''orderDetails'': {''planId'':''<typeEntryId>'', ''orderId'':''<userPurchaseId>'',''effectiveDate'':''<removalTimestamp>'',''instanceId'':''<instanceId>''},''refundDetails'': {''currency'': ''<currency>'',refundAmount: ''<refundAmount>''   } }}"}]', 7, '500', NULL, NULL, NULL, NULL);
