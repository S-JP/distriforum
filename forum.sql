CREATE DATABASE IF NOT EXISTS distriforum;

USE distriforum;

CREATE TABLE t_main_post(
                            id VARCHAR(255),
                            msg TEXT,
                            vts LONG,
                            PRIMARY KEY (id)
);

CREATE TABLE t_reply_post(
                             id VARCHAR(255),
                             post_id VARCHAR(255),
                             msg TEXT,
                             vts LONG,
                             PRIMARY KEY (id),
                             FOREIGN KEY (post_id) REFERENCES t_main_post(id)
);