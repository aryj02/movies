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
  watchHistory      char(1),     
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
<<<<<<< HEAD
  runtime           char(6),                    --if wanna do in minutes?            --forgot if keeping this in, percentage or 1-5 scale?
  summary           varchar2(200),
  castId            char(9),
  avgUserRating     char(3),                   --percentage or likert scale?
  productionCompany varchar2(50) not null,
  primary key (movieId),
  unique (title, movieYear),
  foreign key (castId) references castInfo (actorId),
  foreign key (director) references director (directorId),
  foreign key (productionCompany) references productionCompany (productionName)
=======
  runtime           char(6),                    --if wanna do in minutes?
  summary           varchar2(1000),
  leadingActorId    char(9),
  productionCompany varchar2(50) not null,
  primary key (movieId),
  unique (leadingActorId),
  unique (directorId),
  unique (productionCompany)
>>>>>>> 9652a8f463189ae94d616cd8c5181402f52a2e9d
);

DROP TABLE castInfo CASCADE CONSTRAINTS;
CREATE TABLE castInfo (
  actorId           char(9),
  actor_fname       varchar2(50) not null,
  actor_lname       varchar2(50) not null,
  actor_bday        date,
  movieId           char(9) not null,
  primary key       (actor_fname, actor_lname),
  foreign key (movieId) references movies (movieId),
  foreign key (actorId) references movies (leadingActorId)
);

DROP TABLE director CASCADE CONSTRAINTS;
CREATE TABLE director (
  directorId        char(9) not null,
  director_fname    varchar2(50) not null,
  director_lname    varchar2(50) not null,
  director_bday     date,
  movieId           char(9),
  primary key       (directorId),
  foreign key (movieId) references movies (movieID),
  foreign key (directorId) references movies (directorId)
);

DROP TABLE productionCompany CASCADE CONSTRAINTS;
CREATE TABLE productionCompany (
  productionName    varchar(50) not null,
  movieId           char(9),
  address           varchar2(100),
  primary key       (productionName), 
  foreign key (movieId) references movies (movieId),
  foreign key (productionName) references movies (productionCompany)
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
  primary key       (movieId, profileId),
  foreign key (movieId) references movies (movieId),
  foreign key (profileId) references profile (profileId)
<<<<<<< HEAD
);

--queries:
--get actor and actress names from castInfo using the ID variable

SELECT m.title, c.fName, c.lNAME
FROM castInfo c, movies m
WHERE c.movieID = m.movieID;

--get average rating for movie from ratings table
SELECT m.title, avg(r.starRating)
FROM movies m, rating r
GROUP BY r.movieID
WHERE m.movieID = r.movieID;

--get watch later list
SELECT p.fNmae, p.lName, m.title
FROM movies m, watchLater w, profile p
GROUP BY w.profileID
WHERE m.movieID = w.movieID AND p.profileID = w.profileID;

--get trending list
SELECT m.title
FROM movies m, reviews r
GROUP BY r.movieID
WHERE avg(r.starRating) > 4;
=======
);
>>>>>>> 9652a8f463189ae94d616cd8c5181402f52a2e9d
