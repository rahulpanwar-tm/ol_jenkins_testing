USE gmonstar_orchestration;

INSERT INTO api_input_parameters(id, api_id, name, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(4549, 57, 'planType', 'string', 0, NULL, 'DEMO|TRIAL|RETAIL|COMP', 'Value should be DEMO|TRIAL|RETAIL|COMP', 'planType', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL);

--
-- Inserting data into table inherit_api_input_parameters
--
INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(5002, 136, 4549, 'string', 0, NULL, 'DEMO|TRIAL|RETAIL|COMP', 'Value should be DEMO|TRIAL|RETAIL|COMP', 'planType', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL);

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 21;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 27;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 133;
UPDATE inherit_api_input_parameters SET length = '<65', regex = NULL, regex_description = 'Value should be <65 characters' WHERE id = 143;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <65 characters' WHERE id = 146;
UPDATE inherit_api_input_parameters SET regex = 'ARS|BOB|BRL|CLP|COP|USD|PYG|PEN|UYU|AUD|NZD|KRW|SAR|AED|KWD|OMR|BHD|QAR', regex_description = 'Value should be ARS|BOB|BRL|CLP|COP|USD|PYG|PEN|UYU|AUD|NZD|KRW|SAR|AED|KWD|OMR|BHD|QAR' WHERE id = 147;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <65 characters' WHERE id = 160;
UPDATE inherit_api_input_parameters SET length = '<65', regex = NULL, regex_description = 'Value should be <65 characters' WHERE id = 176;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 200;
UPDATE inherit_api_input_parameters SET regex = '[0-9]+', regex_description = 'Value should be <5 digits' WHERE id = 211;
UPDATE inherit_api_input_parameters SET length = '<65', regex = NULL, regex_description = 'Value should be <65 characters' WHERE id = 233;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 257;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 290;
UPDATE inherit_api_input_parameters SET length = '<65', regex = NULL, regex_description = 'Value should be <65 characters' WHERE id = 292;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 298;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 350;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 356;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 398;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 404;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 462;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 468;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 514;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 520;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 598;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 604;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 692;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 698;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 810;
UPDATE inherit_api_input_parameters SET length = '<65', regex = NULL, regex_description = 'Value should be <65 characters' WHERE id = 812;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 818;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 867;
UPDATE inherit_api_input_parameters SET length = '<65', regex = NULL, regex_description = 'Value should be <65 characters' WHERE id = 1007;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 1031;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 1055;
UPDATE inherit_api_input_parameters SET length = '<65', regex = NULL, regex_description = 'Value should be <65 characters' WHERE id = 1065;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <65 characters' WHERE id = 1068;
UPDATE inherit_api_input_parameters SET regex = 'ARS|BOB|BRL|CLP|COP|USD|PYG|PEN|UYU|AUD|NZD|KRW|SAR|AED|KWD|OMR|BHD|QAR', regex_description = 'Value should be ARS|BOB|BRL|CLP|COP|USD|PYG|PEN|UYU|AUD|NZD|KRW|SAR|AED|KWD|OMR|BHD|QAR' WHERE id = 1069;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <65 characters' WHERE id = 1082;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 3859;
UPDATE inherit_api_input_parameters SET regex_description = 'Value should be <255 characters' WHERE id = 3865;
UPDATE inherit_api_input_parameters SET regex = '\\\\d+(\\\\.\\\\d{1,2})?' WHERE id = 4984;


