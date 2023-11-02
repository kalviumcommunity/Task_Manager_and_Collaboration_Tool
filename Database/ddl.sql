SHOW DATABASES;

USE task_manager_and_collaboration_tool;

SHOW TABLES;

-- Create the Users table

CREATE TABLE
    Users (
        user_id INT AUTO_INCREMENT PRIMARY KEY,
        user_name VARCHAR(255) NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        password_hash VARCHAR(255) NOT NULL
    );

SELECT * FROM Users;

-- Create the Roles table

CREATE TABLE
    Roles (
        role_id INT AUTO_INCREMENT PRIMARY KEY,
        role_name VARCHAR(255) NOT NULL,
        description TEXT
    );

-- SELECT * FROM Roles;

-- Create the UserRoles linking table

CREATE TABLE
    UserRoles (
        user_id INT,
        role_id INT,
        PRIMARY KEY (user_id, role_id),
        FOREIGN KEY (user_id) REFERENCES Users(user_id),
        FOREIGN KEY (role_id) REFERENCES Roles(role_id)
    );

DROP TABLE IF EXISTS userroles;
-- SELECT * FROM UserRoles;

-- Create the Boards table

CREATE TABLE
    Boards (
        board_id INT AUTO_INCREMENT PRIMARY KEY,
        board_name VARCHAR(255) NOT NULL,
        board_description TEXT,
        is_collaborative BOOLEAN,
        owner_id INT,
        FOREIGN KEY (owner_id) REFERENCES Users(user_id)
    );


SELECT * FROM Boards;

-- Create the Collaborators table

CREATE TABLE
    Collaborators (
        collaborator_id INT AUTO_INCREMENT PRIMARY KEY,
        board_id INT,
        FOREIGN KEY (board_id) REFERENCES Boards(board_id)
    );

-- SELECT * FROM Collaborators;

ALTER TABLE Collaborators
ADD COLUMN role_id INT,
ADD COLUMN user_id INT,
ADD
    FOREIGN KEY (role_id) REFERENCES Roles(role_id),
ADD
    FOREIGN KEY (user_id) REFERENCES Users(user_id);

-- Create the Lists table

CREATE TABLE
    Lists (
        list_id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        board_id INT,
        FOREIGN KEY (board_id) REFERENCES Boards(board_id)
    );

-- SELECT * FROM Lists;
 
-- Create the Cards table

CREATE TABLE
    Cards (
        card_id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        description TEXT,
        due_date DATE,
        list_id INT,
        FOREIGN KEY (list_id) REFERENCES Lists(list_id)
    );

-- SELECT * FROM Cards;

-- Create the Comments table

CREATE TABLE
    Comments (
        comment_id INT AUTO_INCREMENT PRIMARY KEY,
        content TEXT NOT NULL,
        timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        card_id INT,
        user_id INT,
        FOREIGN KEY (card_id) REFERENCES Cards(card_id),
        FOREIGN KEY (user_id) REFERENCES Users(user_id)
    );

-- SELECT * FROM Comments;

-- Create the Notifications table

CREATE TABLE
    Notifications (
        notification_id INT AUTO_INCREMENT PRIMARY KEY,
        content TEXT NOT NULL,
        timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        is_read BOOLEAN DEFAULT FALSE,
        user_id INT,
        FOREIGN KEY (user_id) REFERENCES Users(user_id)
    );

 





