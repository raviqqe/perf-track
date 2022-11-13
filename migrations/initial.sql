CREATE TABLE IF NOT EXISTS metric (
    id integer PRIMARY KEY,
    name text NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS record (
    metric_id integer NOT NULL REFERENCES metric (id) ON DELETE CASCADE,
    commit_hash text NOT NULL,
    time integer NOT NULL,
    PRIMARY KEY (metric_id, commit_hash)
);
