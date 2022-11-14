CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS metric (
    id text PRIMARY KEY DEFAULT uuid_generate_v4 () ::text,
    name text NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS record (
    metric_id text NOT NULL REFERENCES metric (id) ON DELETE CASCADE,
    commit_hash text NOT NULL,
    time integer NOT NULL,
    PRIMARY KEY (metric_id, commit_hash)
);
