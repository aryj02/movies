INSERT INTO account VALUES 
  ('Michael','Harrison','5986789841913478','2839 7th Street Austin, Tx',000000001);
INSERT INTO account VALUES 
  ('Gabriella', Perich','4027827726206550','917 State Ave , Salem, OR',000000002);
INSERT INTO account VALUES 
  ('Abigail','Lam','9859016958976607','182 Funston, Miami, FL',000000003);
INSERT INTO employee VALUES
  ('Kelly','McGuigan','7472280248950623', '123 Peachtree, Raleigh, NC',000000003);
INSERT INTO employee VALUES
  ('Alex','Morgan','1765641325940172','94 Geary Street San Francisco, CA',000000004);
INSERT INTO employee VALUES
  ('John','Samonte','6550537440192872','45 Irving Ave, Chicago, IL',000000004);
--
INSERT INTO profile VALUES ('Michael', 'Harrison', 000000001, 100000000, 'Y', 'The Black Swan');
INSERT INTO profile VALUES (''Gabriella', Perich', 000000002, 200000000, 'Y', 'Shawshank Redemption');
INSERT INTO profile VALUES ('Abigail','Lam', 000000003, 300000000, 'N', 'Incredibles 2');
INSERT INTO profile VALUES (''Kelly','McGuigan',000000003,400000000,'Y', 'The Godfather');
INSERT INTO profile VALUES ('John','Samonte','000000004', 500000000, 'Y', 'Dune Part One');
--
INSERT INTO movies VALUES 
  ('The Black Swan','2010',000000001,'thriller',108, 
  'Nina or Natalie Portman is a ballerina whose passion for the dance rules every facet of her life. 
  When the artistic director of the company decides to replace his prima ballerina for their opening production of Swan Lake
  Nina is his first choice. She has competition in newcomer Lily Mila Kunis however. 
  While Nina is perfect for the role of the White Swan, Lily personifies the Black Swan. 
  As rivalry between the two dancers transforms into a twisted friendship then Nina's dark side begins to emerge',000000001, 'Fox Searchlight Pictures');
INSERT INTO movie VALUES
    ('Shawshank Redemption', '1994', 000000002, 'drama', 162, 
    'Andy Dufresne or Tim Robbins is sentenced to two consecutive life terms in prison for the murders of his wife 
    and her lover and is sentenced to a tough prison. Only Andy knows he did not commit the crimes. While there
    he forms a friendship with Red or Morgan Freeman and experiences everyday prisonall in 19 years.', 000000002, 'Castlerock Entertainment');
INSERT INTO movie VALUES
    ('Incredibles 2', '2016', 000000003, 'superhero', 119,  
    'Telecommunications guru Winston Deavor enlists Elastigirl to fight crime and make the public fall in love with superheroes once again. 
    That leaves Mr. Incredible with one of his greatest challenges ever -- staying home and taking care of three rambunctious children. 
    As Violet, Dash and Jack-Jack offer him a new set of headaches, a cybercriminal named Screenslaver launches his dastardly plan -- 
    hypnotizing the world through computer screens.', 000000003, 'Walt Disney Animations Studios Film');
INSERT INTO movie VALUES
    ('The Godfather', '1972', 000000004, 'crime', 175, 
    'Based on Mario Puzo's novel of the same name it focuses on the powerful Italian-American crime family of Don Vito Corleone or Marlon Brando. 
    When the youngest sonof the don Michael or Al Pacino reluctantly joins the Mafia he becomes involved in the inevitable cycle of violence and betrayal. 
    Although Michael tries to maintain a normal relationship with his wife named Kay or Diane Keaton he is drawn deeper into the family business.', 000000004, 'Paramount Pictures');
INSERT INTO movie VALUES
    ('Dune Part One', '2021', 000000005, 'science fiction', 155, 
    'Paul Atreides or a brilliant and gifted young man born into a great destiny beyond his understanding must travel to the most dangerous planet in the universe 
    to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply 
    of the most precious resource in existence, only those who can conquer their own fear will survive.', 000000005, 'Legendary Entertainment');
--
INSERT INTO castInfo VALUES ('Natalie', 'Portman', 000000001, '09-JUN-1981', 'The Black Swan', '2010');
INSERT INTO castInfo VALUES ('Morgan', 'Freeman', 000000002, '01-JUN-1937', 'Shawshank Redemption', '1994');
INSERT INTO castInfo VALUES ('Sarah', 'Vowell', 000000003, '27-DEC-1969', 'Incredibles 2', '2016');
INSERT INTO castInfo VALUES ('Al', 'Pacino', 000000004, '25-APR-1940', 'The Godfather', '1972');
INSERT INTO castInfo VALUES ('Timotheé', 'Chalamet', 000000005, '27-DEC-1995', 'Dune Part One', '2021');

--
INSERT INTO director VALUES ('Darren', 'Aronofsky', 000000001, '12-FEB-1969', 'The Black Swan','2010');
INSERT INTO director VALUES ('Frank', 'Darabont',000000002, '28-JAN-1959, 'Shawshank Redemption', '1994');
INSERT INTO director VALUES ('Brad', 'Bird',000000003, '27-SEP-1957', 'Incredibles 2', '2016');
INSERT INTO director VALUES ('Francis',  'Coppola', 000000004, '07-APR-1939', 'The Godfather', '1972');
INSERT INTO director VALUES ('Denis', 'Villeneuve', 000000005, '03-OCT-1967', 'Dune Part One', '2021');
--
INSERT INTO productionCompany VALUES ('Fox Searchlight Pictures', 'The Black Swan','2010', '10201 W Pico Blvd, LA, CA');
INSERT INTO productionCompany VALUES ('Castlerock Entertainment', 'Shawshank Redemption', '1994', '335 N Maple Dr, Beverly Hills, CA');
INSERT INTO productionCompany VALUES ('Walt Disney Animations Studios Film', 'Incredibles 3', '2016', 2100 W Riverside Drive, Burbank, CA);
INSERT INTO productionCompany VALUES ('Paramount Pictures', 'The Godfather', '1972', '5555 Melrose Avenue, Hollywood, California');
INSERT INTO productionCompany VALUES ('Legendary Entertainment', 'Dune Part One', '2021', '2900 W Alameda Ave, Burbank, CA');
--
INSERT INTO reviews VALUES (100000000, 'Michael','Harrison', 5, 'The Black Swan','2010');
INSERT INTO reviews VALUES (100000000, 'Michael','Harrison', 3, 'Dune Part One', '2021');
INSERT INTO reviews VALUES (200000000, 'Garbiella','Perich', 4, 'Shawshank Redemption', '1994');
INSERT INTO reviews VALUES (200000000, 'Garbiella','Perich', 5, 'Incredibles 2', '2016');
INSERT INTO reviews VALUES (300000000, 'Abigail','Lam', 5, 'The Godfather', '1972');
INSERT INTO reviews VALUES (300000000, 'Abigail','Lam', 4, The Black Swan','2010');
INSERT INTO reviews VALUES (400000000, 'Kelly','McGuigan', 1, 'Dune Part One', '2021');
INSERT INTO reviews VALUES (400000000, 'Kelly','McGuigan', 5, 'Shawshank Redemption', '1994');
INSERT INTO reviews VALUES (500000000, 'John','Samonte', 3, 'Incredibles 2', '2016');
INSERT INTO reviews VALUES (500000000, 'John','Samonte', 5, 'The Godfather', '1972');
--
INSERT INTO watchLaterList VALUES ('The Black Swan','2010', 100000000, Y);
INSERT INTO watchLaterList VALUES ('The Black Swan','2010', 200000000, N);
INSERT INTO watchLaterList VALUES ('The Black Swan','2010', 300000000, Y);
INSERT INTO watchLaterList VALUES ('The Black Swan','2010', 400000000, N);
INSERT INTO watchLaterList VALUES ('The Black Swan','2010', 500000000, N);



