USE gmonstar_orchestration;

-- Updating data of table api
--
UPDATE api SET url = 'rout/GetExpiredUserPurchasesBatchAPI', method_type_id = 3 WHERE id = 52;
UPDATE api SET method_type_id = 3 WHERE id = 53;
UPDATE api SET url = 'rout/userExistenceCheck' WHERE id = 111;

--
-- Updating data of table api_api_group
--
UPDATE api_api_group SET api_template = '{"userIdentifier":"<userIdentifier>","imsi":"<imsi>","iccid":"<iccid>"}' WHERE id = 182;

--
-- Updating data of table api_input_parameters
--
UPDATE api_input_parameters SET client_parameter_value = 'userIdentifier' WHERE id = 2258;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2268;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2269;
UPDATE api_input_parameters SET name = 'identifier_value' WHERE id = 2301;

--
-- Deleting data from table inherit_api_input_parameters
--
DELETE FROM inherit_api_input_parameters WHERE id IN(1496, 1497);

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2096, regex = '^[^-\\s][a-zA-Z0-9_|\\s-]+$' WHERE id = 1118;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2097, regex = '^[^-\\s][a-zA-Z0-9_|\\s-]+$' WHERE id = 1119;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2139 WHERE id = 1181;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2140 WHERE id = 1182;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2182 WHERE id = 1244;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2183 WHERE id = 1245;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2225, client_parameter_value = 'userIdentifier' WHERE id = 1307;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2226, client_parameter_value = 'userIdentifier' WHERE id = 1308;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2268 WHERE id = 1370;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2269 WHERE id = 1371;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2311 WHERE id = 1433;
UPDATE inherit_api_input_parameters SET api_input_parameters_id = 2312 WHERE id = 1434;

--
-- Inserting data into table inherit_api_input_parameters
--
INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(1802, 182, 2129, 'string', 1, NULL, '^[^-\\s][a-zA-Z0-9_|\\s-]+$', 'Value should be string with no spaces', 'requestId', NULL, NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1803, 182, 2215, 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', 'access_token', NULL, NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1804, 182, 2258, 'string', 1, NULL, NULL, '', NULL, 'userIdentifier', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1805, 182, 2301, 'string', 1, NULL, NULL, NULL, 'ban', NULL, NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(1806, 182, 2344, 'string', 1, NULL, NULL, NULL, NULL, 'application/json', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL);


