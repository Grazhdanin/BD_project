-- Каналы (стримеры), которые указзана категория киберспорт(eSport).

SELECT name FROM streamer_channel WHERE sections_id = (SELECT id FROM sections WHERE name = 'eSport');


-- Выводит количество фолловеров канала, и общее количество фолловер всех каналов. 

SELECT DISTINCT name,
  COUNT(streamer_channel_users.user_id) OVER(PARTITION BY streamer_channel_users.community_id) AS total_follofers_channel,
  COUNT(streamer_channel_users.user_id) OVER(PARTITION BY streamer_channel_users.type_subscriptions_id) AS total_follofers
  FROM streamer_channel
    LEFT JOIN streamer_channel_users
      ON streamer_channel.id = streamer_channel_users.community_id
  WHERE type_subscriptions_id = 1;

    
-- Выводит следующие столбцы:
-- Список стримеров,
-- Всего подписчиков 
-- подписчики "Followers",
-- подписчики subscription_1_lv,
-- подписчики subscription_2_lv,
-- подписчики subscription_3_lv.
     
SELECT DISTINCT streamer_channel.name,
  COUNT(streamer_channel_users.user_id) AS total_users,
  (SELECT COUNT(user_id) FROM streamer_channel_users WHERE type_subscriptions_id = 1) AS total_followers,
  (SELECT COUNT(user_id) FROM streamer_channel_users WHERE type_subscriptions_id = 2) AS total_subscription_1_lv,
  (SELECT COUNT(user_id) FROM streamer_channel_users WHERE type_subscriptions_id = 3) AS total_subscription_2_lv,
  (SELECT COUNT(user_id) FROM streamer_channel_users WHERE type_subscriptions_id = 4) AS total_subscription_3_lv
  FROM streamer_channel
    LEFT JOIN streamer_channel_users
      ON streamer_channel.id = streamer_channel_users.community_id
  GROUP BY streamer_channel.name;
   
-- Вывести id пользователей, которые выложили медиа файлы, подписаны на канал и имеют подписку 3 уровня.
   
SELECT media.user_id 
  FROM media
  LEFT JOIN streamer_channel_users
    ON media.user_id = streamer_channel_users.user_id 
      AND media.midia_channel = streamer_channel_users.community_id 
  WHERE type_subscriptions_id = 3;