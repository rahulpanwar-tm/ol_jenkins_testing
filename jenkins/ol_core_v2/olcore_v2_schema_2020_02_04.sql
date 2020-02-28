USE gmonstar_orchestration;

--
-- Updating data of table api
--
UPDATE api SET url = 'rout/getRatePlans', method_type_id = 1 WHERE id = 52;

--
-- Updating data of table api_api_group
--
UPDATE api_api_group SET api_template = '["<userIdentifier>"]' WHERE id = 132;

--
-- Updating data of table inherit_api_input_parameters
--
UPDATE inherit_api_input_parameters SET length = NULL, regex_description = 'Value should be 1' WHERE id = 211;
