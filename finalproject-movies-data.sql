INSERT INTO account VALUES ('Michael', 'Harrison', 5986789841913478,'2839 7th Street Austin, TX',000000001);
INSERT INTO account VALUES ('Gabriella', 'Perich',4027827726206550,'917 State Ave , Salem, OR',000000002);
INSERT INTO account VALUES ('Abigail','Lam',9859016958976607,'182 Funston, Miami, FL',000000003);
INSERT INTO account VALUES ('Kelly','McGuigan',7472280248950623, '123 Peachtree, Raleigh, NC',000000004);
INSERT INTO account VALUES ('John','Samonte',6550537440192872,'45 Irving Ave, Chicago, IL',000000005);
--
INSERT INTO profile VALUES ('Michael', 'Harrison', 000000001, 100000000, 'Y', 'The Black Swan');
INSERT INTO profile VALUES ('Gabriella', 'Perich', 000000002, 200000000, 'Y', 'Shawshank Redemption');
INSERT INTO profile VALUES ('Abigail','Lam', 000000003, 300000000, 'N', 'Incredibles 2');
INSERT INTO profile VALUES ('Kelly','McGuigan',000000004,400000000,'Y', 'The Godfather');
INSERT INTO profile VALUES ('John','Samonte',000000005, 500000000, 'Y', 'Dune Part One');
--
INSERT INTO movies VALUES (000000001,'The Black Swan','2010', 000000021, 'thriller',108,'Nina or Natalie Portman is a ballerina whose passion for the dance rules every facet of her life. When the artistic director of the company decides to replace his prima ballerina for their opening production of Swan Lake
  Nina is his first choice. She has competition in newcomer Lily Mila Kunis however. 
  While Nina is perfect for the role of the White Swan, Lily personifies the Black Swan. 
  As rivalry between the two dancers transforms into a twisted friendship then the dark side of Nina begins to emerge',000000011, 'Fox Searchlight Pictures');
INSERT INTO movies VALUES (000000002, 'Shawshank Redemption', '1994', 000000022, 'drama', 162, 'Andy Dufresne or Tim Robbins is sentenced to two consecutive life terms in prison for the murders of his wife 
    and her lover and is sentenced to a tough prison. Only Andy knows he did not commit the crimes. While there
    he forms a friendship with Red or Morgan Freeman and experiences everyday prisonall in 19 years.', 000000012, 'Castlerock Entertainment');
INSERT INTO movies VALUES (000000003, 'Incredibles 2', '2018', 000000023, 'superhero', 119,'Telecommunications guru Winston Deavor enlists Elastigirl to fight crime and make the public fall in love with superheroes once again. 
    That leaves Mr. Incredible with one of his greatest challenges ever -- staying home and taking care of three rambunctious children. 
    As Violet, Dash and Jack-Jack offer him a new set of headaches, a cybercriminal named Screenslaver launches his dastardly plan -- 
    hypnotizing the world through computer screens.', 000000013, 'Walt Disney Animations Studios Film');
INSERT INTO movies VALUES (000000004, 'The Godfather', '1972', 000000024, 'crime', 175,'Based on Mario Puzo novel of the same name it focuses on the powerful Italian-American crime family of Don Vito Corleone or Marlon Brando. 
    When the youngest sonof the don Michael or Al Pacino reluctantly joins the Mafia he becomes involved in the inevitable cycle of violence and betrayal. 
    Although Michael tries to maintain a normal relationship with his wife named Kay or Diane Keaton he is drawn deeper into the family business.', 000000014, 'Paramount Pictures');
INSERT INTO movies VALUES(000000005, 'Dune: Part One', '2021', 000000025, 'science fiction', 155, 'Paul Atreides or a brilliant and gifted young man born into a great destiny beyond his understanding must travel to the most dangerous planet in the universe 
    to ensure the future of his family and his people. As malevolent forces explode into conflict over the planets exclusive supply 
    of the most precious resource in existence, only those who can conquer their own fear will survive.', 000000015, 'Legendary Entertainment');
--
INSERT INTO castInfo VALUES (000000011, 'Natalie', 'Portman', '09-JUN-1981', 000000001);
INSERT INTO castInfo VALUES (000000012, 'Morgan', 'Freeman', '01-JUN-1937', 000000002);
INSERT INTO castInfo VALUES (000000013, 'Sarah', 'Vowell', '27-DEC-1969', 000000003);
INSERT INTO castInfo VALUES (000000014, 'Al', 'Pacino', '25-APR-1940', 000000004);
INSERT INTO castInfo VALUES (000000015, 'Timotheé', 'Chalamet', '27-DEC-1995', 000000005);

--
INSERT INTO director VALUES (000000021, 'Darren', 'Aronofsky', '12-FEB-1969', 000000001);
INSERT INTO director VALUES (000000022, 'Frank', 'Darabont', '28-JAN-1959', 000000002);
INSERT INTO director VALUES (000000023, 'Brad', 'Bird', '27-SEP-1957', 000000003);
INSERT INTO director VALUES (000000024, 'Francis', 'Coppola', '07-APR-1939', 000000004);
INSERT INTO director VALUES (000000025, 'Denis', 'Villeneuve', '03-OCT-1967',000000005);
--
INSERT INTO productionCompany VALUES ('Fox Searchlight Pictures', 000000001, '10201 W Pico Blvd, LA, CA');
INSERT INTO productionCompany VALUES ('Castlerock Entertainment', 000000002, '335 N Maple Dr, Beverly Hills, CA');
INSERT INTO productionCompany VALUES ('Walt Disney Animations Studios Film', 000000003, '2100 W Riverside Drive, Burbank, CA');
INSERT INTO productionCompany VALUES ('Paramount Pictures', 000000004, '5555 Melrose Avenue, Hollywood, California');
INSERT INTO productionCompany VALUES ('Legendary Entertainment', 000000005, '2900 W Alameda Ave, Burbank, CA');
--
INSERT INTO reviews VALUES (000000031, 100000000, 5, 000000001);
INSERT INTO reviews VALUES (000000032, 100000000, 3, 000000001);
INSERT INTO reviews VALUES (000000033, 200000000, 4, 000000005);
INSERT INTO reviews VALUES (000000034, 200000000, 5, 000000005);
INSERT INTO reviews VALUES (000000035, 300000000, 5, 000000003);
INSERT INTO reviews VALUES (000000036, 300000000, 4, 000000003);
INSERT INTO reviews VALUES (000000037, 400000000, 1, 000000002);
INSERT INTO reviews VALUES (000000038, 400000000, 5, 000000002);
INSERT INTO reviews VALUES (000000039, 500000000, 3, 000000004);
INSERT INTO reviews VALUES (000000310, 500000000, 5, 000000004);
--