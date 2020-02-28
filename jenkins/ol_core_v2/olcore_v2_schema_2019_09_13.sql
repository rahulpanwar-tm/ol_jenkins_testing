USE gmonstar_orchestration;


-- Updating data of table node_address

UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 7;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 20;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 21;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 22;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 23;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 24;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 25;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 26;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 27;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 29;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 44;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 62;
UPDATE node_address SET host_address = 'http://192.168.1.87:8280/RouterGOUP/v1/' WHERE id = 81;

delete  from inherit_api_input_parameters 
-- inner join api_input_parameters on api_input_parameters_id = api_input_parameters.id
where api_api_group_id=182 and api_input_parameters_id not  IN (
select id from api_input_parameters where api_id=111);