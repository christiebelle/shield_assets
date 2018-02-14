DROP TABLE IF EXISTS heroes;
DROP TABLE IF EXISTS squads;

CREATE TABLE heroes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  secret_identity VARCHAR(255),
  skill VARCHAR(255),
  squad VARCHAR(255)
);

CREATE TABLE squads (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  logo_url VARCHAR(255)
)
