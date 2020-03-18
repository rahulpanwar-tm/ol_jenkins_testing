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
-- Dropping constraints from api_template
--
ALTER TABLE api_template 
   DROP FOREIGN KEY api_id20170424060755;

--
-- Dropping constraints from authorization_parameters
--
ALTER TABLE authorization_parameters 
   DROP FOREIGN KEY fk_authorization_type_id_201808011132;

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
UPDATE api SET url = 'rout/userRegistration', method_type_id = 3 WHERE id = 47;
UPDATE api SET url = 'rout/addOrder', method_type_id = 3 WHERE id = 48;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 49;
UPDATE api SET url = 'rout/getRatePlans', method_type_id = 1 WHERE id = 53;
UPDATE api SET url = 'rout/addOrder' WHERE id = 57;
UPDATE api SET url = 'rout/cancelOrder', method_type_id = 3 WHERE id = 58;
UPDATE api SET url = 'rout/updateUser', method_type_id = 3 WHERE id = 62;
UPDATE api SET url = 'rout/checkOrder', method_type_id = 3 WHERE id = 63;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 69;
UPDATE api SET url = 'rout/userRegistration', method_type_id = 3 WHERE id = 70;
UPDATE api SET url = 'rout/addOrder', method_type_id = 3 WHERE id = 71;
UPDATE api SET url = 'rout/userRegistration', method_type_id = 3 WHERE id = 73;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 74;
UPDATE api SET url = 'rout/userRegistration', method_type_id = 3 WHERE id = 75;
UPDATE api SET url = 'rout/cancelOrder', method_type_id = 3 WHERE id = 78;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 79;
UPDATE api SET url = 'rout/userRegistration', method_type_id = 3 WHERE id = 80;
UPDATE api SET url = 'rout/addOrder', method_type_id = 3 WHERE id = 81;
UPDATE api SET url = 'rout/cancelOrder', method_type_id = 3 WHERE id = 82;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 83;
UPDATE api SET url = 'rout/cancelOrder', method_type_id = 3 WHERE id = 84;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 85;
UPDATE api SET url = 'rout/userRegistration', method_type_id = 3 WHERE id = 86;
UPDATE api SET url = 'rout/cancelOrder', method_type_id = 3 WHERE id = 88;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 89;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 90;
UPDATE api SET url = 'rout/cancelOrder', method_type_id = 3 WHERE id = 94;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 95;
UPDATE api SET url = 'rout/userRemoval', method_type_id = 3 WHERE id = 102;
UPDATE api SET url = 'rout/userRegistration', method_type_id = 3 WHERE id = 103;
UPDATE api SET url = 'rout/getRatePlans', method_type_id = 1 WHERE id = 110;
UPDATE api SET url = 'rout/updateUser' WHERE id = 128;
UPDATE api SET url = 'rout/updateUser', method_type_id = 3 WHERE id = 142;
UPDATE api SET url = 'rout/addOrder', method_type_id = 3 WHERE id = 143;

