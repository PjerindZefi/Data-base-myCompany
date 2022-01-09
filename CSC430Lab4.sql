-- create database CSC430Lab4;
use CSC430Lab4;

CREATE TABLE members (
    member_id INTEGER PRIMARY KEY,
    member_name VARCHAR(20),
    address VARCHAR(100),
    phone VARCHAR(12),
    membership_id INTEGER,
    member_since DATE,
    member_expires DATE,
    FOREIGN KEY (membership_id) REFERENCES membership_type(membership_id)
);

CREATE TABLE membership_type (
    membership_id INTEGER,
    membership_name VARCHAR(10),
    membership_fee INTEGER,
    cashback_rate INTEGER,
    PRIMARY KEY (membership_id, membership_name)
);

CREATE TABLE cashback (
	member_id INTEGER UNIQUE,
    balance REAL,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE subscription (
    subscription_id INTEGER,
    member_id INTEGER,
    subscription_type CHAR,
    PRIMARY KEY (subscription_id, member_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);