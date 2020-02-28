USE gmonstar_orchestration;

INSERT INTO `node_address` (`id`, `node_id`, `host_address`, `country_code`, `operator`, `platform_id`, `token_response`, `token_template`, `authorization_type_id`, `token_api_method_type`, `token_api_url`, `protocol`, `is_certificate_required`) VALUES (111, '13', 'http://10.223.72.38:8087/', '247', '1', '1', 'token', '{\"username\":\"<userName>\",\"password\":\"<password>\"}', '4', '3', 'http://10.223.72.38:8087/gcapi/auth', 'http', '0');

INSERT INTO `node_address_auth_parameter` (`id`, `node_address_id`, `auth_parameter_id`, `value`, `is_body`) VALUES (328, '111', '1', 'gtadmin', '1');

INSERT INTO `node_address_auth_parameter` (`id`, `node_address_id`, `auth_parameter_id`, `value`, `is_body`) VALUES (329, '111', '2', 'gtadmin', '1');

INSERT INTO`node_address_auth_parameter` (`id`, `node_address_id`, `auth_parameter_id`, `is_header`, `value`) VALUES (330, '111', '11', '1', 'application/json');

update node_address set host_address = 'http://10.223.72.38:8280/RouterGOUP/v1/' where node_id = 2;

update node_address_auth_parameter set value = '9e411ffb-d070-11e9-9dc7-0050568138a0' where auth_parameter_id=10;

INSERT INTO inherit_notification_template (`id`, `template`, `inherit_notification_id`, `response_code`) VALUES (918, '[{\"notification_type\":\"webhook\",\"api_url\":\"<returnUrl>/devices/<targetICCID>/events/propertyChange\",\"method_type\":\"POST\",\"notification_id\":\"@tracking_message_header\",\"table_name\":\"\",\"table_parameter\":\"\",\"header_parameter\":\"{\'Authorization\':\'Basic SmVyc2V5IFRlbGVjb206T25zdGFyITUw\'}\",\"db_driver\":\"com.mysql.jdbc.Driver\",\"api_type\":\"REST\",\"db_url\":\"\",\"end_node_name\":\"true\",\"end_node_ip\":\"127.0.0.1\",\"api_goup_id\":\"@api_group_id\",\"api_id\":\"@api_id\",\"body_parameter\":\"{\'requestId\': \'<requestId>\', \'eventStatus\':{\'code\': \'CMN-INB002\',\'description\': \'description\':\'Downstream System Error: [ErrorCode:606]: [Rate Plan Not configured ]\'},  \'deviceSettings\':[{\'name\': \'newAccountId\',\'value\': \'<newAccountId>\'},{\'name\': \'newRatingProfile\',\'value\': \'<newRatingProfile>\'},{\'name\':\'newCommunicationProfile\',\'value\':\'<newCommunicationProfile>\'}]}\"}]', '9', '606');

UPDATE `inherit_api_input_parameters` SET `length`='<16', `regex_description`='value should be <= 15 characters' WHERE `id`='134';
UPDATE `inherit_api_input_parameters` SET `length`='<16', `regex_description`='value should be <= 15 characters' WHERE `id`='1056';

update inherit_api_input_parameters
set regex_description = 'value should be <= 20 characters'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'IMSI')
and length = '<21' and regex_description is not null;

update inherit_api_input_parameters
set regex_description = 'value should be <= 20 characters'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'MSISDN')
and length = '<21' and regex_description is not null;

update inherit_api_input_parameters
set regex_description = 'value should be <= 64 characters string without spaces',
length = '<65'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'firstname');

update inherit_api_input_parameters
set regex_description = 'value should be <= 64 characters string without spaces',
regex= '^[a-zA-Z_\\-]+$',
length = '<65'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'lastname');

update inherit_api_input_parameters
set regex_description = 'value should be <= 100 alphanumeric characters',
length = '<101'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'addressline1');

update inherit_api_input_parameters
set regex_description = 'value should be <= 35 characters',
length = '<36'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'city');

update inherit_api_input_parameters
set regex_description = 'value should be <= 20 characters string',
length = '<21'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'state');

update inherit_api_input_parameters
set regex_description = 'value should be <= 20 numeric characters',
length = '<21'
where api_input_parameters_id
IN (SELECT id FROM api_input_parameters where  name = 'postalCode');

-- third party database
USE gmonstar_orchestration_thirdparty;
DROP TABLE IF EXISTS owning_carrier_mapping;
CREATE TABLE `owning_carrier_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `input_parameter` varchar(225) DEFAULT NULL,
  `output_parameter` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used for mapping of input and output parameters';


DROP procedure if exists gmonstar_get_output_parameter_by_input_parameter;
DELIMITER $$
CREATE PROCEDURE `gmonstar_get_output_parameter_by_input_parameter`(
IN in_input_parameter varchar(45)
)
    COMMENT 'This procedure is used to get output parameter on the basis of input parameter.'
BEGIN
/*
	--------------------------------------------------------------------------------------------------------------------------------------
	Description	:  This procedure is used to get output parameter on the basis of input parameter.
	Created On	:  10 Sep 2019
	Created By	:  Saurabh kumar
	--------------------------------------------------------------------------------------------------------------------------------------
	Inputs :		IN `in_input_parameter` 
	Output	:		Output parameter details on the basis of input parameter
	---------------------------------------------------------------------------------------------------------------------------------------
*/

	-- check of presence of input paramter
	if(SELECT count(*) FROM owning_carrier_mapping WHERE input_parameter = in_input_parameter) >0  then
		SELECT id,
				input_parameter,
                output_parameter
		FROM `owning_carrier_mapping` WHERE input_parameter = in_input_parameter;
	else
		select 'Input paramter does not exists' as msg,-1 as msg_code;
	end if;
end$$
DELIMITER ;
