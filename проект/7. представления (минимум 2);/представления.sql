CREATE OR REPLACE VIEW points_channel (streamer, viewer, points) AS
SELECT community_id, streamer_channel_users.user_id, channel_points.points 
  FROM streamer_channel_users
  LEFT JOIN channel_points
    ON streamer_channel_users.user_id = channel_points.user_id 
      AND streamer_channel_users.community_id = channel_points.midia_channel
  WHERE channel_points.points != 0;
 
 SELECT * FROM points_channel; 
 



CREATE OR REPLACE VIEW category_number_viewers (category, total_users ) AS
SELECT sections.name, COUNT(streamer_channel_users.user_id)  
  FROM sections
  LEFT JOIN streamer_channel
    ON streamer_channel.sections_id = sections.id
  LEFT JOIN streamer_channel_users
    ON streamer_channel_users.community_id = streamer_channel.id
  GROUP BY sections.name;
  
 SELECT * FROM category_number_viewers;