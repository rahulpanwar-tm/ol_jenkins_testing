USE gmonstar_orchestration_thirdparty;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table upgrade_gmonstar_third_party.country: ~4 rows (approximately)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`id`, `country_name`, `country_code`, `network_profile`) VALUES
	(1, NULL, 'AU', 'Airtel'),
	(2, NULL, 'NZ', 'Airtel'),
	(3, NULL, 'IN', 'vodafone'),
	(4, NULL, 'AR', 'Airtel');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Dumping data for table upgrade_gmonstar_third_party.country_operator: ~27 rows (approximately)
/*!40000 ALTER TABLE `country_operator` DISABLE KEYS */;
INSERT INTO `country_operator` (`id`, `country_code`, `operator`) VALUES
	(1, 'AU', 'GT'),
	(2, 'BR', 'GT'),
	(3, 'default', 'GT'),
	(4, 'defaults', 'GT'),
	(5, 'EU', 'GT'),
	(6, 'GC', 'GT'),
	(7, 'IN', 'GT'),
	(8, 'KP', 'GT'),
	(9, 'LR', 'GT'),
	(10, 'MX', 'GT'),
	(11, 'NILL', 'GT'),
	(12, 'NZ', 'GT'),
	(13, 'SA', 'GT'),
	(14, 'UK', 'GT'),
	(15, 'AR', 'GT'),
	(16, 'CO', 'GT'),
	(17, 'CL', 'GT'),
	(18, 'EC', 'GT'),
	(19, 'PE', 'GT'),
	(20, 'BO', 'GT'),
	(21, 'UY', 'GT'),
	(22, 'PY', 'GT'),
	(23, 'KP', 'GT'),
	(24, 'AE', 'GT'),
	(25, 'KW', 'GT'),
	(26, 'QA', 'GT'),
	(27, 'BH', 'GT');
/*!40000 ALTER TABLE `country_operator` ENABLE KEYS */;

