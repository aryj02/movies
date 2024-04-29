DROP TABLE account CASCADE CONSTRAINTS;
CREATE TABLE account (
  fname             varchar2(15) not null, 
  lname             varchar2(15) not null,
  billingInfo       varchar2(100),
  address           varchar2(100),
  userId            char(9),
  primary key       (userId)
);

DROP TABLE profile CASCADE CONSTRAINTS;
CREATE TABLE profile (
  fname             varchar2(15) not null,
  lname             varchar2(15) not null,
  accountId         char(9),
  profileId         char(9),                    
  pg13              char(1),
  lastWatched      varchar(100),     
  primary key       (profileId),
  foreign key       (accountId) references account (userId)   
);
  
DROP TABLE movies CASCADE CONSTRAINTS;
CREATE TABLE movies (
  movieId           char(9) not null,
  title             varchar2(100) not null,
  movieYear         char(4),
  directorId        char(9) not null,
  genre             varchar2(50) not null,
  runtime           char(6),                    --if wanna do in minutes?            --forgot if keeping this in, percentage or 1-5 scale?
  summary           varchar2(1000),               --percentage or likert scale?
  leadingActorId    char(9),
  productionCompany varchar2(50) not null,
  primary key (movieId),
  unique (title, movieYear),
  foreign key (leadingActorId) references castInfo (actorId),
  foreign key (directorId) references director (directorId),
  foreign key (productionCompany) references productionCompany (productionName)
);

DROP TABLE castInfo CASCADE CONSTRAINTS;
CREATE TABLE castInfo (
  actorId           char(9),
  actor_fname       varchar2(50) not null,
  actor_lname       varchar2(50) not null,
  actor_bday        date,
  movieId           char(9) not null,
  primary key       (actorId),
  foreign key (movieId) references movies (movieId)
);

DROP TABLE director CASCADE CONSTRAINTS;
CREATE TABLE director (
  directorId        char(9) not null,
  director_fname    varchar2(50) not null,
  director_lname    varchar2(50) not null,
  director_bday     date,
  movieId           char(9),
  primary key       (directorId),
  foreign key (movieId) references movies (movieID)
);

DROP TABLE productionCompany CASCADE CONSTRAINTS;
CREATE TABLE productionCompany (
  productionName    varchar(50) not null,
  movieId           char(9),
  address           varchar2(100),
  primary key       (productionName), 
  foreign key (movieId) references movies (movieId)
);

DROP TABLE reviews CASCADE CONSTRAINTS;
CREATE TABLE reviews (
  reviewId          char(9),
  profileId         char(9),
  starRating        int,
  movieId           char(9),
  primary key       (reviewId), 
  foreign key (movieId) references movies (movieId),
  foreign key (profileId) references profile (profileId)
);  

DROP TABLE watchlater CASCADE CONSTRAINTS;
CREATE TABLE watchLater (
  movieId           char(9),
  profileId         char(9),
  watched           char(1),
  primary key       (movieId, profileId),
  foreign key (movieId) references movies (movieId),
  foreign key (profileId) references profile (profileId)
);

--queries:
--get actor names from castInfo using the ID variable for the movie description
SELECT DISTINCT m.title, actor_fname, actor_lname
FROM castInfo c, movies m
WHERE c.movieID = m.movieID AND m.title = 'The Godfather';

--get average rating for movie from ratings table
SELECT m.title, avg(r.starRating)
FROM movies m, reviews r
WHERE m.movieID = r.movieID
GROUP BY m.title;

--get watch later list
SELECT p.fname, p.lname, m.title
FROM movies m, watchLater w, profile p
WHERE m.movieID = w.movieID AND p.profileID = w.profileID
GROUP BY p.fname, p.lname, m.title;


--get trending list
SELECT m.title, avg(r.starRating)
FROM movies m, reviews r
WHERE m.movieID = r.movieID
GROUP BY m.title
HAVING AVG(r.starRating) > 4;


