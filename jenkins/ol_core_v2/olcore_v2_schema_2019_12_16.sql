USE gmonstar_orchestration;

-- update for addressline2 regex message
update inherit_api_input_parameters
set regex_description = 'value should be <= 100 alphanumeric characters',
length = '<101'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'addressline2');
