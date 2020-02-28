USE gmonstar_orchestration;

-- Updating data of table api
UPDATE api SET method_type_id = 3 WHERE id = 111;


-- Updating data of table api_input_parameters
UPDATE api_input_parameters SET regex_description = 'Value should not start with space' WHERE id = 856;


-- Updating data of table inherit_api_input_parameters
UPDATE inherit_api_input_parameters SET regex = '[a-zA-Z ]+' WHERE id = 1611;
UPDATE inherit_api_input_parameters SET regex = '[a-zA-Z ]+' WHERE id = 1625;