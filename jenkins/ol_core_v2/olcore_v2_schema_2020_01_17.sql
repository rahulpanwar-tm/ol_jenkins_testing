USE gmonstar_orchestration;

-- setting the regex to null for email,postalCode and emailAddress
update inherit_api_input_parameters set regex = null where 
api_input_parameters_id IN (
select id from api_input_parameters where name in ('email','postalCode','emailAddress') or client_parameter_value IN ('email','postalCode','emailAddress') or client_parameter IN ('email','postalCode','emailAddress'));

-- setting the regex to arabic
update inherit_api_input_parameters set regex =  'Mr|Mrs|Miss|Ms|Dr|Prof|Sir|السيد | السيدة | ملكة جمال | السيدة | الدكتور | البروفيسور | السير' where api_input_parameters_id IN (SELECT id FROM api_input_parameters where name in ('title') or client_parameter IN ('title') or client_parameter_value IN ('title'));


-- setting the regex to null
update inherit_api_input_parameters
set regex = null where (api_input_parameters_id IN (SELECT id FROM api_input_parameters where name in ('firstName','lastName','state','addressLine1','addressLine2','city','emailAddress') and is_required=0)
or  api_input_parameters_id IN (SELECT id FROM api_input_parameters where client_parameter in ('firstName','lastName','state','addressLine1','addressLine2','city','emailAddress') and is_required=0)
or api_input_parameters_id IN (SELECT id FROM api_input_parameters where client_parameter in ('firstName','lastName','state','addressLine1','addressLine2','city','emailAddress') and is_required=0));






