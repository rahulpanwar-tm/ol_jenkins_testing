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
-- Dropping constraints from api_response_parameters
--
ALTER TABLE api_response_parameters 
   DROP FOREIGN KEY fk_api_id_201703142700;

--
-- Dropping constraints from inherit_api_input_parameters
--
ALTER TABLE inherit_api_input_parameters 
   DROP FOREIGN KEY fk_api_api_group_id_201808011133;

--
-- Dropping constraints from inherit_api_response_parameters
--
ALTER TABLE inherit_api_response_parameters 
   DROP FOREIGN KEY fk_api_api_group_id201808011151;
ALTER TABLE inherit_api_response_parameters 
   DROP FOREIGN KEY fk_api_response_parameters201808011150;

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
-- Dropping constraints from inherit_notification
--
ALTER TABLE inherit_notification 
   DROP FOREIGN KEY fk_api_api_group_id201808011157;

--
-- Inserting data into table api
--
INSERT INTO api(id, id_id, name, url, api_type_id, method_type_id, is_token_required, time_interval, max_retires, retry_interval, timeout, node_id, body_parameter_type_id, error_code_key, error_code_description) VALUES
(144, 144, 'AddUserIdentifier', 'addUserIdentifier', 1, 3, 1, 3, 2, 1, NULL, 2, 2, 'errorCode', 'errorMessage'),
(145, 145, 'DeleteUserIdentifier', 'deleteUserIdentifier', 1, 3, 1, 3, 2, 1, NULL, 2, 2, 'errorCode', 'errorMessage'),
(146, 146, 'OnbSOwnerFCAddUserIdentifier', 'addUserIdentifier', 1, 3, 1, 3, 2, 1, NULL, 2, 2, 'errorCode', 'errorMessage'),
(147, 147, 'OnbSOwnerFCDeleteUserIdentifier', 'deleteUserIdentifier', 1, 3, 1, 3, 2, 1, NULL, 2, 2, 'errorCode', 'errorMessage');

--
-- Updating data of table api_api_group
--
UPDATE api_api_group SET sequence = 3 WHERE id = 151;
UPDATE api_api_group SET sequence = 3 WHERE id = 153;
UPDATE api_api_group SET sequence = 5 WHERE id = 154;

--
-- Inserting data into table api_api_group
--
INSERT INTO api_api_group(id, api_group_id, api_id, api_template, sequence) VALUES
(196, 75, 144, '{"userIdentifier" : "<userIdentifier>"}', 2),
(197, 58, 145, '', 3),
(198, 76, 146, '{"userIdentifier" : "<userIdentifier>"}', 4),
(199, 76, 147, '', 2);

