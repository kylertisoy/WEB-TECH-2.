USE hono_db;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  fname VARCHAR(100) NULL,
  username VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

-- Add test user only if it doesn't already exist
INSERT IGNORE INTO users (fname, username, password)
VALUES ('Test User', 'admin', 'admin123');

-- Check if it worked
SELECT * FROM users;
