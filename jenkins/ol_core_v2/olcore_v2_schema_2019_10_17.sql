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
-- Updating data of table api
--
UPDATE api SET method_type_id = 3 WHERE id = 116;
UPDATE api SET method_type_id = 3 WHERE id = 117;
UPDATE api SET method_type_id = 3 WHERE id = 118;
UPDATE api SET method_type_id = 3 WHERE id = 119;

--
-- Updating data of table api_api_group
--
UPDATE api_api_group SET api_template = '{"lastName":"<lastName>","countryIsoCode":"<country>","imsi":"<imsi>","registrationCountryIsoCode":"<registrationCountryIsoCode>","state":"<state>","password":"<password>","iccid":"<iccid>","msisdn":"<msisdn>","contactMsisdn":"<contactmsisdn>","address":"<address>","birthDate":"<birthDate>","notificationEmail":"<email>","firstName":"<firstName>","city":"<city>","email":"<imsi>@globetouch.com","personalId":"<personalId>","language":"<language>","marketing":"<marketing>"}' WHERE id = 127;
UPDATE api_api_group SET api_template = '{"userIdentifier" : "<userIdentifier>", "externalTransactionId" : "<externalTransactionId>", "externalExtraPassId" : "<externalExtraPassId>", "activatePurchase" : "<activatePurchase>"}' WHERE id = 128;
UPDATE api_api_group SET api_template = '{"userPurchaseId":[<userPurchaseId>],"userIdentifier":"<userIdentifier>"}' WHERE id = 138;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","imsi":"<imsi>","iccid":"<ICCID>"}' WHERE id = 140;
UPDATE api_api_group SET api_template = '{ "zip":"<zip>","lastName":"<lastName>","country":"<country>","personalId":"<personalId>","address":"<address>","gender":"<gender>","contactMsisdn":"<contactMsisdn>","streetNo":"","city":"<city>","countryIsoCode":"<country>","timeZone":"<timeZone>","language":"<preferredLanguageCode>","birthDate":"<birthDate>","notificationEmail":"<notificationEmail>","firstName":"<firstName>","marketing":"<marketing>","password":"<password>","userIdentifier":"<userIdentifier>","imei":"<imei>","state":"<state>","device":"<device>"}' WHERE id = 141;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","imsi":"<imsi>","iccid":"<iccid>"}' WHERE id = 142;
UPDATE api_api_group SET api_template = '{"iccid":"<iccid>","userPurchaseId":<userPurchaseId>,"userIdentifier":"<userIdentifier>","imsi":"<imsi>","externalTransactionId":"<externalTransactionId>"}' WHERE id = 143;
UPDATE api_api_group SET api_template = '{"lastName":"<lastName>","countryIsoCode":"<country>","imsi":"<imsi>","registrationCountryIsoCode":"<registrationCountryIsoCode>","state":"<state>","password":"<password>","iccid":"<iccid>","msisdn":"<msisdn>","contactmsisdn":"<contactmsisdn>","address":"<address>","birthDate":"<birthDate>","notificationEmail":"<email>","firstName":"<firstName>","city":"<city>","email":"<imsi>@globetouch.com","streetNo": "","personalId":"<personalId>","language":"<language>","marketing":"<marketing>"}' WHERE id = 147;
UPDATE api_api_group SET api_template = '{"userIdentifier" : "<userIdentifier>", "externalTransactionId" : "<externalTransactionId>", "externalExtraPassId" : "<externalExtraPassId>", "activatePurchase" : "<activatePurchase>"}' WHERE id = 148;
UPDATE api_api_group SET api_template = '{"lastName":"<lastName>","countryIsoCode":"<country>","imsi":"<imsi>","registrationCountryIsoCode":"<registrationCountryIsoCode>","state":"<state>","password":"<password>","iccid":"<iccid>","msisdn":"<msisdn>","contactMsisdn":"<contactmsisdn>","address":"<address>","birthDate":"<birthDate>","notificationEmail":"<email>","firstName":"<firstName>","city":"<city>","email":"<imsi>@globetouch.com","personalId":"<personalId>","language":"<language>","marketing":"<marketing>"}' WHERE id = 153;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","imsi":"<imsi>","iccid":"<iccid>"}' WHERE id = 155;
UPDATE api_api_group SET api_template = '{"userPurchaseId":[<ids>],"userIdentifier":"<userIdentifier>"}' WHERE id = 157;
UPDATE api_api_group SET api_template = '{"lastName":"<lastName>","countryIsoCode":"<country>","imsi":"<imsi>","registrationCountryIsoCode":"<registrationCountryIsoCode>","state":"<state>","password":"<password>","iccid":"<iccid>","msisdn":"<msisdn>","contactMsisdn":"<contactmsisdn>","address":"<address>","birthDate":"<birthDate>","notificationEmail":"<email>","firstName":"<firstName>","city":"<city>","email":"<imsi>@globetouch.com","personalId":"<personalId>","language":"<language>","marketing":"<marketing>"}' WHERE id = 159;
UPDATE api_api_group SET api_template = '{"userIdentifier" : "<userIdentifier>", "externalTransactionId" : "<externalTransactionId>", "externalExtraPassId" : "<externalExtraPassId>", "activatePurchase" : "<activatePurchase>"}' WHERE id = 160;
UPDATE api_api_group SET api_template = '{"userPurchaseId":[<ids>],"userIdentifier":"<userIdentifier>"}' WHERE id = 161;
UPDATE api_api_group SET api_template = '{"userPurchaseId":[<ids>],"userIdentifier":"<userIdentifier>"}' WHERE id = 163;
UPDATE api_api_group SET api_template = '{"lastName":"<lastName>","countryIsoCode":"<country>","imsi":"<imsi>","registrationCountryIsoCode":"<registrationCountryIsoCode>","state":"<state>","password":"<password>","iccid":"<iccid>","msisdn":"<msisdn>","contactMsisdn":"<contactmsisdn>","address":"<address>","birthDate":"<birthDate>","notificationEmail":"<email>","firstName":"<firstName>","city":"<city>","email":"<imsi>@globetouch.com","personalId":"<personalId>","language":"<language>","marketing":"<marketing>"}' WHERE id = 165;
UPDATE api_api_group SET api_template = '{"userPurchaseId":[<ids>],"userIdentifier":"<userIdentifier>"}' WHERE id = 169;
UPDATE api_api_group SET api_template = '{"userPurchaseId":[<ids>],"userIdentifier":"<userIdentifier>"}' WHERE id = 172;
UPDATE api_api_group SET api_template = '{"lastName":"<lastName>","countryIsoCode":"<country>","imsi":"<imsi>","registrationCountryIsoCode":"<registrationCountryIsoCode>","state":"<state>","password":"<password>","iccid":"<iccid>","msisdn":"<msisdn>","contactMsisdn":"<contactmsisdn>","address":"<address>","birthDate":"<birthDate>","notificationEmail":"<email>","firstName":"<firstName>","city":"<city>","email":"<imsi>@globetouch.com","personalId":"<personalId>","language":"<language>","marketing":"<marketing>"}' WHERE id = 174;
UPDATE api_api_group SET api_template = '{ "zip":"<zip>","lastName":"<lastName>","country":"<country>","personalId":"<personalId>","address":"<address>","gender":"<gender>","contactMsisdn":"<contactMsisdn>","streetNo":"","city":"<city>","countryIsoCode":"<country>","timeZone":"<timeZone>","language":"<preferredLanguageCode>","birthDate":"<birthDate>","notificationEmail":"<notificationEmail>","firstName":"<firstName>","marketing":"<marketing>","password":"<password>","userIdentifier":"<userIdentifier>","imei":"<imei>","state":"<state>","device":"<device>"}' WHERE id = 194;
UPDATE api_api_group SET api_template = '{"userIdentifier" : "<userIdentifier>", "externalTransactionId" : "<externalTransactionId>", "externalExtraPassId" : "<externalExtraPassId>","activatePurchase" : "<activatePurchase>"}' WHERE id = 195;

