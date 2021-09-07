create table if not exists users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(64),
    pass VARCHAR(64)
);
