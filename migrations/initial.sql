CREATE TABLE IF NOT EXISTS metric (
    id serial,
    name text UNIQUE
);

CREATE TABLE IF NOT EXISTS record (
    metricId serial REFERENCES metric (id),
    commit_hash text,
    time integer
);