--
-- Updating data of table api_input_parameters
--
UPDATE api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 2238;
UPDATE api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 2245;
UPDATE api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 2281;
UPDATE api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 2288;

--
-- Inserting data into table api_input_parameters
--
INSERT INTO api_input_parameters(id, api_id, name, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(2398, 102, 'strictUserRetrievalCheck', 'string', 0, NULL, NULL, NULL, NULL, 'true', 0, 0, 0, 0, 0, NULL, 0, NULL),
(2400, 54, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(2401, 118, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL);

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 206;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 212;
UPDATE inherit_api_input_parameters SET client_parameter = 'orderId' WHERE id = 216;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 557;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 564;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 577;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 742;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 769;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1106;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1107;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1110;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1111;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2391, client_parameter_value = 'application/json' WHERE id = 1114;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2392, client_parameter_value = 'application/json' WHERE id = 1115;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1620;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1621;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1655;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1656;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'IMSI' WHERE id = 1662;
UPDATE inherit_api_input_parameters SET client_parameter = 'IMSI' WHERE id = 1663;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1690;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1691;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1697;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1698;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1704;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1705;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'IMSI' WHERE id = 1711;
UPDATE inherit_api_input_parameters SET client_parameter = 'IMSI' WHERE id = 1712;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1726;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1727;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1732;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1733;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1739;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1740;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1747;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1748;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1753;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1754;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1760;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1761;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1831;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1832;

--
-- Inserting data into table inherit_api_input_parameters
--
INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(1834, 163, 2331, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1835, 164, 2332, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1836, 165, 2333, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1837, 152, 2324, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1838, 153, 2325, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1839, 169, 2335, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1840, 170, 2336, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1841, 168, 2337, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1842, 171, 2340, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1843, 171, 2398, 'string', 0, NULL, NULL, NULL, NULL, 'true', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(1844, 172, 2338, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1845, 146, 2320, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1846, 162, 2330, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1847, 173, 2339, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1848, 133, 2400, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1849, 154, 2401, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL);

--
-- Updating data of table node_address
--
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 11;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 17;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 19;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 32;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 33;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 34;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 35;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 36;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 37;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 38;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 39;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 40;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 41;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 45;
UPDATE node_address SET host_address = 'http://10.222.72.27:7879', token_response = 'token' WHERE id = 63;
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
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 82;
UPDATE node_address SET host_address = 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning' WHERE id = 84;

--
-- Inserting data into table node_address
--
INSERT INTO node_address(id, node_id, host_address, country_code, operator, platform_id, token_response, token_template, authorization_type_id, token_api_method_type, token_api_url, protocol, is_certificate_required, certificate_path) VALUES
(86, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 10, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(87, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 17, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(88, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 26, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(89, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 43, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(90, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 47, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(91, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 63, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(92, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 70, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(93, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 117, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(94, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 171, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(95, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 172, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(96, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 178, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(97, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 233, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(98, 13, 'http://10.222.72.27:7879', 10, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(100, 13, 'http://10.222.72.27:7879', 26, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(101, 13, 'http://10.222.72.27:7879', 43, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(102, 13, 'http://10.222.72.27:7879', 47, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(103, 13, 'http://10.222.72.27:7879', 70, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(104, 13, 'http://10.222.72.27:7879', 117, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(105, 13, 'http://10.222.72.27:7879', 171, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(106, 13, 'http://10.222.72.27:7879', 172, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(107, 13, 'http://10.222.72.27:7879', 178, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(108, 13, 'http://10.222.72.27:7879', 233, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(109, 13, 'http://10.222.72.27:7879', 17, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL),
(110, 13, 'http://10.222.72.27:7879', 63, 1, 1, 'token', '{"username":"<userName>","password":"<password>"}', 4, 3, 'http://i.teramatrix.in:7175/gcapi/auth', 'http', 0, NULL);

--
-- Updating data of table node_address_auth_parameter
--
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 2;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 3;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 16;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 17;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 18;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 19;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 20;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 21;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 22;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 23;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 24;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 26;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 28;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 33;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 34;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 47;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 48;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 49;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 50;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 51;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 52;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 53;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 54;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 55;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 57;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 59;

--
-- Inserting data into table node_address_auth_parameter
--
INSERT INTO node_address_auth_parameter(id, node_address_id, auth_parameter_id, is_header, is_query, is_path, value, is_body) VALUES
(202, 98, 11, 1, NULL, NULL, 'application/json', NULL),
(203, 33, 11, 1, NULL, NULL, 'application/json', NULL),
(204, 109, 11, 1, NULL, NULL, 'application/json', NULL),
(205, 100, 11, 1, NULL, NULL, 'application/json', NULL),
(206, 38, 11, 1, NULL, NULL, 'application/json', NULL),
(207, 101, 11, 1, NULL, NULL, 'application/json', NULL),
(208, 102, 11, 1, NULL, NULL, 'application/json', NULL),
(209, 110, 11, 1, NULL, NULL, 'application/json', NULL),
(210, 103, 11, 1, NULL, NULL, 'application/json', NULL),
(211, 36, 11, 1, NULL, NULL, 'application/json', NULL),
(212, 104, 11, 1, NULL, NULL, 'application/json', NULL),
(213, 17, 11, 1, NULL, NULL, 'application/json', NULL),
(214, 39, 11, 1, NULL, NULL, 'application/json', NULL),
(215, 41, 11, 1, NULL, NULL, 'application/json', NULL),
(216, 105, 11, 1, NULL, NULL, 'application/json', NULL),
(217, 106, 11, 1, NULL, NULL, 'application/json', NULL),
(218, 107, 11, 1, NULL, NULL, 'application/json', NULL),
(219, 37, 11, 1, NULL, NULL, 'application/json', NULL),
(220, 35, 11, 1, NULL, NULL, 'application/json', NULL),
(221, 63, 11, 1, NULL, NULL, 'application/json', NULL),
(222, 108, 11, 1, NULL, NULL, 'application/json', NULL),
(223, 105, 1, NULL, NULL, NULL, 'gtadmin', 1),
(224, 98, 1, NULL, NULL, NULL, 'gtadmin', 1),
(225, 106, 1, NULL, NULL, NULL, 'gtadmin', 1),
(226, 107, 1, NULL, NULL, NULL, 'gtadmin', 1),
(227, 109, 1, NULL, NULL, NULL, 'gtadmin', 1),
(228, 100, 1, NULL, NULL, NULL, 'gtadmin', 1),
(229, 101, 1, NULL, NULL, NULL, 'gtadmin', 1),
(230, 108, 1, NULL, NULL, NULL, 'gtadmin', 1),
(231, 102, 1, NULL, NULL, NULL, 'gtadmin', 1),
(232, 110, 1, NULL, NULL, NULL, 'gtadmin', 1),
(233, 103, 1, NULL, NULL, NULL, 'gtadmin', 1),
(234, 104, 1, NULL, NULL, NULL, 'gtadmin', 1),
(235, 105, 2, NULL, NULL, NULL, 'gtadmin', 1),
(236, 98, 2, NULL, NULL, NULL, 'gtadmin', 1),
(237, 106, 2, NULL, NULL, NULL, 'gtadmin', 1),
(238, 107, 2, NULL, NULL, NULL, 'gtadmin', 1),
(239, 109, 2, NULL, NULL, NULL, 'gtadmin', 1),
(240, 100, 2, NULL, NULL, NULL, 'gtadmin', 1),
(241, 101, 2, NULL, NULL, NULL, 'gtadmin', 1),
(242, 108, 2, NULL, NULL, NULL, 'gtadmin', 1),
(243, 102, 2, NULL, NULL, NULL, 'gtadmin', 1),
(244, 110, 2, NULL, NULL, NULL, 'gtadmin', 1),
(245, 103, 2, NULL, NULL, NULL, 'gtadmin', 1),
(246, 104, 2, NULL, NULL, NULL, 'gtadmin', 1),
(247, 86, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(248, 86, 2, NULL, NULL, NULL, 'Admin@123', 1),
(249, 86, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(250, 86, 11, 1, NULL, NULL, 'application/json', NULL),
(254, 87, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(255, 87, 2, NULL, NULL, NULL, 'Admin@123', 1),
(256, 87, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(257, 87, 11, 1, NULL, NULL, 'application/json', NULL),
(261, 88, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(262, 88, 2, NULL, NULL, NULL, 'Admin@123', 1),
(263, 88, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(264, 88, 11, 1, NULL, NULL, 'application/json', NULL),
(268, 89, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(269, 89, 2, NULL, NULL, NULL, 'Admin@123', 1),
(270, 89, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(271, 89, 11, 1, NULL, NULL, 'application/json', NULL),
(275, 90, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(276, 90, 2, NULL, NULL, NULL, 'Admin@123', 1),
(277, 90, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(278, 90, 11, 1, NULL, NULL, 'application/json', NULL),
(282, 91, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(283, 91, 2, NULL, NULL, NULL, 'Admin@123', 1),
(284, 91, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(285, 91, 11, 1, NULL, NULL, 'application/json', NULL),
(289, 92, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(290, 92, 2, NULL, NULL, NULL, 'Admin@123', 1),
(291, 92, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(292, 92, 11, 1, NULL, NULL, 'application/json', NULL),
(296, 93, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(297, 93, 2, NULL, NULL, NULL, 'Admin@123', 1),
(298, 93, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(299, 93, 11, 1, NULL, NULL, 'application/json', NULL),
(303, 94, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(304, 94, 2, NULL, NULL, NULL, 'Admin@123', 1),
(305, 94, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(306, 94, 11, 1, NULL, NULL, 'application/json', NULL),
(310, 95, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(311, 95, 2, NULL, NULL, NULL, 'Admin@123', 1),
(312, 95, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(313, 95, 11, 1, NULL, NULL, 'application/json', NULL),
(317, 96, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(318, 96, 2, NULL, NULL, NULL, 'Admin@123', 1),
(319, 96, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(320, 96, 11, 1, NULL, NULL, 'application/json', NULL),
(324, 97, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(325, 97, 2, NULL, NULL, NULL, 'Admin@123', 1),
(326, 97, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(327, 97, 11, 1, NULL, NULL, 'application/json', NULL);
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