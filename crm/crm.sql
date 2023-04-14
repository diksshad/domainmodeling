-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS relationships;

-- CREATE TABLES
CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  email TEXT,
  phone TEXT,
  company_id INTEGER -- FK 1 com
);

CREATE TABLE activity (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  activity_type TEXT,
  date TEXT,
  time TEXT,
  sales_person_id TEXT,
  contact_id TEXT
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  industry_id TEXT
);

CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  sales_team TEXT,
  companies TEXT
);

CREATE TABLE industry_membership ( -- many to many industries and companies gets a join table
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  industry_id TEXT
  company_id TEXT
);