USE twitch;

-- Каналы (стримеры), которые указзана категория киберспорт(eSport).

SELECT name FROM streamers_channels WHERE sections_id = (SELECT id FROM sections WHERE name = 'eSport');


-- Выводит количество фолловеров канала, и общее количество фолловер всех каналов. 

SELECT DISTINCT name,
  COUNT(streamer_subscribers.user_id) OVER(PARTITION BY streamer_subscribers.community_id) AS total_follofers_channel,
  COUNT(streamer_subscribers.user_id) OVER(PARTITION BY streamer_subscribers.type_subscriptions_id) AS total_follofers
  FROM streamers_channels
    LEFT JOIN streamer_subscribers
      ON streamers_channels.id = streamer_subscribers.community_id
  WHERE type_subscriptions_id = 1;

 
-- Вывести id пользователей, которые выложили медиа файлы, подписаны на канал и имеют подписку 3 уровня.
   
SELECT media.user_id 
  FROM media
  LEFT JOIN streamer_subscribers  
    ON media.user_id = streamer_subscribers .user_id 
      AND media.link_channel = streamer_subscribers.community_id 
  WHERE type_subscriptions_id = (SELECT id FROM subscriptions_types WHERE name = 'subscription_3_lv');   
 
 
 
-- Выводит все медиа файлы канала
SELECT streamers_channels.name,
COUNT(media.filename)
  FROM streamers_channels
    LEFT JOIN media
      ON media.link_channel = streamers_channels.id       
  GROUP BY streamers_channels.name;