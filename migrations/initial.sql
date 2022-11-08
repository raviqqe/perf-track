CREATE TABLE IF NOT EXISTS metric (
    id serial PRIMARY,
    name text UNIQUE
);

CREATE TABLE IF NOT EXISTS record (
    metric_id serial REFERENCES metric (id),
    commit_hash text,
    time integer,
    PRIMARY KEY (metric_id, commit_hash)
);
