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
 
CREATE INDEX profile_display_name_idx 
  ON profile(display_name);
 
CREATE INDEX streamer_channel_name_idx 
  ON streamer_channel(name); 