CREATE DATABASE twitch;
USE twitch;


DROP TABLE profile;
CREATE TABLE profile (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Ссылка на пользователя',
  user_name VARCHAR(150) NOT NULL COMMENT 'Имя пользователя',
  display_name VARCHAR(150) NULL COMMENT 'Отображаемое имя',
  information TEXT COMMENT 'Краткая информация пользователя',
   created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Профили';


DROP TABLE messages;
CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки', 
  from_user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  to_user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на получателя сообщения',
  body TEXT NOT NULL COMMENT 'Nекст сообщения',
  is_important BOOLEAN COMMENT 'Признак важности',
  is_delivered BOOLEAN COMMENT 'Признак доставки',
  created_at DATETIME DEFAULT NOW() COMMENT "Время создания строки",
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Сообщения';


DROP TABLE friendship;
CREATE TABLE friendship (
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  friend_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  status_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  requested_at DATETIME DEFAULT NOW() COMMENT 'Время отправления приглашения дружить',
  confirmed_at DATETIME COMMENT 'Время подтверждения приглашения', 
  PRIMARY KEY (user_id, friend_id) COMMENT 'Составной первичный ключ'
) COMMENT 'Таблица дружбы';


DROP TABLE friendship_statuses;
CREATE TABLE friendship_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(150) NOT NULL UNIQUE COMMENT 'Название статуса',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'  
) COMMENT 'Статусы дружбы';

DROP TABLE streamer_channel;
CREATE TABLE streamer_channel (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор сроки',
  name VARCHAR(150) NOT NULL COMMENT 'Название канала',
  sections_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на раздел трансляции',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'  
) COMMENT 'Канал пользователя';


DROP TABLE streamer_channel_users;
CREATE TABLE streamer_channel_users (
  community_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на канал',
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пользователя',
  type_subscriptions_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на тип подписки',
 created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки' ,
  PRIMARY KEY (community_id, user_id) COMMENT 'Составной первичный ключ'
) COMMENT 'Участники канала';


DROP TABLE media;
CREATE TABLE media (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пользователя, который создал файл',
  filename VARCHAR(255) NOT NULL COMMENT 'Путь к файлу',
  size INT NOT NULL COMMENT 'Размер файла',
  media_type_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на тип контента',
  midia_channel INT UNSIGNED NOT NULL COMMENT 'Ссылка на канал',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Медиафайлы';


DROP TABLE media_types;
CREATE TABLE media_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Название типа',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Типы медиафайлов';


DROP TABLE channel_points;
CREATE TABLE channel_points (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  midia_channel INT UNSIGNED NOT NULL COMMENT 'Ссылка на канал',
  user_id INT UNSIGNED NOT NULL COMMENT 'Ссылка на пользователя', 
  points INT  NOT NULL COMMENT 'Количестов баллов зрителя',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
  ) COMMENT 'Баллы каналы за активность';

 
DROP TABLE sections;
CREATE TABLE sections(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Название типа раздела',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
  ) COMMENT 'Категории по которым определяют, какой тип контента';

 
DROP TABLE type_subscriptions;
CREATE TABLE type_subscriptions(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name VARCHAR(255) NOT NULL UNIQUE COMMENT 'Название типа',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT 'Типы подписок на канал';