--
-- Updating data of table api_api_group
--
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 130;
UPDATE api_api_group SET api_template = '' WHERE id = 132;
UPDATE api_api_group SET api_template = '{"userIdentifier" : "<userIdentifier>", "externalTransactionId" : "<externalTransactionId>", "externalExtraPassId" : "<externalExtraPassId>","activatePurchase" : "<activatePurchase>"}' WHERE id = 136;
UPDATE api_api_group SET api_template = '{ "zip":"<zip>","lastName":"<lastName>","country":"<country>","personalId":"<personalId>","address":"<address>","gender":"<gender>","contactMsisdn":"<contactMsisdn>","streetNo":"","city":"<city>","countryIsoCode":"<country>","timeZone":"<timeZone>","language":"<preferredLanguageCode>","birthDate":"<birthDate>","notificationEmail":"<notificationEmail>","firstName":"<firstName>","marketing":"<marketing>","password":"<password>","userIdentifier":"<userIdentifier>","imei":"<imei>","state":"<state>","device":"<device>"}' WHERE id = 137;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 146;
UPDATE api_api_group SET api_template = '{"lastName":"<lastName>","countryIsoCode":"<country>","imsi":"<imsi>","registrationCountryIsoCode":"<registrationCountryIsoCode>","state":"<state>","password":"<password>","iccid":"<iccid>","msisdn":"<msisdn>","contactMsisdn":"<contactmsisdn>","address":"<address>","birthDate":"<birthDate>","notificationEmail":"<email>","firstName":"<firstName>","city":"<city>","email":"<imsi>@globetouch.com","personalId":"<personalId>","language":"<language>","marketing":"<marketing>"}' WHERE id = 150;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 152;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","includeFreeData":"<includeFreeData>","includeUserPurchases":"<includeUserPurchases>","includeActiveUserPurchases":"<includeActiveUserPurchases>","includeInactiveUserPurchases":"<includeInactiveUserPurchases>","includeExpiredUserPurchases":"<includeExpiredUserPurchases>"}' WHERE id = 156;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 158;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 162;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 164;
UPDATE api_api_group SET api_template = '' WHERE id = 167;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 168;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 170;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 171;
UPDATE api_api_group SET api_template = '{"ids":[<ids>],"userIdentifier":"<userIdentifier>","externalTransactionIds":[<externalTransactionId>]}' WHERE id = 172;
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","strictUserRetrievalCheck":"<strictUserRetrievalCheck>"}' WHERE id = 173;
UPDATE api_api_group SET api_template = '' WHERE id = 181;

--
-- Updating data of table api_input_parameters
--
UPDATE api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 687;
UPDATE api_input_parameters SET is_header = 1, is_body = 1 WHERE id = 849;
UPDATE api_input_parameters SET client_parameter_value = 'ICCID' WHERE id = 2237;
UPDATE api_input_parameters SET client_parameter = 'ICCID' WHERE id = 2280;

