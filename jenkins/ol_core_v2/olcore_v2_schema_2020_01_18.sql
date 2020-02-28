USE gmonstar_orchestration;

update inherit_api_input_parameters set regex = null where client_parameter IN ('address');

update inherit_api_input_parameters set regex = null where client_parameter IN ('firstName','lastName','addressLine1','addressLine2','city','state','postalCode','emailAddress');

update inherit_api_input_parameters set regex = 'Mr|Mrs|Miss|Ms|Dr|Prof|Sir|السيد|السيدة|ملكة جمال|السيدة|الدكتور|البروفيسور|السير' where client_parameter = 'title';

update inherit_api_input_parameters set regex = 'Mr|Mrs|Miss|Ms|Dr|Prof|Sir|السيد|السيدة|ملكة جمال|السيدة|الدكتور|البروفيسور|السير' where 
api_input_parameters_id in (select id from api_input_parameters where name = 'title' or client_parameter = 'title');

update inherit_api_input_parameters set is_required = 0
where client_parameter IN ('addressLine1','addressLine2','city','state','postalCode','title');

update inherit_api_input_parameters set is_required = 0
where api_input_parameters_id IN (select id from api_input_parameters where name IN ('addressLine1','addressLine2','city','state','postalCode','title')
or client_parameter IN ('addressLine1','addressLine2','city','state','postalCode','title'));