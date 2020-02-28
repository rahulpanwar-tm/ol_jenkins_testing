

ALTER DATABASE gmonstar_orchestration_thirdparty  CHARACTER SET utf8;

USE gmonstar_orchestration_thirdparty;

ALTER TABLE esim_notification_url DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

ALTER TABLE esim_notification_url MODIFY data TEXT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
 

-- Dumping structure for procedure upgrade_gmonstar_third_party.gmonstar_esim_notification_url_with_onboarding_insert
DROP PROCEDURE IF EXISTS `gmonstar_esim_notification_url_with_onboarding_insert`;
DELIMITER //
CREATE PROCEDURE `gmonstar_esim_notification_url_with_onboarding_insert`(
	IN `in_request_id` varchar(56) ,
	IN `in_return_url` varchar(1024) ,
	IN `in_host_address` varchar(512) ,
	IN `in_data` TEXT

)
    COMMENT ' This procedure is used to insert the details of esim notification url with onboarding api''s details .'
BEGIN




	
	INSERT INTO esim_notification_url
	(
	request_id,
	return_url,
    host_address,
    data
	)
	VALUES
	(
	in_request_id,
	in_return_url,
    in_host_address,
    in_data
	);
	SELECT 'data is inserted' as msg;

END//
DELIMITER ;
