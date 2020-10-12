USE twitch;

DESC messages;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES profiles(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES profiles(id);
   
   
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
   
   
 DESC streamers_channels;

ALTER TABLE streamers_channels 
  ADD CONSTRAINT streamer_channel_id_fk
    FOREIGN KEY (id) REFERENCES streamer_subscribers(community_id),
  ADD CONSTRAINT streamer_channel_sections_id_fk
    FOREIGN KEY (sections_id) REFERENCES sections(id);
   
   
 DESC streamer_subscribers;

ALTER TABLE streamer_subscribers
  ADD CONSTRAINT streamer_subscribers_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profiles(id),
  ADD CONSTRAINT streamer_subscribers_type_subscriptions_id_fk
    FOREIGN KEY (type_subscriptions_id) REFERENCES subscriptions_types(id);
   
   
DESC media;

ALTER TABLE media 
  ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profiles(id),
  ADD CONSTRAINT media_media_type_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id),
  ADD CONSTRAINT media_link_channel_fk
    FOREIGN KEY (link_channel) REFERENCES streamers_channels(id); 
   
   
DESC channel_points;

ALTER TABLE channel_points
  ADD CONSTRAINT channel_points_link_channel_fk
     FOREIGN KEY (link_channel) REFERENCES streamers_channels(id),
  ADD CONSTRAINT channel_points_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profiles(id);
   
  
-- ---------------------------------------------------------------------------------------
-- Индескы

DESC channel_points;
DESC friendship;
DESC media; 
-- filename, size
DESC messages;
DESC profile;
-- display_name
DESC streamer_channel;
-- name
DESC streamer_channel_users;

-- Создаем индексы	
	
CREATE INDEX media_filename_idx 
  ON media(filename);

CREATE INDEX media_size_idx 
  ON media(`size`);
 
CREATE INDEX media_size_idx 
 ON media(`size`);
 
CREATE INDEX profiles_display_name_idx 
  ON profiles(display_name);
 
CREATE INDEX streamer_channel_name_idx 
  ON streamer_channel(name);   