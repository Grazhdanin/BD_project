USE twitch;

-- Выводит пользователей и баллы, которые подписаны на канал. 
-- Не выводятся пользователи у которых есть баллы канала, но не подписаны на канал. . 
-- НЕ выводит пользователей у которых не балов.


CREATE OR REPLACE VIEW points_channel (streamer, viewer, points) AS
SELECT community_id, streamer_subscribers.user_id, channel_points.points 
  FROM streamer_subscribers
  LEFT JOIN channel_points
    ON streamer_subscribers.user_id = channel_points.user_id 
      AND streamer_subscribers.community_id = channel_points.link_channel 
  WHERE channel_points.points != 0;
 
 SELECT * FROM points_channel; 
 

-- АНАЛИЗ пользоватлей, какой контент им нравится (количество пользователей подписсаны на стримерров, транслирующие определенную категорию) . 
-- Пример 7 стримеров трансслируют категорию eSport, суммарное количество подписчиков 22, значит в категории eSport смотрят 22 пользователя.
CREATE OR REPLACE VIEW category_number_viewers (category, total_users ) AS
SELECT sections.name, COUNT(streamer_subscribers.user_id)  
  FROM sections
  LEFT JOIN streamers_channels
    ON streamers_channels.sections_id = sections.id
  LEFT JOIN streamer_subscribers
    ON streamer_subscribers.community_id = streamers_channels.id
  GROUP BY sections.name;
  
 SELECT * FROM category_number_viewers;