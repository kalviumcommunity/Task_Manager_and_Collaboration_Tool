SHOW DATABASES;

USE task_manager_and_collaboration_tool;

SHOW TABLES;


INSERT INTO Users (user_name, email, password_hash)
VALUES 
    ('First User', 'firstuser@example.com', 'hashed_password1'),
    ('Dwayne Rock', 'therock_email@example.com', 'hashed_password2'),
    ('John Doe', 'johndoe@example.com', 'hashed_password3'),
    ('Alice Smith', 'alicesmith@example.com', 'hashed_password4');


SELECT * FROM Users;

UPDATE Users SET email = 'new_email@example.com' WHERE user_id = 1;

UPDATE Users SET email = 'new_email3@example.com' WHERE user_id = 3;

SELECT * FROM Boards;

-- Create a predefined board

INSERT INTO
    boards (
        board_name,
        board_description,
        is_collaborative,
        owner_id
    )
VALUES (
        'Predefined Board',
        'This board contains predefined tasks.',
        1,
        1
    );


SELECT * FROM lists;

-- Create predefined lists on the board

INSERT INTO
    lists (title, board_id)
VALUES ('To Do', 1), ('In Progress', 1), ('Done', 1);

-- Delete duplicate rows from the "lists" table

SELECT * FROM cards;

-- Create predefined cards and tasks in the lists

-- Task 1 on the "To Do" list

INSERT INTO
    cards (title, description, list_id)
VALUES (
        'Task 1',
        'This is a predefined task.',
        1
    );

-- Task 2 on the "To Do" list

INSERT INTO
    cards (title, description, list_id)
VALUES (
        'Task 2',
        'This is another predefined task.',
        1
    );

-- Task 3 on the "In Progress" list

INSERT INTO
    cards (title, description, list_id)
VALUES (
        'Task 3',
        'This is a task in progress.',
        2
    );

-- Task 4 on the "Done" list

INSERT INTO
    cards (title, description, list_id)
VALUES (
        'Task 4',
        'This task is completed.',
        3
    );

-- Insert the Manager role


SELECT * FROM roles;

INSERT INTO
    Roles (role_name, description)
VALUES (
        'Manager',
        'Has full administrative control over the project.'
    );

-- Insert the Member role

INSERT INTO
    Roles (role_name, description)
VALUES (
        'Member',
        'Can create and manage cards within boards and lists.'
    );

-- Insert the Viewer role

INSERT INTO
    Roles (role_name, description)
VALUES (
        'Viewer',
        'Has read-only access to project progress.'
    );


-- Collaborator 1: Manager for Board 1

SELECT * FROM collaborators;

INSERT INTO
    Collaborators (board_id, user_id, role_id)
VALUES (1, 1, 1);

-- Collaborator 2: Member for Board 1

INSERT INTO
    Collaborators (board_id, user_id, role_id)
VALUES (1, 2, 2);

-- Collaborator 3: Viewer for Board 1

INSERT INTO
    Collaborators (board_id, user_id, role_id)
VALUES (1, 3, 3);

-- Collaborator 4: Member for Board 1

INSERT INTO
    Collaborators (board_id, user_id, role_id)
VALUES (1, 4, 2);

-- Delete collaborator rows with collaborator_id between 1 and 2

DELETE FROM Collaborators WHERE collaborator_id = 10;

ALTER TABLE Collaborators AUTO_INCREMENT = 5;


SELECT * FROM Comments;

INSERT INTO
    Comments (content, card_id, user_id)
VALUES (
        'This is a sample comment.',
        1,
        1
    );

SELECT * FROM Notifications;

INSERT INTO
    Notifications (content, user_id)
VALUES (
        'You have a new notification.',
        1
    );











TRUNCATE TABLE Users;

TRUNCATE TABLE Roles;

TRUNCATE TABLE Boards;

TRUNCATE TABLE Collaborators;

TRUNCATE TABLE Lists;

TRUNCATE TABLE Cards;

TRUNCATE TABLE Comments;

TRUNCATE TABLE Notifications;


SET FOREIGN_KEY_CHECKS = 0;

SET FOREIGN_KEY_CHECKS = 1;
