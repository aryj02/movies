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
  runtime           char(6),                    --if wanna do in minutes?
  summary           varchar2(1000),
  leadingActorId    char(9),
  productionCompany varchar2(50) not null,
  primary key (movieId),
  unique (leadingActorId),
  unique (directorId),
  unique (productionCompany)
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
);