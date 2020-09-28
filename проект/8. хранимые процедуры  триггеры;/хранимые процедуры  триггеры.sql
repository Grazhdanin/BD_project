DELIMITER //
DROP PROCEDURE IF EXISTS subscription_lv//

CREATE PROCEDURE subscription_lv (IN sub INT)
BEGIN
	SELECT community_id, user_id FROM streamer_channel_users WHERE type_subscriptions_id = sub;
END//

DELIMITER ;

CALL subscription_lv(1);

-- ------------------------------- ---------------------------------------------------------------------

DELIMITER //

DROP TRIGGER IF EXISTS validate_filename_size_insert //

CREATE TRIGGER validate_filename_size_insert BEFORE INSERT ON media
FOR EACH ROW BEGIN
  IF NEW.filename IS NULL AND NEW.`size` IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both filename and size are NULL';
  END IF;
END//

DELIMITER ;

  
 INSERT INTO media 
  (user_id, filename, `size`, media_type_id, midia_channel)
VALUES
  (11, NULL, 1244, 1, 12);