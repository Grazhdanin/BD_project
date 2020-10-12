-- 1. Часть таблиц именована в единственном, часть в множественном числе, лучше использовать единый стиль.

ALTER TABLE streamer_channel 
RENAME TO streamers_channels; 

ALTER TABLE streamer_channel_users
RENAME TO streamer_subscribers; 

ALTER TABLE friendship
RENAME TO friendships;

ALTER TABLE profile
RENAME TO profiles;

-- Изменяем назания внешних ключей.

ALTER TABLE messages
DROP FOREIGN KEY messages_from_user_id_fk;

ALTER TABLE messages
DROP FOREIGN KEY messages_to_user_id_fk;

DESC messages;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES profiles(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES profiles(id);
-- --------------------------------------------------------------------------------------------------   
ALTER TABLE friendships
DROP FOREIGN KEY friendship_user_id_fk;

ALTER TABLE friendships
DROP FOREIGN KEY friendship_friend_id_fk;

ALTER TABLE friendships
DROP FOREIGN KEY friendship_status_id_fk;

DESC friendships;

ALTER TABLE friendships
  ADD CONSTRAINT friendship_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profiles(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES profiles(id)
      ON DELETE CASCADE,    
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);

-- -----------------------------------------------------------------------------   
ALTER TABLE streamers_channels
DROP FOREIGN KEY streamer_channel_id_fk;

ALTER TABLE streamers_channels
DROP FOREIGN KEY streamer_channel_sections_id_fk;
 
DESC streamers_channels;

ALTER TABLE streamers_channels 
  ADD CONSTRAINT streamer_channel_id_fk
    FOREIGN KEY (id) REFERENCES streamer_subscribers(community_id),
  ADD CONSTRAINT streamer_channel_sections_id_fk
    FOREIGN KEY (sections_id) REFERENCES sections(id);
 -- -----------------------------------------------
 
 ALTER TABLE streamer_subscribers
DROP FOREIGN KEY streamer_channel_users_user_id_fk;

ALTER TABLE streamer_subscribers
DROP FOREIGN KEY streamer_channel_type_subscriptions_id_fk;
  
DESC streamer_subscribers;

ALTER TABLE streamer_subscribers
  ADD CONSTRAINT streamer_subscribers_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profiles(id),
  ADD CONSTRAINT streamer_subscribers_type_subscriptions_id_fk
    FOREIGN KEY (type_subscriptions_id) REFERENCES subscriptions_types(id);
-- -----------------------------------------------------------------------------------   

ALTER TABLE media
DROP FOREIGN KEY media_user_id_fk;

ALTER TABLE media
DROP FOREIGN KEY media_media_type_id_fk;

ALTER TABLE media
DROP FOREIGN KEY media_midia_channel_fk;

DESC media;

ALTER TABLE media 
  ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profiles(id),
  ADD CONSTRAINT media_media_type_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id),
  ADD CONSTRAINT media_link_channel_fk
    FOREIGN KEY (link_channel) REFERENCES streamers_channels(id); 
-- ----------------------------------------------------------------   

ALTER TABLE channel_points
DROP FOREIGN KEY channel_points_midia_channel_fk;

ALTER TABLE channel_points
DROP FOREIGN KEY channel_points_user_id_fk;

DESC channel_points;

ALTER TABLE channel_points
  ADD CONSTRAINT channel_points_link_channel_fk
     FOREIGN KEY (link_channel) REFERENCES streamers_channels(id),
  ADD CONSTRAINT channel_points_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profiles(id);
   


-- 2. В таблице channel_points опечатка в midia_channel. Вообще насколько я вижу это ссылка на таблицу sreamer_channel, лучше изменить имя столбца.

ALTER TABLE channel_points
DROP FOREIGN KEY channel_points_midia_channel_fk;

ALTER TABLE channel_points CHANGE COLUMN midia_channel link_channel INT UNSIGNED;

ALTER TABLE channel_points
  ADD CONSTRAINT channel_points_link_channel_fk
     FOREIGN KEY (link_channel) REFERENCES streamer_channel(id);
    
    
ALTER TABLE media CHANGE COLUMN midia_channel link_channel INT UNSIGNED;

-- 3. Не ошибка, но вместо type_subscriptions лучше subscription_types.
   
ALTER TABLE streamer_channel_users
DROP FOREIGN KEY streamer_channel_type_subscriptions_id_fk;    
    
ALTER TABLE type_subscription 
RENAME TO subscriptions_types; 

ALTER TABLE streamer_channel_users
  ADD CONSTRAINT streamer_channel_subscriptions_types_id_fk
    FOREIGN KEY (type_subscriptions_id) REFERENCES subscriptions_types(id);
   
 -- Тут не обязательно удалять внешний ключ, команда выполнится без этого, 
 -- сделано чтобы изменить название внешнего ключа. 
   
-- 4. Проект хорошо структурирован, файлы-дубликаты .txt в принципе можно убрать.
-- 5. Плюс за использование оконных функций!
-- 6. Предпоследняя выборка страшненькая, если используете JOIN то старайтесь обходится без вложенных запросов, берите все данные из объединения.
-- 7. По представлениям также напишите для чего они нужны, иначе оценить правильность кода сложно.
-- 8. Нет вариантов индексов.