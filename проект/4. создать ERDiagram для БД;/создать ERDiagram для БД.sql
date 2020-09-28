DESC messages;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES profile(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES profile(id);
   
   
DESC friendship;

ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profile(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT friendship_friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES profile(id)
      ON DELETE CASCADE,    
  ADD CONSTRAINT friendship_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);

   
DESC streamer_channel;

ALTER TABLE streamer_channel 
  ADD CONSTRAINT streamer_channel_id_fk
    FOREIGN KEY (id) REFERENCES streamer_channel_users(community_id),
  ADD CONSTRAINT streamer_channel_sections_id_fk
    FOREIGN KEY (sections_id) REFERENCES sections(id);
   
   
DESC streamer_channel_users;

ALTER TABLE streamer_channel_users
  ADD CONSTRAINT streamer_channel_users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profile(id),
  ADD CONSTRAINT streamer_channel_type_subscriptions_id_fk
    FOREIGN KEY (type_subscriptions_id) REFERENCES type_subscriptions(id);
   
   
DESC media;

ALTER TABLE media 
  ADD CONSTRAINT media_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profile(id),
  ADD CONSTRAINT media_media_type_id_fk
    FOREIGN KEY (media_type_id) REFERENCES media_types(id),
  ADD CONSTRAINT media_midia_channel_fk
    FOREIGN KEY (midia_channel) REFERENCES streamer_channel(id); 
   
   
DESC channel_points;

ALTER TABLE channel_points
  ADD CONSTRAINT channel_points_midia_channel_fk
     FOREIGN KEY (midia_channel) REFERENCES streamer_channel(id),
  ADD CONSTRAINT channel_points_user_id_fk
    FOREIGN KEY (user_id) REFERENCES profile(id);