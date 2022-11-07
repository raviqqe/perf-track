CREATE TABLE IF NOT EXISTS metric (
    id serial
);

CREATE TABLE IF NOT EXISTS record (
    id serial,
    commit_hash text,
    time integer
);