--
-- Inserting data into table api_input_parameters
--
INSERT INTO api_input_parameters(id, api_id, name, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(4413, 144, 'userIdentifier', 'string', 0, '<41', '[a-zA-Z0-9 ]+', 'Value should not contain special character', 'userIdentifier', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4415, 144, 'Accept', 'string', 0, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4417, 144, 'requestId', 'string', 1, NULL, NULL, 'Value should be string with no spaces', 'requestId', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4418, 144, 'user_key', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4419, 144, 'token', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4420, 144, 'identifier', 'string', 1, NULL, NULL, NULL, NULL, 'ban', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4421, 144, 'identifier_value', 'string', 1, NULL, NULL, NULL, 'ban', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4422, 144, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4423, 144, 'imsi', 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4424, 144, 'iccid', 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4425, 145, 'userIdentifier', 'string', 0, '<41', '[a-zA-Z0-9 ]+', 'Value should not contain special character', 'userIdentifier', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4426, 145, 'Accept', 'string', 0, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4427, 145, 'requestId', 'string', 1, NULL, NULL, 'Value should be string with no spaces', 'requestId', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4428, 145, 'user_key', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4429, 145, 'token', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4430, 145, 'identifier', 'string', 1, NULL, NULL, NULL, NULL, 'ban', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4431, 145, 'identifier_value', 'string', 1, NULL, NULL, NULL, 'ban', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4432, 145, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4433, 145, 'imsi', 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4434, 145, 'iccid', 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4435, 146, 'userIdentifier', 'string', 0, '<41', '[a-zA-Z0-9 ]+', 'Value should not contain special character', 'userIdentifier', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4436, 146, 'Accept', 'string', 0, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4437, 146, 'requestId', 'string', 1, NULL, NULL, 'Value should be string with no spaces', 'requestId', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4438, 146, 'user_key', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4439, 146, 'token', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4440, 146, 'identifier', 'string', 1, NULL, NULL, NULL, NULL, 'ban', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4441, 146, 'identifier_value', 'string', 1, NULL, NULL, NULL, 'ban', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4442, 146, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4443, 146, 'imsi', 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4444, 146, 'iccid', 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4450, 147, 'userIdentifier', 'string', 0, '<41', '[a-zA-Z0-9 ]+', 'Value should not contain special character', 'userIdentifier', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4451, 147, 'Accept', 'string', 0, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4452, 147, 'requestId', 'string', 1, NULL, NULL, 'Value should be string with no spaces', 'requestId', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4453, 147, 'user_key', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4454, 147, 'token', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4455, 147, 'identifier', 'string', 1, NULL, NULL, NULL, NULL, 'ban', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4456, 147, 'identifier_value', 'string', 1, NULL, NULL, NULL, 'ban', NULL, 1, 0, 1, 0, 0, NULL, 0, NULL),
(4457, 147, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4458, 147, 'imsi', 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4459, 147, 'iccid', 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL);

--
-- Updating data of table api_response_parameters
--
UPDATE api_response_parameters SET api_id = 73, name = 'userIdentifier' WHERE id = 25;

--
-- Inserting data into table api_response_parameters
--
INSERT INTO api_response_parameters(id, api_id, name) VALUES
(26, 75, 'userIdentifier');

--
-- Inserting data into table inherit_api_input_parameters
--
INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(4653, 196, 4413, 'string', 0, '<41', '[a-zA-Z0-9 ]+', 'Value should not contain special character', NULL, NULL, 15, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4654, 196, 4415, 'string', 0, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4655, 196, 4417, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'requestId', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4656, 196, 4418, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4657, 196, 4419, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4658, 196, 4420, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, 'imsi', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4659, 196, 4421, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4660, 196, 4422, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4661, 196, 4423, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4662, 196, 4424, 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4673, 197, 4425, 'string', 0, '<41', '[a-zA-Z0-9 ]+', 'Value should not contain special character', 'userIdentifier', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4674, 197, 4426, 'string', 0, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4675, 197, 4427, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'requestId', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4676, 197, 4428, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4677, 197, 4429, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4678, 197, 4430, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, 'imsi', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4679, 197, 4431, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4680, 197, 4432, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4681, 197, 4433, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4682, 197, 4434, 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4683, 198, 4435, 'string', 0, '<41', '[a-zA-Z0-9 ]+', 'Value should not contain special character', NULL, NULL, 16, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4684, 198, 4436, 'string', 0, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4685, 198, 4437, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'requestId', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4686, 198, 4438, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4687, 198, 4439, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4688, 198, 4440, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, 'imsi', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4689, 198, 4441, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4690, 198, 4442, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4691, 198, 4443, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4692, 198, 4444, 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4693, 199, 4450, 'string', 0, '<41', '[a-zA-Z0-9 ]+', 'Value should not contain special character', 'userIdentifier', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4694, 199, 4451, 'string', 0, NULL, 'application/json', 'Value should be only application/json', 'Accept', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4695, 199, 4452, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'requestId', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4696, 199, 4453, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, '8dc8831e-14de-11e9-9b0d-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4697, 199, 4454, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'access_token', '7e96ca42-e0e7-11e9-8bee-fe984cc15272', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4698, 199, 4455, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, 'imsi', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4699, 199, 4456, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4700, 199, 4457, 'string', 1, '>0', NULL, 'Valueshouldbeinproperurlformat', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4701, 199, 4458, 'string', 0, '<21', '[0-9]+', 'Value should be numeric', 'imsi', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4702, 199, 4459, 'string', 0, '<21', '[0-9]{19,20}', 'Value should be 19 digit numeric only', 'iccid', NULL, NULL, 1, 0, 0, 0, 0, NULL, 0, NULL);

--
-- Updating data of table inherit_api_response_parameters
--
UPDATE inherit_api_response_parameters SET api_api_group_id = 150, name = 'userIdentifier' WHERE id = 15;

--
-- Inserting data into table inherit_api_response_parameters
--
INSERT INTO inherit_api_response_parameters(id, api_response_parameters_id, api_api_group_id, name) VALUES
(16, 26, 153, 'userIdentifier');
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
-- Creating constraints for api_response_parameters
--
ALTER TABLE api_response_parameters 
  ADD CONSTRAINT fk_api_id_201703142700 FOREIGN KEY (api_id)
    REFERENCES api(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for inherit_api_input_parameters
--
ALTER TABLE inherit_api_input_parameters 
  ADD CONSTRAINT fk_api_api_group_id_201808011133 FOREIGN KEY (api_api_group_id)
    REFERENCES api_api_group(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Creating constraints for inherit_api_response_parameters
--
ALTER TABLE inherit_api_response_parameters 
  ADD CONSTRAINT fk_api_api_group_id201808011151 FOREIGN KEY (api_api_group_id)
    REFERENCES api_api_group(id) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE inherit_api_response_parameters 
  ADD CONSTRAINT fk_api_response_parameters201808011150 FOREIGN KEY (api_response_parameters_id)
    REFERENCES api_response_parameters(id) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
-- Creating constraints for inherit_notification
--
ALTER TABLE inherit_notification 
  ADD CONSTRAINT fk_api_api_group_id201808011157 FOREIGN KEY (api_api_group_id)
    REFERENCES api_api_group(id) ON DELETE NO ACTION ON UPDATE NO ACTION;