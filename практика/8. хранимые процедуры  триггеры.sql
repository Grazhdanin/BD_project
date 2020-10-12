-- Функция выводит тип подписки(ее можно изменять в переменной), канал и пользователей, с определенной подпиской, которую задаем в переменной.
DELIMITER //
DROP PROCEDURE IF EXISTS subscription_lv//

CREATE PROCEDURE subscription_lv (IN sub INT)
BEGIN
	SELECT community_id, user_id FROM streamer_channel_users WHERE type_subscriptions_id = sub;
END//

DELIMITER ;

CALL subscription_lv(1);

-- ------------------------------- ---------------------------------------------------------------------
-- Запрещает добавлять пустые значение в столбцы filename и size
DELIMITER //

DROP TRIGGER IF EXISTS validate_filename_size_insert //

CREATE TRIGGER validate_filename_size_insert BEFORE INSERT ON media
FOR EACH ROW BEGIN
  IF NEW.filename IS NULL AND NEW.`size` IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both filename or size are NULL';
  END IF;
END//

DELIMITER ;

  
 INSERT INTO media 
  (user_id, filename, `size`, media_type_id, link_channel )
VALUES
  (11, NULL, NULL, 1, 12);

-- Запрещает обновлять пустые значение в столбцы filename и size
DELIMITER //

DROP TRIGGER IF EXISTS validate_filename_size_update //

CREATE TRIGGER validate_filename_size_update BEFORE UPDATE ON media
FOR EACH ROW BEGIN
  IF NEW.filename IS NULL AND NEW.`size` IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both filename or size are NULL';
  END IF;
END//

DELIMITER ;