USE gmonstar_orchestration;
--
-- -- Disable foreign keys
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

--
-- Dropping constraints from api
--
ALTER TABLE api 
   DROP FOREIGN KEY fk_api_method_type_id201808011124;
ALTER TABLE api 
   DROP FOREIGN KEY fk_api_type_id201808011122;
ALTER TABLE api 
   DROP FOREIGN KEY fk_body_parameter_type_id201808011125;
ALTER TABLE api 
   DROP FOREIGN KEY fk_node_id20170512041839;

--
-- Dropping constraints from api_group
--
ALTER TABLE api_group 
   DROP FOREIGN KEY FK_api_group_platforms;

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
-- Dropping constraints from node_address
--
ALTER TABLE node_address 
   DROP FOREIGN KEY fk_authorization_type_id_201808011225;
ALTER TABLE node_address 
   DROP FOREIGN KEY fk_country_code;
ALTER TABLE node_address 
   DROP FOREIGN KEY fk_operator_id20180720;
ALTER TABLE node_address 
   DROP FOREIGN KEY fk_platform_id_201808011224;
ALTER TABLE node_address 
   DROP FOREIGN KEY fk_token_api_method_type201808011227;

--
-- Dropping constraints from api_response_parameters
--
ALTER TABLE api_response_parameters 
   DROP FOREIGN KEY fk_api_id_201703142700;

--
-- Dropping constraints from api_template
--
ALTER TABLE api_template 
   DROP FOREIGN KEY api_id20170424060755;

--
-- Dropping constraints from notification
--
ALTER TABLE notification 
   DROP FOREIGN KEY fk_notification_api_id201704070545522;

--
-- Dropping constraints from token_management
--
ALTER TABLE token_management 
   DROP FOREIGN KEY fk_api_id20170503080225;

--
-- Dropping constraints from inherit_api_response_parameters
--
ALTER TABLE inherit_api_response_parameters 
   DROP FOREIGN KEY fk_api_api_group_id201808011151;

--
-- Dropping constraints from inherit_notification
--
ALTER TABLE inherit_notification 
   DROP FOREIGN KEY fk_api_api_group_id201808011157;

--
-- Dropping constraints from node_address_auth_parameter
--
ALTER TABLE node_address_auth_parameter 
   DROP FOREIGN KEY fk_node_address_id201808011229;

--
-- Updating data of table api
--
UPDATE api SET method_type_id = 3 WHERE id = 54;

--
-- Inserting data into table api_api_group
--
INSERT INTO api_api_group(id, api_group_id, api_id, api_template, sequence) VALUES
(81, 120, 54, '{"iccid":"<targetICCID>","imsi": "<imsi>","msisdn":"<msisdn>","targetProfile": "<targetProfile>"}', 1),
(82, 120, 47, '{"lastName":"<lastName>","countryIsoCode":"<country>","imsi":"<imsi>","registrationCountryIsoCode":"<registrationCountryIsoCode>","state":"<state>","password":"<password>","iccid":"<iccid>","msisdn":"<msisdn>","contactMsisdn":"<contactmsisdn>","address":"<address>","birthDate":"<birthDate>","notificationEmail":"<email>","firstName":"<firstName>","city":"<city>","email":"<imsi>@globetouch.com","personalId":"<personalId>","language":"<language>","marketing":"<marketing>"}', 2),
(83, 120, 116, '{"accountType":"<accountType>"}', 3);

--
-- Inserting data into table api_group
--
INSERT INTO api_group(id, name, type, platform_id) VALUES
(120, 'EsimOnboarding', 'ASYNC', 1);

