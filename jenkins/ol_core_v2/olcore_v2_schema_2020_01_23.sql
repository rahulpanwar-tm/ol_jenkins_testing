USE gmonstar_orchestration;

update inherit_api_input_parameters set  client_parameter_value ="application/json;charset=UTF-8" 
where client_parameter_value="application/json" and is_header=1;