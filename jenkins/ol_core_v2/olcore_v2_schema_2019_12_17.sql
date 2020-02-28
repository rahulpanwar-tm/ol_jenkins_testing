USE gmonstar_orchestration;

-- Dumping structure for table ol_upgreade_3.8_v2.request_id_mapping
CREATE TABLE IF NOT EXISTS `request_id_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_request_id` varchar(255) NOT NULL,
  `new_request_id` varchar(255) NOT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Dumping structure for procedure ol_upgreade_3.8_v2.gmonstar_insert_request_id_mapping
DELIMITER //
CREATE PROCEDURE `gmonstar_insert_request_id_mapping`(IN `in_user_request_id` varchar(255), IN `in_new_request_id` TEXT)
    COMMENT 'This procedure is used to insert request id mapping.'
BEGIN
	/*
		----------------------------------------------------------------------------------------------------------------
		Description	:  This procedure is used to insert request id mapping.
		Created On  :  5 Dec 2019
		Created By	:  Saurabh kumar
		----------------------------------------------------------------------------------------------------------------
		Inputs		:   IN `in_user_request_id` varchar(255),
						IN `in_new_request_id` TEXT
		Output		:	Messages whether mapping is inserted or not
		-----------------------------------------------------------------------------------------------------------------
	*/
    -- cheching whether in_user_request_id and in_new_request_id is null or empty
    IF(in_user_request_id IS NOT NULL AND in_new_request_id IS NOT NULL AND  in_user_request_id !='' AND in_new_request_id!='') THEN
		
        -- utility call to split comman separated value into rows of single column of table
        CALL gmonstar_utilities_string_split_by_delimiter(in_new_request_id, ',');
		
        -- insertion into request id mapping by selecting data from new table created along with its user id
        INSERT INTO request_id_mapping
				(
				user_request_id,
				new_request_id
				)
			SELECT in_user_request_id,
					split_data
			FROM temp_convert;
            
		-- returing message in case of successfull insertion			
		SELECT 'Request Id is successfully inserted' as message,1 as code;
	ELSE
		-- returing message in case of un successfull insertion	
		SELECT 'Request Id is not inserted' as message,-1 as code;
	END IF;
end//
DELIMITER ;


-- Dumping structure for procedure ol_upgreade_3.8_v2.gmonstar_utilities_string_split_by_delimiter
DELIMITER //
CREATE PROCEDURE `gmonstar_utilities_string_split_by_delimiter`(IN `in_string` text, IN `in_delimiter` varchar(10))
BEGIN
/*
  ----------------------------------------------------------------------------------------------------------------
  Description :  Procedure for splitting delimiter seperated string into rows
  Created On  :  5 Dec 2019
  Created By  :  Saurabh kumar
  ----------------------------------------------------------------------------------------------------------------
  Inputs  		:   in_string
				:	in_delimiter
  Output  		: 	Storing Each Delimited Sperated value in the multiple cell of a single column into table temp_convert
  -----------------------------------------------------------------------------------------------------------------
*/

	SET in_string= coalesce(in_string,'');
	-- Temporary table to hold splited row value of string
    
	drop temporary table if exists temp_convert;
    create temporary table temp_convert(split_data varchar(2000) );
       
	-- dynamic query to break delimiter separated string as rows and insert into column
	set @sql = concat("
    insert into temp_convert (split_data) 
                 values ('", replace(
    ( select (in_string) as converted_data), in_delimiter, "'),('"),"'
                           );"
    );
    prepare stmt1 from @sql;
    execute stmt1;
END//
DELIMITER ;