--
-- Inserting data into table api_input_parameters
--
INSERT INTO api_input_parameters(id, api_id, name, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(4394, 54, 'user_id', 'string', 1, NULL, NULL, NULL, NULL, 'GM_Goup', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4397, 54, 'token', 'string', 1, NULL, NULL, NULL, '', '4b6f960e-6b0a-11e9-b180-0050568138a0', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4398, 54, 'user_key', 'string', 1, NULL, NULL, NULL, NULL, '9eae8cde-64ff-11e9-9d3b-0050568138a0', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4399, 54, 'identifier', 'string', 1, NULL, NULL, '', '', 'iccid', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4401, 116, 'user_id', 'string', 1, NULL, NULL, NULL, NULL, 'GM_Goup', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4403, 116, 'token', 'string', 1, NULL, NULL, NULL, '', '4b6f960e-6b0a-11e9-b180-0050568138a0', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4404, 116, 'user_key', 'string', 1, NULL, NULL, NULL, NULL, '9eae8cde-64ff-11e9-9d3b-0050568138a0', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4405, 116, 'identifier', 'string', 1, NULL, NULL, '', '', 'iccid', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4410, 116, 'identifier_value', 'string', 1, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(4411, 116, 'Content-Type', 'string', 1, '<21', 'application/json', 'Value should be only application/json', NULL, 'application/json', 1, 0, 0, 0, 0, NULL, 0, NULL),
(4412, 54, 'identifier_value', 'string', 1, NULL, NULL, '', 'iccid', '', 1, 0, 0, 0, 0, NULL, 0, NULL);

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 7;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 15;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 95;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 114;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 132;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 184;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 241;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 278;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 286;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 336;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 344;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 370;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 384;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 392;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 436;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 448;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 456;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 500;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 508;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 584;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 592;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 678;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 686;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 796;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 804;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 848;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 862;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 1015;
UPDATE inherit_api_input_parameters SET regex = 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN' WHERE id = 1054;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1103;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2134 WHERE id = 1156;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2135 WHERE id = 1157;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2136 WHERE id = 1179;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2137 WHERE id = 1180;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2177 WHERE id = 1219;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2178 WHERE id = 1220;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2179, client_parameter_value = '7e96ca42-e0e7-11e9-8bee-fe984cc15272' WHERE id = 1242;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2180, client_parameter_value = '7e96ca42-e0e7-11e9-8bee-fe984cc15272' WHERE id = 1243;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2220 WHERE id = 1282;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2221 WHERE id = 1283;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2223, client_parameter_value = 'userIdentifier' WHERE id = 1306;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1316;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2263 WHERE id = 1345;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2264, client_parameter_value = 'userIdentifier' WHERE id = 1346;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2265, client_parameter = 'ICCID' WHERE id = 1368;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2266, client_parameter = 'userIdentifier' WHERE id = 1369;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1371;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1379;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2306 WHERE id = 1408;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2307, client_parameter = 'userIdentifier' WHERE id = 1409;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2309 WHERE id = 1432;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2317 WHERE id = 1442;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2349 WHERE id = 1471;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2350 WHERE id = 1472;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2308 WHERE id = 1494;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1627;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1628;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'ICCID' WHERE id = 1634;
UPDATE inherit_api_input_parameters SET client_parameter = 'ICCID' WHERE id = 1635;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1641;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1642;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'ICCID' WHERE id = 1669;
UPDATE inherit_api_input_parameters SET client_parameter = 'ICCID' WHERE id = 1670;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1676;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1677;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1683;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1684;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'ICCID' WHERE id = 1767;
UPDATE inherit_api_input_parameters SET client_parameter = 'ICCID' WHERE id = 1768;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1775;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1797;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1798;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1805;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1817;

--
-- Inserting data into table inherit_api_input_parameters
--
INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(3844, 82, 613, 'string', 0, '<64', '[a-zA-Z ]+', 'Value should be string with no spaces', 'lastName', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3845, 82, 614, 'string', 0, '=2', 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN', 'Value should be iso code of country in two characters in capitals only', 'countryCode', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3846, 82, 615, NULL, 0, NULL, NULL, NULL, 'idValue', NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3847, 82, 616, NULL, 0, NULL, NULL, NULL, NULL, 'true', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3848, 82, 617, 'string', 0, '<35', 'Mr|Mrs|Miss|Ms|Dr|Prof|Sir', 'Value should be one of this (Mr,Mrs,Miss,Ms,Dr,Prof,Sir)', 'title', NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3849, 82, 618, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3850, 82, 619, 'string', 0, '<35', '^(?:[a-zA-Z]+(?:[.''\\-,])?\\s?)+$', 'Value should be string', 'city', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3851, 82, 620, 'string', 0, '=5', 'en-US|en-UK|en-AU|ko-KP|ar-SA|pt-BR|es-MX', 'Value should be one of this ( en-US,en-UK, en-AU, ko-KP, ar-SA, pt-BR, es-MX)', 'preferredLanguageCode', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3852, 82, 621, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'IMSI', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3853, 82, 622, 'string', 0, '=2', 'BR|AR|CO|CL|EC|PE|BO|UY|PY|AU|NZ|KP|SA|AE|KW|QA|BH|IN', 'Value should be iso code of country in two characters in capitals only', 'countryCode', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3854, 82, 624, NULL, 0, NULL, NULL, NULL, NULL, '9eded806eaafd811501a8dcabcceb17a', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3855, 82, 644, 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'ICCID', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3856, 82, 646, NULL, 0, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3857, 82, 647, 'string', 0, '<20', '[a-zA-Z ]+', 'Value should be string ', 'state', NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3858, 82, 648, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'msisdn', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3859, 82, 649, 'string', 0, '<255', '^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$', 'Should be in email format', 'emailAddress', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3860, 82, 650, 'string', 0, '<20', '[a-zA-Z0-9 ]+', 'Internation postal code of subscriber', 'postalCode', NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3861, 82, 652, NULL, 0, NULL, '[a-zA-Z0-9^[^<>''\\";`%]*$]+', 'Value should be alphanumeric', 'address', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3862, 82, 653, 'int', 0, '<17', '([+][0-9]{1,}[\\s])?[0-9]{1,}', 'Value should be numeric', 'mobilePhone', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3863, 82, 654, 'string', 0, '<100', '[a-zA-Z0-9^[^<>''\\";`%]*$]+', 'Value should be alphanumeric', 'addressLine1', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3864, 82, 655, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3865, 82, 657, 'string', 0, '<255', '^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$', 'Should be in email format', 'emailAddress', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3866, 82, 658, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3867, 82, 659, 'string', 0, '<64', '^[a-zA-Z_\\\\-]+$', 'Value should be string withot space', 'firstName', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3868, 82, 660, NULL, 0, NULL, NULL, NULL, NULL, 'true', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3869, 82, 661, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3870, 82, 662, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3871, 82, 664, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3872, 82, 665, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(3873, 82, 791, 'string', 1, '>0', '^[^-\\s][a-zA-Z0-9_|\\s-]+$', 'Value should not start with space', 'requestId', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3874, 82, 792, 'string', 0, '>0', '^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]', 'Value should be in proper url format', 'returnUrl', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3875, 82, 1142, 'string', 1, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3876, 82, 2059, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3877, 82, 2060, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'msisdn', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3884, 82, 2222, 'string', 1, NULL, '[a-zA-Z0-9 ]+', 'Value should not contain special character', '', 'iccid', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3885, 82, 2179, 'string', 1, NULL, '[a-zA-Z0-9 ]+', 'Value should be alphanumeric', NULL, '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3886, 82, 2136, 'string', 1, NULL, NULL, NULL, NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(3887, 82, 2265, 'string', 1, NULL, NULL, NULL, 'iccid', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4215, 81, 764, 'string', 1, NULL, NULL, NULL, 'token', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4216, 81, 765, 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4217, 81, 766, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4218, 81, 767, 'string', 0, NULL, '[0-9]+', 'Value should be numeric', 'msisdn', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4219, 81, 772, 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'targetICCID', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4220, 81, 807, 'string', 0, '>0', '^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]', 'Value should be in proper url format', 'returnUrl', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4221, 81, 1891, 'string', 0, NULL, 'Bootstrap|BOOTSTRAP|BootStrap|bootstrap|LOCAL|Local|local', 'Value should be one of this (Bootstrap,BOOTSTRAP,BootStrap,LOCAL,Local)', 'targetProfile', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4222, 81, 4394, 'string', 1, NULL, NULL, NULL, NULL, 'GM_Goup', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4223, 81, 774, 'string', 1, '>0', '^[^-\\s][a-zA-Z0-9_|\\s-]+$', 'Value should not start with space', 'requestId', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4225, 81, 4397, 'string', 1, NULL, NULL, NULL, '', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4226, 81, 4398, 'string', 1, NULL, NULL, NULL, NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4227, 81, 4399, 'string', 1, NULL, NULL, '', '', 'iccid', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4230, 83, 1563, 'string', 0, NULL, 'FL|PN|DD', 'Value should be in FL,PN,DD', 'accountType', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4231, 83, 1564, 'string', 0, '<21', NULL, NULL, 'iccid', NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(4232, 83, 1565, 'string', 1, NULL, NULL, NULL, 'token', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4233, 83, 1566, 'string', 0, '>0', '^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]', 'Value should be in proper url format', 'returnUrl', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4234, 83, 1567, 'string', 1, '>0', '^[^-\\s][a-zA-Z0-9_|\\s-]+$', 'Value should not start with space', 'requestId', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4241, 83, 4401, 'string', 1, NULL, NULL, NULL, NULL, 'GM_Goup', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4242, 83, 1562, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(4243, 83, 4403, 'string', 1, NULL, NULL, NULL, '', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4244, 83, 4404, 'string', 1, NULL, NULL, NULL, NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4245, 83, 4405, 'string', 1, NULL, NULL, '', '', 'iccid', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4575, 81, 4412, 'string', 1, NULL, NULL, '', 'iccid', '', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4578, 83, 4410, 'string', 1, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(4609, 82, 2308, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4622, 81, 2400, 'string', 1, NULL, 'application/json', 'application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4641, 83, 4411, 'string', 1, '<21', 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4642, 127, 2222, 'string', 1, NULL, NULL, NULL, NULL, 'ICCID', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4643, 147, 2321, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4644, 159, 2327, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4645, 174, 2341, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4646, 148, 2322, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4647, 160, 2328, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4648, 141, 2316, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4649, 167, 2334, 'string', 1, NULL, NULL, NULL, NULL, 'application/json', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4650, 181, 2343, 'string', 1, NULL, NULL, NULL, NULL, 'application/json', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4651, 189, 2348, 'string', 1, NULL, NULL, NULL, NULL, 'application/json', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4652, 161, 2329, 'string', 1, NULL, NULL, NULL, NULL, 'application/json', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL);

--
-- -- Enable foreign keys
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

--
-- Creating constraints for api
--
ALTER TABLE api 
  ADD CONSTRAINT fk_api_method_type_id201808011124 FOREIGN KEY (method_type_id)
    REFERENCES api_method_type(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE api 
  ADD CONSTRAINT fk_api_type_id201808011122 FOREIGN KEY (api_type_id)
    REFERENCES api_type(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE api 
  ADD CONSTRAINT fk_body_parameter_type_id201808011125 FOREIGN KEY (body_parameter_type_id)
    REFERENCES api_body_parameter_type(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE api 
  ADD CONSTRAINT fk_node_id20170512041839 FOREIGN KEY (node_id)
    REFERENCES nodes(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for api_group
--
ALTER TABLE api_group 
  ADD CONSTRAINT FK_api_group_platforms FOREIGN KEY (platform_id)
    REFERENCES platforms(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Creating constraints for node_address
--
ALTER TABLE node_address 
  ADD CONSTRAINT fk_authorization_type_id_201808011225 FOREIGN KEY (authorization_type_id)
    REFERENCES authorization_type(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE node_address 
  ADD CONSTRAINT fk_country_code FOREIGN KEY (country_code)
    REFERENCES country(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE node_address 
  ADD CONSTRAINT fk_operator_id20180720 FOREIGN KEY (operator)
    REFERENCES operator(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE node_address 
  ADD CONSTRAINT fk_platform_id_201808011224 FOREIGN KEY (platform_id)
    REFERENCES platforms(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE node_address 
  ADD CONSTRAINT fk_token_api_method_type201808011227 FOREIGN KEY (token_api_method_type)
    REFERENCES api_method_type(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for api_response_parameters
--
ALTER TABLE api_response_parameters 
  ADD CONSTRAINT fk_api_id_201703142700 FOREIGN KEY (api_id)
    REFERENCES api(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for api_template
--
ALTER TABLE api_template 
  ADD CONSTRAINT api_id20170424060755 FOREIGN KEY (api_id)
    REFERENCES api(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for notification
--
ALTER TABLE notification 
  ADD CONSTRAINT fk_notification_api_id201704070545522 FOREIGN KEY (api_id)
    REFERENCES api(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for token_management
--
ALTER TABLE token_management 
  ADD CONSTRAINT fk_api_id20170503080225 FOREIGN KEY (api_id)
    REFERENCES api(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for inherit_api_response_parameters
--
ALTER TABLE inherit_api_response_parameters 
  ADD CONSTRAINT fk_api_api_group_id201808011151 FOREIGN KEY (api_api_group_id)
    REFERENCES api_api_group(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for inherit_notification
--
ALTER TABLE inherit_notification 
  ADD CONSTRAINT fk_api_api_group_id201808011157 FOREIGN KEY (api_api_group_id)
    REFERENCES api_api_group(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for node_address_auth_parameter
--
ALTER TABLE node_address_auth_parameter 
  ADD CONSTRAINT fk_node_address_id201808011229 FOREIGN KEY (node_address_id)
    REFERENCES node_address(id) ON DELETE NO ACTION ON UPDATE NO ACTION;