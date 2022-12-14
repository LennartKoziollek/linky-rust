--psql -U actix -p 5430 -f sql/init_db.sql actix

DROP SCHEMA IF EXISTS linky CASCADE;
CREATE SCHEMA linky;

CREATE TABLE linky.link (
    shortlink varchar(150) not null,
    longlink varchar(150) not null,
    PRIMARY KEY (shortlink)
);