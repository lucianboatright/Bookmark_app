Commits correspond with user stories

## User Stories

```
As a time-pressed user
So that I can visit my favourite sights
I would like to see a list of bookmarks
(see image)
```

## Domain Model

![Bookmark Manager domain model](./images/domain_model.jpg)



#Data Base Setup

connect to psql 
Create database using psql CREATE DATABASE bookmark_manager;
connect to data base using \c bookmark_manager;
create table CREATE TABLE bookmarks (id SERIAL PRIMARY KEY, url VARCHAR(60));

