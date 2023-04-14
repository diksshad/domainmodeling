DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

-- -- --

CREATE TABLE users (
  uid INTEGER PRIMARY KEY AUTOINCREMENT, 
  name TEXT,
  location TEXT,
  user_name TEXT,
)

CREATE TABLE posts ( --likes and commments don't go here because you want to grow vertically
  post_id INTEGER PRIMARY KEY AUTOINCREMENT,
  image_url TEXT,
  uid INTEGER, -- one user has many posts
  time_stamp TEXT,
  feed_id INTEGER
);

CREATE TABLE feed (
  course_id INTEGER PRIMARY KEY AUTOINCREMENT,
   TEXT,
  course_description TEXT
);

CREATE TABLE follows (
    follow_id INTEGER PRIMARY KEY AUTOINCREMENT,
    following INTEGER,
    followers INTEGER,
);

CREATE TABLE like (
    uid INTEGER,
    post_id INTEGER,
);

CREATE TABLE comments (
    uid INTEGER,
    post_id INTEGER,
    body TEXT
);