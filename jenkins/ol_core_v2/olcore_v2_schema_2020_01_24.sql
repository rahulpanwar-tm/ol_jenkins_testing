USE gmonstar_orchestration;

-- Inserting data into table api_input_parameters

INSERT INTO api_input_parameters(id, api_id, name, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(4531, 57, 'purchaseAmount', 'string', 0, '', '[0-9]+', 'Value should be numeric', 'purchaseAmount', NULL, 0, 0, 0, 0, 0, NULL, 0, NULL),
(4532, 113, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4533, 117, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4534, 119, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4535, 120, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4536, 125, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4537, 126, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4538, 127, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4539, 138, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4540, 139, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4541, 140, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL),
(4542, 141, 'Content-Type', 'string', 1, NULL, '[a-zA-Z ]+', 'Value should be string with no spaces', NULL, 'application/json', 1, 0, 1, 0, 0, NULL, 0, NULL);


-- Inserting data into table inherit_api_input_parameters

INSERT INTO inherit_api_input_parameters(id, api_api_group_id, api_input_parameters_id, data_type, is_header, length, regex, regex_description, client_parameter, client_parameter_value, inherit_api_response_parameter_id, is_required, is_query, is_body, is_path, is_prefix, prefix_value, is_suffix, suffix_value) VALUES
(4984, 136, 4531, 'string', 0, '', '[0-9]+', 'Value should be numeric', 'purchaseAmount', NULL, NULL, 0, 0, 1, 0, 0, NULL, 0, NULL),
(4986, 151, 4533, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4985, 178, 4532, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4987, 166, 4534, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4988, 184, 4535, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4989, 186, 4536, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4990, 187, 4537, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4991, 188, 4538, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4992, 190, 4539, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4993, 191, 4540, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4994, 192, 4541, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL),
(4995, 193, 4542, 'string', 1, NULL, 'application/json', 'Value should be only application/json', NULL, 'application/json', NULL, 1, 0, 0, 0, 0, NULL, 0, NULL);

 update inherit_api_input_parameters set regex = null,client_parameter_value = 'application/json;charset=UTF-8'
 where id in (4986,4985,4987,4988,4989,4990,4991,4992,4993,4994,4995);

DELETE FROM api_input_parameters where id = 4512;
INSERT INTO api_input_parameters (`id`, `api_id`, `name`, `data_type`, `is_header`, `regex`, `regex_description`, `client_parameter_value`, `is_required`, `is_query`, `is_body`, `is_path`, `is_prefix`, `is_suffix`) VALUES ('4512', '117', 'Content-Type', 'string', '1', '[a-zA-Z ]+', 'Value should be string with no spaces', 'application/json', '1', '0', '1', '0', '0', '0');

 
DELETE FROM inherit_api_input_parameters where id = 4967;
INSERT INTO inherit_api_input_parameters (`id`, `api_api_group_id`, `api_input_parameters_id`, `data_type`, `is_header`, `regex`, `regex_description`, `client_parameter_value`, `is_required`, `is_query`, `is_body`, `is_path`, `is_prefix`, `is_suffix`) VALUES ('4967', '151', '4512', 'string', '1', '[a-zA-Z ]+', 'Value should be string with no spaces', 'application/json', '1', '0', '0', '0', '0', '0');