-- Dumping data for table upgrade_gmonstar_third_party.esim_notification_url: ~63 rows (approximately)
/*!40000 ALTER TABLE `esim_notification_url` DISABLE KEYS */;
INSERT INTO `esim_notification_url` (`id`, `request_id`, `return_url`, `host_address`, `data`) VALUES
	(5, 'eSIM_UDS_005', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(6, 'eSIM_UDS_006', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(7, 'eSIM_UDS_007', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(8, 'eSIM_UDS_008', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(9, 'eSIM_UDS_009', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(10, 'eSIM_UDS_010', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(11, 'eSIM_UDS_0001', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '192.168.1.67', NULL),
	(12, 'eSIM_UDS_0002', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '192.168.1.67', NULL),
	(13, 'eSIM_UDS_0005', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '192.168.1.67', NULL),
	(14, 'eSIM_UDS_0005', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '192.168.1.67', NULL),
	(15, 'eSIM_UDS_0006', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '192.168.1.67', NULL),
	(16, 'eSIM_UDS_0007', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '192.168.1.67', NULL),
	(17, 'eSIM_UDS_0007', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '192.168.1.67', NULL),
	(18, 'eSIM_UDS_0008', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '192.168.1.67', NULL),
	(19, 'eSIM_BS2LP_x0014', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400176977","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_x0014","requestId":"eSIM_BS2LP_x0014","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1552650246","ICCID":"8946270044400176977","country":"NILL","RequestID":"eSIM_BS2LP_x0014","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"IN","FALLBACK_Type":"N","IMSI":"404441111111113","STATE":"A","TYPE":"L","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"2"}'),
	(20, 'eSIM_BS2LP_x00142', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '192.168.1.77', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400176977","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_x00142","requestId":"eSIM_BS2LP_x00142","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1552653022","ICCID":"8946270044400176977","country":"NILL","RequestID":"eSIM_BS2LP_x00142","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"192.168.1.77","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"IN","FALLBACK_Type":"N","IMSI":"404441111111113","STATE":"A","TYPE":"L","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"2"}'),
	(21, 'GM_GOUP_UDS_testing_001', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(22, 'GM_GOUP_UDS_testing_001', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(23, 'GM_GOUP_UDS_testing_002', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(24, 'GM_GOUP_UDS_testing_004', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(25, 'GM_GOUP_UDS_testing_005', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(26, 'GM_GOUP_UDS_testing_012', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(27, 'GM_GOUP_UDS_testing_012', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(28, 'GM_GOUP_UDS_testing_013', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(29, 'GM_GOUP_UDS_testing_014', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(30, 'GM_GOUP_UDS_testing_015', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(31, 'GM_GOUP_UDS_testing_016', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(32, 'GM_GOUP_UDS_testing_017', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(33, 'GM_GOUP_UDS_testing_018', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(34, 'GM_GOUP_UDS_testing_019', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(35, 'eSIM_BS2LP_UT_TESTING_38_047', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_047","requestId":"eSIM_BS2LP_UT_TESTING_38_047","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564406579","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_047","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(36, 'eSIM_BS2LP_UT_TESTING_38_048', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_048","requestId":"eSIM_BS2LP_UT_TESTING_38_048","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564406666","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_048","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(37, 'eSIM_BS2LP_UT_TESTING_38_049', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_049","requestId":"eSIM_BS2LP_UT_TESTING_38_049","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564407060","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_049","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(38, 'eSIM_BS2LP_UT_TESTING_38_050', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_050","requestId":"eSIM_BS2LP_UT_TESTING_38_050","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564407661","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_050","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(39, 'eSIM_BS2LP_UT_TESTING_38_051', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_051","requestId":"eSIM_BS2LP_UT_TESTING_38_051","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564483381","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_051","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(40, 'eSIM_BS2LP_UT_TESTING_38_053', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_053","requestId":"eSIM_BS2LP_UT_TESTING_38_053","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564484666","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_053","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(41, 'eSIM_BS2LP_UT_TESTING_38_054', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_054","requestId":"eSIM_BS2LP_UT_TESTING_38_054","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564485026","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_054","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(42, 'eSIM_BS2LP_UT_TESTING_38_055', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_055","requestId":"eSIM_BS2LP_UT_TESTING_38_055","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564485704","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_055","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(43, 'GM_GOUP_UDS_testing_38_001', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(44, 'GM_GOUP_UDS_testing_38_002', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(45, 'GM_GOUP_UDS_testing_38_006', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(46, 'GM_GOUP_UDS_testing_38_007', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(47, 'GM_GOUP_UDS_testing_38_008', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(48, 'GM_GOUP_UDS_testing_38_009', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(49, 'GM_GOUP_UDS_testing_38_010', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(50, 'GM_GOUP_UDS_testing_38_011', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(51, 'GM_GOUP_UDS_testing_38_012', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(52, 'GM_GOUP_UDS_testing_38_013', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(53, 'GM_GOUP_UDS_testing_38_014', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(54, 'GM_GOUP_UDS_testing_38_015', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(55, 'GM_GOUP_UDS_testing_38_016', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(56, 'GM_GOUP_UDS_testing_38_017', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(57, 'GM_GOUP_UDS_testing_38_018', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(58, 'GM_GOUP_UDS_testing_38_019', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(59, 'GM_GOUP_UDS_testing_38_020', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(60, 'GM_GOUP_UDS_testing_38_021', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(61, 'GM_GOUP_UDS_testing_38_022', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(62, 'GM_GOUP_UDS_testing_38_023', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(63, 'GM_GOUP_UDS_testing_38_024', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(64, 'GM_GOUP_UDS_testing_38_025', 'http://14.143.33.34:8585/carrierInboundGateway/v2', '0:0:0:0:0:0:0:1', NULL),
	(65, 'eSIM_BS2LP_UT_TESTING_38_056', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_056","requestId":"eSIM_BS2LP_UT_TESTING_38_056","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564496567","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_056","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(66, 'eSIM_BS2LP_UT_TESTING_38_057', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_057","requestId":"eSIM_BS2LP_UT_TESTING_38_057","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564496869","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_057","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}'),
	(67, 'eSIM_BS2LP_UT_TESTING_38_061', 'http://14.143.33.34:8585/carrierInboundGateway/v1', '0:0:0:0:0:0:0:1', '{"countryCode":"AU","targetProfile":"Local","iccid":"8946270044400161282","country_code":"AU","operator_name":"GT","tracking_message_header":"eSIM_BS2LP_UT_TESTING_38_061","requestId":"eSIM_BS2LP_UT_TESTING_38_061","returnUrl":"http://14.143.33.34:8585/carrierInboundGateway/v1","Accept":"application/json","DateTimeStamp":"1564497372","ICCID":"8946270044400161282","country":"NILL","RequestID":"eSIM_BS2LP_UT_TESTING_38_061","ReturnURL":"http://14.143.33.34:8585/carrierInboundGateway/v1","host_address":"0:0:0:0:0:0:0:1","ProfileType":"L","responseCode":"0","xmlns":"","COUNTRY":"Global","FALLBACK_Type":"Y","IMSI":"234509999999128","STATE":"A","TYPE":"B","BootstrapICCID":"8946270044400161282","ProfileSwitchType":"1"}');
/*!40000 ALTER TABLE `esim_notification_url` ENABLE KEYS */;

-- Dumping data for table upgrade_gmonstar_third_party.operator: ~3 rows (approximately)
/*!40000 ALTER TABLE `operator` DISABLE KEYS */;
INSERT INTO `operator` (`id`, `name`, `code`) VALUES
	(1, 'GT', 'GT'),
	(3, 'test', 'ts'),
	(4, 'test 2', 'tt');
/*!40000 ALTER TABLE `operator` ENABLE KEYS */;

-- Dumping data for table upgrade_gmonstar_third_party.plan: ~11 rows (approximately)
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` (`id`, `plan_name`, `gm_plan_id`, `bss_plan_id`, `plan_duration`) VALUES
	(1, 'AUS_DEALER_DEMO', '1', '12', '3'),
	(2, 'AUS_TRIAL_3M3GB', '2', '11', '3'),
	(3, 'TestPlan2', '3', '4', '1'),
	(4, 'TestPlan3', '4', '5', '1'),
	(5, 'TestPass1', '5', '3', '10'),
	(6, 'NZ_TRIAL_3M3GB', '6', '15', '90'),
	(7, 'NZ_DEALER_DEMO', '7', '14', '10'),
	(8, 'GM3GPlan', '8', '1', '15'),
	(9, 'Additional_Pass', '9', '2', '15'),
	(10, 'ShortPlan', '10', '6', '3'),
	(11, 'Retail_UAE', '11', '8', '10');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
