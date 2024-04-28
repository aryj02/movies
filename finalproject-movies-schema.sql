//need to add FOREIGN KEYS, uniqueIds, check primary/reference keys & syntax
//not sure if we're still keeping reviews, matchPercentage, watchLater, trendingList tables & need to add suggestedMovie tables?

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
  watchHistory      varchar2(15),      --change to boolean??
  primary key       (profileId),
  foreign key       (accountId) references account (userId)   
);
  
DROP TABLE movies CASCADE CONSTRAINTS;
CREATE TABLE movies (
  movieId           char(9) not null,
  title             varchar2(100) not null,
  movieYear         char(4),
  directorId          char(9) not null,
  genre             varchar2(50) not null,
  runtime           char(6),                    --if wanna do in minutes?
  summary           varchar2(200),
  castId            char(9),
  productionCompany varchar2(50) not null,
  primary key (movieId),
  foreign key (castId) references castInfo (actorId),
  foreign key (director) references director (directorId),
  foreign key (productionCompany) references productionCompany (productionName)
);

DROP TABLE castInfo CASCADE CONSTRAINTS;
CREATE TABLE castInfo (
  actor_fname       varchar2(50) not null,
  actor_lname       varchar2(50) not null,
  actorId           char(9),
  actor_bday        date,
  movieId           char(9),
  primary key       (actorId),
  foreign key (movieId) references movies (movieID)
);

DROP TABLE director CASCADE CONSTRAINTS;
CREATE TABLE director (
  director_fname    varchar2(50) not null,
  director_lname    varchar2(50) not null,
  directorId        char(9),
  director_bday     date,
  movieId           char(9),
  primary key       (directorId),
  foreign key (movieId) references movies (movieID)
);

--DROP TABLE productionCompany CASCADE CONSTRAINTS;
CREATE TABLE productionCompany (
  productionName    varchar(50) not null,
  movieId           char(9),
  address           varchar2(150),
  primary key       (productionName), 
  foreign key (movieId) references movies (movieId)
);

DROP TABLE reviews CASCADE CONSTRAINTS;
CREATE TABLE reviews (
  reviewId          char(9),
  profileId         char(9),
  starRating        char(5),
  movieId           char(9),
  primary key       (reviewId), 
  foreign key (movieId) references movies (movieId),
  foreign key (profileId) references profile (profileId)
  --foreign key (reviewId) references profile (accountId)?
);  

DROP TABLE watchLater CASCADE CONSTRAINTS;
CREATE TABLE watchLater (
  movieId           char(9),
  profileId         char(9),
  primary key       (movieId, profileId),
  foreign key (movieId) references movies (movieId),
  foreign key (profileId) references profile (profileId)
);

DROP TABLE trendingList CASCADE CONSTRAINTS;
CREATE TABLE trendingList (
  movieId           char(9),
  avgStarRating     char(5),        --percentage or 1-5 scale?
  trendYear         char(4),       
  genre             varchar(50),
  primary key       (movieId, genre),
  foreign key (movieId) references movies (movieId)
);