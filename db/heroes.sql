DROP TABLE IF EXISTS heroes;

CREATE TABLE heroes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  secret_identity VARCHAR(255),
  skill VARCHAR(255),
  squad VARCHAR(255)
);
