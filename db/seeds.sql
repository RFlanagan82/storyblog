-- RUN users and INSERTS --

INSERT INTO users (full_name, numOfPosts,createdAt,updatedAt) VALUES ("Indiana Jones", 2, NOW(), NOW());
INSERT INTO users (full_name, numOfPosts,createdAt,updatedAt) VALUES ("Bart Simpson", 3, NOW(), NOW());
INSERT INTO users (full_name, numOfPosts,createdAt,updatedAt) VALUES ("Darth Vader", 6, NOW(), NOW());
INSERT INTO users (full_name, numOfPosts,createdAt,updatedAt) VALUES ("Wayne Campbell", 4, NOW(), NOW());
INSERT INTO users (full_name, numOfPosts,createdAt,updatedAt) VALUES ("Garth Algar", 5, NOW(), NOW());
INSERT INTO users (full_name, numOfPosts,createdAt,updatedAt) VALUES ("Al Bundy", 2, NOW(), NOW());

SELECT * FROM blogentries_db.users;

-- END with RUN Posts and INSERTS --

INSERT INTO posts (title, authorName, body, category, createdAt, updatedAt, userID) VALUES("Cool Exposition Idea!","Indiana Jones","Start with main character in a cave on a clear night.", "Ideas", NOW(), NOW(), 1);

INSERT INTO posts (title, authorName, body, category, createdAt, updatedAt, userID) VALUES("Alien Abduction and Future!","Bart Simpson","What if he was able to see his future after alien abduction", "Ideas", NOW(), NOW(), 2);

INSERT INTO posts (title, authorName, body, category, createdAt, updatedAt, userID) VALUES("Possible Titles","Darth Vader","The Longest Journey, Insidious Intent, A Dance with Darth", "Names", NOW(), NOW(), 3);

SELECT * FROM blogentries_db.posts;