--
-- Inserting data into table api_input_parameters
--
INSERT INTO api_input_parameters(id, api_id, name, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(2396, 77, 'includeExpiredUserPurchases', 'string', 0, NULL, NULL, NULL, NULL, 'true', 1, 0, 1, 0, 0, NULL, 0, NULL),
(2397, 49, 'strictUserRetrievalCheck', 'string', 0, NULL, NULL, NULL, NULL, 'true', 1, 0, 1, 0, 0, NULL, 0, NULL);

--
-- Updating data of table api_template
--
UPDATE api_template SET template = '{ "zip":"<zip>","lastName":"<lastName>","country":"<country>","personalId":"<personalId>","address":"<address>","gender":"<gender>","contactMsisdn":"<contactMsisdn>","streetNo":"","city":"<city>","countryIsoCode":"<country>","timeZone":"<timeZone>","language":"<preferredLanguageCode>","birthDate":"<birthDate>","notificationEmail":"<notificationEmail>","firstName":"<firstName>","marketing":"<marketing>","password":"<password>","userIdentifier":"<userIdentifier>","imei":"<imei>","state":"<state>","device":"<device>"}' WHERE id = 62;
UPDATE api_template SET template = '[{ "zip":"<zip>","lastName":"<lastName>","country":"<country>","personalId":"<personalId>","address":"<address>","gender":"<gender>","contactMsisdn":"<contactMsisdn>","streetNo":"","city":"<city>","countryIsoCode":"<country>","timeZone":"<timeZone>","language":"<preferredLanguageCode>","birthDate":"<birthDate>","notificationEmail":"<notificationEmail>","firstName":"<firstName>","marketing":"<marketing>","password":"<password>","userIdentifier":"<userIdentifier>","imei":"<imei>","state":"<state>","device":"<device>"}]' WHERE id = 69;

--
-- Inserting data into table authorization_parameters
--
INSERT INTO authorization_parameters(id, name, authorization_type_id, regex, datatype) VALUES
(12, 'grant_type', 4, NULL, NULL);

--
-- Inserting data into table country
--
INSERT INTO country(id, name, alias, country_code) VALUES
(248, 'Sweden', 'Sweden', 'SE');

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 59;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 62;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 122;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1098;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1099;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2389, client_parameter_value = 'application/json' WHERE id = 1112;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 1563;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 1564;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 1565;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 1566;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 1567;
UPDATE inherit_api_input_parameters SET is_header = 1 WHERE id = 1568;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'ICCID' WHERE id = 1648;
UPDATE inherit_api_input_parameters SET client_parameter = 'ICCID' WHERE id = 1649;
UPDATE inherit_api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 1789;
UPDATE inherit_api_input_parameters SET client_parameter = 'userIdentifier' WHERE id = 1790;

--
-- Inserting data into table inherit_api_input_parameters
--
INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(1810, 137, 2132, 'string', 1, NULL, '^[^-s][a-zA-Z0-9_|s-]+$', 'Value should be string with no spaces', 'requestId', NULL, NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1811, 137, 2175, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1812, 137, 2218, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1813, 137, 2261, 'string', 1, NULL, NULL, NULL, NULL, 'userIdentifier', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1817, 137, 2304, 'string', 1, NULL, NULL, NULL, 'ban', NULL, NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1818, 137, 2347, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1819, 150, 2323, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1820, 156, 2396, 'string', 0, NULL, NULL, NULL, NULL, 'true', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1821, 130, 2397, 'string', 0, NULL, NULL, NULL, NULL, 'true', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1823, 136, 2141, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1824, 136, 2184, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1826, 136, 2313, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1827, 136, 2227, 'string', 1, NULL, NULL, NULL, NULL, 'userIdentifier', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1828, 136, 2270, 'string', 1, NULL, NULL, NULL, 'userIdentifier', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(1829, 138, 2142, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1830, 138, 2185, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1831, 138, 2228, 'string', 1, NULL, NULL, NULL, NULL, 'ban', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1832, 138, 2271, 'string', 1, NULL, NULL, NULL, 'ban', NULL, NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1833, 138, 2314, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL);

--
-- Updating data of table node_address
--
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 11;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 17;
UPDATE node_address SET host_address = 'http://192.168.102.38:8585/axis/services/eSIMSubWebService_Provisioning' WHERE id = 28;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 32;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 33;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 34;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 35;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 36;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 37;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 38;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 39;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 40;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 41;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 45;
UPDATE node_address SET country_code = 247 WHERE id = 48;
UPDATE node_address SET token_response = 'access_token', token_template = '{"username":"<userName>","password":"<password>"}', authorization_type_id = 4, token_api_method_type = 3, token_api_url = 'http://i.teramatrix.in:7175/gcapi/auth', protocol = 'http', is_certificate_required = 0 WHERE id = 63;

--
-- Inserting data into table node_address
--
INSERT INTO node_address(id, node_id, host_address, country_code, operator, platform_id, token_response, token_template, authorization_type_id, token_api_method_type, token_api_url, protocol, is_certificate_required, certificate_path) VALUES
(82, 3, 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning', 248, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 2, 'http://192.168.1.241:8280/RouterGOUP/v1/', 248, 1, 1, 'access_token', '{"username":"<userName>","password":"<password>","applicationId":"<applicationId>"}', 4, 3, 'http://i.teramatrix.in:7878/OAuthEngine_v3/oauthtoken', 'http', 0, NULL),
(84, 3, 'http://10.241.8.76:8070/axis/services/eSIMSubWebService_Provisioning', 247, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Deleting data from table node_address_auth_parameter
--
DELETE FROM node_address_auth_parameter WHERE id IN(0, 1, 4, 5, 6, 
7, 8, 9, 10, 11, 
12, 25, 27, 32, 35, 
36, 37, 38, 39, 40, 
41, 42, 43, 56, 58, 
60, 61, 62, 63, 64, 
67, 68, 69, 70, 71, 
72, 73, 74, 75, 76);

--
-- Updating data of table node_address_auth_parameter
--
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 15;
UPDATE node_address_auth_parameter SET is_query = NULL, is_body = 1 WHERE id = 46;

--
-- Inserting data into table node_address_auth_parameter
--
INSERT INTO node_address_auth_parameter(id, node_address_id, auth_parameter_id, is_header, is_query, is_path, value, is_body) VALUES
(98, 7, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(99, 7, 2, NULL, NULL, NULL, 'Admin@123', 1),
(100, 7, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(101, 7, 11, 1, NULL, NULL, 'application/json', NULL),
(106, 32, 11, 1, NULL, NULL, 'application/json', NULL),
(114, 20, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(115, 20, 2, NULL, NULL, NULL, 'Admin@123', 1),
(116, 20, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(117, 20, 11, 1, NULL, NULL, 'application/json', NULL),
(121, 21, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(122, 21, 2, NULL, NULL, NULL, 'Admin@123', 1),
(123, 21, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(124, 21, 11, 1, NULL, NULL, 'application/json', NULL),
(128, 22, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(129, 22, 2, NULL, NULL, NULL, 'Admin@123', 1),
(130, 22, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(131, 22, 11, 1, NULL, NULL, 'application/json', NULL),
(135, 23, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(136, 23, 2, NULL, NULL, NULL, 'Admin@123', 1),
(137, 23, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(138, 23, 11, 1, NULL, NULL, 'application/json', NULL),
(142, 24, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(143, 24, 2, NULL, NULL, NULL, 'Admin@123', 1),
(144, 24, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(145, 24, 11, 1, NULL, NULL, 'application/json', NULL),
(149, 25, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(150, 25, 2, NULL, NULL, NULL, 'Admin@123', 1),
(151, 25, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(152, 25, 11, 1, NULL, NULL, 'application/json', NULL),
(156, 26, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(157, 26, 2, NULL, NULL, NULL, 'Admin@123', 1),
(158, 26, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(159, 26, 11, 1, NULL, NULL, 'application/json', NULL),
(163, 27, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(164, 27, 2, NULL, NULL, NULL, 'Admin@123', 1),
(165, 27, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(166, 27, 11, 1, NULL, NULL, 'application/json', NULL),
(170, 29, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(171, 29, 2, NULL, NULL, NULL, 'Admin@123', 1),
(172, 29, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(173, 29, 11, 1, NULL, NULL, 'application/json', NULL),
(177, 44, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(178, 44, 2, NULL, NULL, NULL, 'Admin@123', 1),
(179, 44, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(180, 44, 11, 1, NULL, NULL, 'application/json', NULL),
(184, 62, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(185, 62, 2, NULL, NULL, NULL, 'Admin@123', 1),
(186, 62, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(187, 62, 11, 1, NULL, NULL, 'application/json', NULL),
(191, 81, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(192, 81, 2, NULL, NULL, NULL, 'Admin@123', 1),
(193, 81, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(194, 81, 11, 1, NULL, NULL, 'application/json', NULL),
(198, 83, 1, NULL, NULL, NULL, 'GM_Goup', 1),
(199, 83, 2, NULL, NULL, NULL, 'Admin@123', 1),
(200, 83, 10, NULL, NULL, NULL, '38bf4934-248a-11e9-b3a0-fe984cc15272', 1),
(201, 83, 11, 1, NULL, NULL, 'application/json', NULL);
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
-- Creating constraints for api_template
--
ALTER TABLE api_template 
  ADD CONSTRAINT api_id20170424060755 FOREIGN KEY (api_id)
    REFERENCES api(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for authorization_parameters
--
ALTER TABLE authorization_parameters 
  ADD CONSTRAINT fk_authorization_type_id_201808011132 FOREIGN KEY (authorization_type_id)
    REFERENCES authorization_type(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

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