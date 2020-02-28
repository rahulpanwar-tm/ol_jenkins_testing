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
-- Dropping constraints from node_address_auth_parameter
--
ALTER TABLE node_address_auth_parameter 
   DROP FOREIGN KEY fk_auth_parameter_id_201808011230;
ALTER TABLE node_address_auth_parameter 
   DROP FOREIGN KEY fk_node_address_id201808011229;

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
-- Updating data of table api
--
UPDATE api SET url = 'rout/userExistenceCheck', method_type_id = 3 WHERE id = 68;
UPDATE api SET url = 'rout/getRatePlans', method_type_id = 1 WHERE id = 87;

--
-- Updating data of table api_input_parameters
--
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2076;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2084;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2088;
UPDATE api_input_parameters SET client_parameter_value = 'ban' WHERE id = 2258;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2265;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2266;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2267;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2270;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2271;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2273;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2274;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2275;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2276;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2277;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2278;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2279;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2280;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2281;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2282;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2284;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2285;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2286;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2287;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2288;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2289;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2290;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2291;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2292;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2293;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2294;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2295;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2296;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2297;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2298;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2300;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2302;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2303;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2304;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2305;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2306;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2307;

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 35;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 45;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 56;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 62;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 84;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 87;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 102;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 122;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 195;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 212;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 252;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 311;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 367;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 379;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 412;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 426;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 429;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 442;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 476;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 487;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 493;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 528;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 540;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 564;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 577;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 612;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 623;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 637;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 649;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 659;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 672;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 706;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 717;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 730;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 742;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 755;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 764;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 776;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 789;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 826;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 840;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 858;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 872;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 892;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 899;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 903;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 924;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 933;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 939;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 950;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 956;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 962;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 967;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1026;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1044;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1116;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1117;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1118;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1119;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1127;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1128;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1129;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1130;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1131;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1132;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1133;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1135;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1136;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1137;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1138;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1139;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1140;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1141;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1142;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1149;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1154;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1156;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1157;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1611;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1614;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1615;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1625;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1718;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier', client_parameter_value = '' WHERE id = 1719;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1723;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1730;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1737;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1744;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1751;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1758;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1780;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1794;
UPDATE inherit_api_input_parameters SET regex = '^[^-s][a-zA-Z0-9_|s-]+$' WHERE id = 1802;

--
-- Inserting data into table inherit_api_input_parameters
--
INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(1807, 142, 2319, 'string', 1, NULL, NULL, NULL, NULL, 'application/json', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL);

--
-- Updating data of table node_address
--
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 11;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 17;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 19;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 28;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 32;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 33;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 34;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 35;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 36;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 37;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 38;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 39;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 40;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 41;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 45;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879' WHERE id = 63;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 64;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 65;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 66;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 67;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 68;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 69;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 70;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 71;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 72;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 73;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 74;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 75;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 76;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 77;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 78;

--
-- Updating data of table node_address_auth_parameter
--
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 1;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 2;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 3;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 4;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 5;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 6;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 7;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 8;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 9;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 10;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 11;
UPDATE node_address_auth_parameter SET is_path = 1 WHERE id = 12;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 13;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 14;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 15;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 16;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 17;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 18;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 19;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 20;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 21;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 22;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 23;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 24;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 25;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 26;
UPDATE node_address_auth_parameter SET value = 'general_motors_m2m_api' WHERE id = 27;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 28;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 32;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 33;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 34;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 35;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 36;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 37;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 38;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 39;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 40;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 41;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 42;
UPDATE node_address_auth_parameter SET is_path = 1 WHERE id = 43;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 44;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 45;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 46;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 47;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 48;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 49;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 50;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 51;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 52;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 53;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 54;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 55;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 56;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 57;
UPDATE node_address_auth_parameter SET value = 'f610a1b6a8e17dd0693d93263cd420fd' WHERE id = 58;
UPDATE node_address_auth_parameter SET value = 'gtadmin' WHERE id = 59;

--
-- Inserting data into table node_address_auth_parameter
--
INSERT INTO node_address_auth_parameter(id, node_address_id, auth_parameter_id, is_header, is_query, is_path, value, is_body) VALUES
(75, 29, 10, NULL, 1, 1, '38bf4934-248a-11e9-b3a0-fe984cc15272', NULL),
(76, 29, 11, 1, NULL, NULL, 'application/json', NULL);
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
-- Creating constraints for node_address_auth_parameter
--
ALTER TABLE node_address_auth_parameter 
  ADD CONSTRAINT fk_auth_parameter_id_201808011230 FOREIGN KEY (auth_parameter_id)
    REFERENCES authorization_parameters(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE node_address_auth_parameter 
  ADD CONSTRAINT fk_node_address_id201808011229 FOREIGN KEY (node_address_id)
    REFERENCES node_address(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

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