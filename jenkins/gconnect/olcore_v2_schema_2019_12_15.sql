USE gmonstar_orchestration;

update inherit_api_input_parameters
set regex_description = 'value should be < 16 characters',
length = '<16'
where client_parameter = 'mobilePhone';

INSERT INTO `api_input_parameters` (`id`, `api_id`, `name`, `data_type`, `is_header`, `length`, `regex`, `regex_description`, `client_parameter`, `is_required`, `is_query`, `is_body`, `is_path`, `is_prefix`, `is_suffix`) VALUES (NULL, '64', 'addressLine2', 'string', '0', '<100', '[a-zA-Z0-9^[^<>\'\\\";`%]*$]+', 'Value should be alphanumeric', 'addressLine2', '0', '0', '0', '0', '0', '0');

INSERT INTO `inherit_api_input_parameters` (`id`, `api_api_group_id`, `api_input_parameters_id`, `data_type`, `is_header`, `length`, `regex`, `regex_description`, `client_parameter`, `is_required`, `is_query`, `is_body`, `is_path`, `is_prefix`, `is_suffix`) VALUES (NULL, '144', '4460', 'string', '0', '<101', '[a-zA-Z0-9^[^<>\'\\\";`%]*$]+', 'value should be <= 100 alphanumeric characters', 'addressLine2', '1', '0', '0', '0', '0', '0');

update inherit_api_input_parameters
set regex_description = 'value should be < 101 alphanumeric characters'
where client_parameter = 'addressLine1';

update inherit_api_input_parameters
set regex_description = 'value should be < 101 alphanumeric characters'
where client_parameter = 'addressLine2';


update inherit_api_input_parameters
set regex_description = 'value should be < 21 numeric characters'
where client_parameter = 'IMSI' and regex_description is  not null and regex_description!='';

update inherit_api_input_parameters
set regex_description = 'value should be < 21 numeric characters'
where client_parameter = 'MSISDN' and regex_description is  not null and regex_description!='';

update inherit_api_input_parameters
set regex_description = 'value should be < 65 characters string without spaces'
where client_parameter = 'firstname' and regex_description is  not null and regex_description!='';

update inherit_api_input_parameters
set regex_description = 'value should be < 65 characters string without spaces'
where client_parameter = 'lastname' and regex_description is  not null and regex_description!='';

update inherit_api_input_parameters
set regex_description = 'value should be < 36 characters'
where client_parameter = 'city' and regex_description is  not null and regex_description!='';

update inherit_api_input_parameters
set regex_description = 'value should be < 21 characters string'
where client_parameter = 'state' and regex_description is  not null and regex_description!='';

update inherit_api_input_parameters
set regex_description = 'value should be < 21 characters string',
length = '<21',
regex = '[0-9 ]+'
where client_parameter = 'postalCode' and regex_description is  not null and regex_description!='';