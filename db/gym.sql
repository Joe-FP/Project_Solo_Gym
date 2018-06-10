DROP TABLE bookings;
DROP TABLE members;
DROP TABLE sessions;

CREATE TABLE members
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  contact_number VARCHAR(255),
  email VARCHAR(255),
  address VARCHAR(255) NOT NULL,
  premium_member VARCHAR(255) NOT NULL
);

CREATE TABLE sessions
(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  session_date VARCHAR(255),
  session_time TIME,
  duration_mins INT,
  max_capacity INT,
  min_capacity INT,
  type VARCHAR(255),
  intensity_level VARCHAR(255)
);

CREATE TABLE bookings
(
  id SERIAL8 PRIMARY KEY,
  member_id INT8 REFERENCES members(id) ON DELETE CASCADE,
  session_id INT8 REFERENCES sessions(id) ON DELETE CASCADE
);

-- CREATE TABLE example (
--     a integer,
--     b integer,
--     c integer,
--     UNIQUE (a, c)
-- );
