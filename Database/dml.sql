SHOW DATABASES;

USE task_manager_and_collaboration_tool;

SHOW TABLES;

-- //  Select, Insert, Update, Delete --> DML Commands

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










SELECT * FROM boards;
-- //Large dataset's importing

INSERT INTO boards (board_name, board_description, is_collaborative, owner_id)
VALUES 
    ('Board Name 2', 'Description for Board 2', 1, 1),
    ('Board Name 3', 'Description for Board 3', 1, 1),
    ('Board Name 4', 'Description for Board 4', 1, 1),
    ('Board Name 5', 'Description for Board 5', 1, 1),
    ('Board Name 6', 'Description for Board 6', 1, 1),
    ('Board Name 7', 'Description for Board 7', 1, 1),
    ('Board Name 8', 'Description for Board 8', 1, 1),
    ('Board Name 9', 'Description for Board 9', 1, 1),
    ('Board Name 10', 'Description for Board 10', 1, 1),
    ('Board Name 11', 'Description for Board 11', 1, 1),
    ('Board Name 12', 'Description for Board 12', 1, 1),
    ('Board Name 13', 'Description for Board 13', 1, 1),
    ('Board Name 14', 'Description for Board 14', 1, 1),
    ('Board Name 15', 'Description for Board 15', 1, 1),
    ('Board Name 16', 'Description for Board 16', 1, 1),
    ('Board Name 17', 'Description for Board 17', 1, 1),
    ('Board Name 18', 'Description for Board 18', 1, 1),
    ('Board Name 19', 'Description for Board 19', 1, 1),
    ('Board Name 20', 'Description for Board 20', 1, 1),
    ('Board Name 21', 'Description for Board 21', 1, 1),
    ('Board Name 22', 'Description for Board 22', 1, 1),
    ('Board Name 23', 'Description for Board 23', 1, 1),
    ('Board Name 24', 'Description for Board 24', 1, 1),
    ('Board Name 25', 'Description for Board 25', 1, 1),
    ('Board Name 26', 'Description for Board 26', 1, 1),
    ('Board Name 27', 'Description for Board 27', 1, 1),
    ('Board Name 28', 'Description for Board 28', 1, 1),
    ('Board Name 29', 'Description for Board 29', 1, 1),
    ('Board Name 30', 'Description for Board 30', 1, 1),
    ('Board Name 31', 'Description for Board 31', 1, 1),
    ('Board Name 32', 'Description for Board 32', 1, 1),
    ('Board Name 33', 'Description for Board 33', 1, 1),
    ('Board Name 34', 'Description for Board 34', 1, 1),
    ('Board Name 35', 'Description for Board 35', 1, 1),
    ('Board Name 36', 'Description for Board 36', 1, 1),
    ('Board Name 37', 'Description for Board 37', 1, 1),
    ('Board Name 38', 'Description for Board 38', 1, 1),
    ('Board Name 39', 'Description for Board 39', 1, 1),
    ('Board Name 40', 'Description for Board 40', 1, 1),
    ('Board Name 41', 'Description for Board 41', 1, 1),
    ('Board Name 42', 'Description for Board 42', 1, 1),
    ('Board Name 43', 'Description for Board 43', 1, 1),
    ('Board Name 44', 'Description for Board 44', 1, 1),
    ('Board Name 45', 'Description for Board 45', 1, 1),
    ('Board Name 46', 'Description for Board 46', 1, 1),
    ('Board Name 47', 'Description for Board 47', 1, 1),
    ('Board Name 48', 'Description for Board 48', 1, 1),
    ('Board Name 49', 'Description for Board 49', 1, 1),
    ('Board Name 50', 'Description for Board 50', 1, 1),
    ('Board Name 51', 'Description for Board 51', 1, 1),
    ('Board Name 52', 'Description for Board 52', 1, 1),
    ('Board Name 53', 'Description for Board 53', 1, 1),
    ('Board Name 54', 'Description for Board 54', 1, 1),
    ('Board Name 55', 'Description for Board 55', 1, 1),
    ('Board Name 56', 'Description for Board 56', 1, 1),
    ('Board Name 57', 'Description for Board 57', 1, 1),
    ('Board Name 58', 'Description for Board 58', 1, 1),
    ('Board Name 59', 'Description for Board 59', 1, 1),
    ('Board Name 60', 'Description for Board 60', 1, 1),
    ('Board Name 61', 'Description for Board 61', 1, 1),
    ('Board Name 62', 'Description for Board 62', 1, 1),
    ('Board Name 63', 'Description for Board 63', 1, 1),
    ('Board Name 64', 'Description for Board 64', 1, 1),
    ('Board Name 65', 'Description for Board 65', 1, 1),
    ('Board Name 66', 'Description for Board 66', 1, 1),
    ('Board Name 67', 'Description for Board 67', 1, 1),
    ('Board Name 68', 'Description for Board 68', 1, 1),
    ('Board Name 69', 'Description for Board 69', 1, 1),
    ('Board Name 70', 'Description for Board 70', 1, 1),
    ('Board Name 71', 'Description for Board 71', 1, 1),
    ('Board Name 72', 'Description for Board 72', 1, 1),
    ('Board Name 73', 'Description for Board 73', 1, 1),
    ('Board Name 74', 'Description for Board 74', 1, 1),
    ('Board Name 75', 'Description for Board 75', 1, 1),
    ('Board Name 76', 'Description for Board 76', 1, 1),
    ('Board Name 77', 'Description for Board 77', 1, 1),
    ('Board Name 78', 'Description for Board 78', 1, 1),
    ('Board Name 79', 'Description for Board 79', 1, 1),
    ('Board Name 80', 'Description for Board 80', 1, 1),
    ('Board Name 81', 'Description for Board 81', 1, 1),
    ('Board Name 82', 'Description for Board 82', 1, 1),
    ('Board Name 83', 'Description for Board 83', 1, 1),
    ('Board Name 84', 'Description for Board 84', 1, 1),
    ('Board Name 85', 'Description for Board 85', 1, 1),
    ('Board Name 86', 'Description for Board 86', 1, 1),
    ('Board Name 87', 'Description for Board 87', 1, 1),
    ('Board Name 88', 'Description for Board 88', 1, 1),
    ('Board Name 89', 'Description for Board 89', 1, 1),
    ('Board Name 90', 'Description for Board 90', 1, 1),
    ('Board Name 91', 'Description for Board 91', 1, 1),
    ('Board Name 92', 'Description for Board 92', 1, 1),
    ('Board Name 93', 'Description for Board 93', 1, 1),
    ('Board Name 94', 'Description for Board 94', 1, 1),
    ('Board Name 95', 'Description for Board 95', 1, 1),
    ('Board Name 96', 'Description for Board 96', 1, 1),
    ('Board Name 97', 'Description for Board 97', 1, 1),
    ('Board Name 98', 'Description for Board 98', 1, 1),
    ('Board Name 99', 'Description for Board 99', 1, 1),
    ('Board Name 100', 'Description for Board 100', 1, 1),
    ('Board Name 101', 'Description for Board 101', 1, 1),
    ('Board Name 102', 'Description for Board 102', 1, 1),
    ('Board Name 103', 'Description for Board 103', 1, 1),
    ('Board Name 104', 'Description for Board 104', 1, 1),
    ('Board Name 105', 'Description for Board 105', 1, 1),
    ('Board Name 106', 'Description for Board 106', 1, 1),
    ('Board Name 107', 'Description for Board 107', 1, 1),
    ('Board Name 108', 'Description for Board 108', 1, 1),
    ('Board Name 109', 'Description for Board 109', 1, 1),
    ('Board Name 110', 'Description for Board 110', 1, 1),
    ('Board Name 111', 'Description for Board 111', 1, 1),
    ('Board Name 112', 'Description for Board 112', 1, 1),
    ('Board Name 113', 'Description for Board 113', 1, 1),
    ('Board Name 114', 'Description for Board 114', 1, 1),
    ('Board Name 115', 'Description for Board 115', 1, 1),
    ('Board Name 116', 'Description for Board 116', 1, 1),
    ('Board Name 117', 'Description for Board 117', 1, 1),
    ('Board Name 118', 'Description for Board 118', 1, 1),
    ('Board Name 119', 'Description for Board 119', 1, 1),
    ('Board Name 120', 'Description for Board 120', 1, 1),
    ('Board Name 121', 'Description for Board 121', 1, 1),
    ('Board Name 122', 'Description for Board 122', 1, 1),
    ('Board Name 123', 'Description for Board 123', 1, 1),
    ('Board Name 124', 'Description for Board 124', 1, 1),
    ('Board Name 125', 'Description for Board 125', 1, 1),
    ('Board Name 126', 'Description for Board 126', 1, 1),
    ('Board Name 127', 'Description for Board 127', 1, 1),
    ('Board Name 128', 'Description for Board 128', 1, 1),
    ('Board Name 129', 'Description for Board 129', 1, 1),
    ('Board Name 130', 'Description for Board 130', 1, 1),
    ('Board Name 131', 'Description for Board 131', 1, 1),
    ('Board Name 132', 'Description for Board 132', 1, 1),
    ('Board Name 133', 'Description for Board 133', 1, 1),
    ('Board Name 134', 'Description for Board 134', 1, 1),
    ('Board Name 135', 'Description for Board 135', 1, 1),
    ('Board Name 136', 'Description for Board 136', 1, 1),
    ('Board Name 137', 'Description for Board 137', 1, 1),
    ('Board Name 138', 'Description for Board 138', 1, 1),
    ('Board Name 139', 'Description for Board 139', 1, 1),
    ('Board Name 140', 'Description for Board 140', 1, 1),
    ('Board Name 141', 'Description for Board 141', 1, 1),
    ('Board Name 142', 'Description for Board 142', 1, 1),
    ('Board Name 143', 'Description for Board 143', 1, 1),
    ('Board Name 144', 'Description for Board 144', 1, 1),
    ('Board Name 145', 'Description for Board 145', 1, 1),
    ('Board Name 146', 'Description for Board 146', 1, 1),
    ('Board Name 147', 'Description for Board 147', 1, 1),
    ('Board Name 148', 'Description for Board 148', 1, 1),
    ('Board Name 149', 'Description for Board 149', 1, 1),
    ('Board Name 150', 'Description for Board 150', 1, 1),
    ('Board Name 151', 'Description for Board 151', 1, 1),
    ('Board Name 152', 'Description for Board 152', 1, 1),
    ('Board Name 153', 'Description for Board 153', 1, 1),
    ('Board Name 154', 'Description for Board 154', 1, 1),
    ('Board Name 155', 'Description for Board 155', 1, 1),
    ('Board Name 156', 'Description for Board 156', 1, 1),
    ('Board Name 157', 'Description for Board 157', 1, 1),
    ('Board Name 158', 'Description for Board 158', 1, 1),
    ('Board Name 159', 'Description for Board 159', 1, 1),
    ('Board Name 160', 'Description for Board 160', 1, 1),
    ('Board Name 161', 'Description for Board 161', 1, 1),
    ('Board Name 162', 'Description for Board 162', 1, 1),
    ('Board Name 163', 'Description for Board 163', 1, 1),
    ('Board Name 164', 'Description for Board 164', 1, 1),
    ('Board Name 165', 'Description for Board 165', 1, 1),
    ('Board Name 166', 'Description for Board 166', 1, 1),
    ('Board Name 167', 'Description for Board 167', 1, 1),
    ('Board Name 168', 'Description for Board 168', 1, 1),
    ('Board Name 169', 'Description for Board 169', 1, 1),
    ('Board Name 170', 'Description for Board 170', 1, 1),
    ('Board Name 171', 'Description for Board 171', 1, 1),
    ('Board Name 172', 'Description for Board 172', 1, 1),
    ('Board Name 173', 'Description for Board 173', 1, 1),
    ('Board Name 174', 'Description for Board 174', 1, 1),
    ('Board Name 175', 'Description for Board 175', 1, 1),
    ('Board Name 176', 'Description for Board 176', 1, 1),
    ('Board Name 177', 'Description for Board 177', 1, 1),
    ('Board Name 178', 'Description for Board 178', 1, 1),
    ('Board Name 179', 'Description for Board 179', 1, 1),
    ('Board Name 180', 'Description for Board 180', 1, 1),
    ('Board Name 181', 'Description for Board 181', 1, 1),
    ('Board Name 182', 'Description for Board 182', 1, 1),
    ('Board Name 183', 'Description for Board 183', 1, 1),
    ('Board Name 184', 'Description for Board 184', 1, 1),
    ('Board Name 185', 'Description for Board 185', 1, 1),
    ('Board Name 186', 'Description for Board 186', 1, 1),
    ('Board Name 187', 'Description for Board 187', 1, 1),
    ('Board Name 188', 'Description for Board 188', 1, 1),
    ('Board Name 189', 'Description for Board 189', 1, 1),
    ('Board Name 190', 'Description for Board 190', 1, 1),
    ('Board Name 191', 'Description for Board 191', 1, 1),
    ('Board Name 192', 'Description for Board 192', 1, 1),
    ('Board Name 193', 'Description for Board 193', 1, 1),
    ('Board Name 194', 'Description for Board 194', 1, 1),
    ('Board Name 195', 'Description for Board 195', 1, 1),
    ('Board Name 196', 'Description for Board 196', 1, 1),
    ('Board Name 197', 'Description for Board 197', 1, 1),
    ('Board Name 198', 'Description for Board 198', 1, 1),
    ('Board Name 199', 'Description for Board 199', 1, 1),
    ('Board Name 200', 'Description for Board 200', 1, 1);

    

SELECT * FROM lists;
-- Inserting Lists into the Lists Table for the first 20 boards with around 5 lists each

INSERT INTO lists (title, board_id)
VALUES
    ('List 4', 2),
    ('List 5', 2),
    ('List 6', 2),
    ('List 7', 2),
    ('List 8', 2),
    ('List 9', 3),
    ('List 10', 3),
    ('List 11', 3),
    ('List 12', 3),
    ('List 13', 3),
    
    -- Lists for Board 4
    ('List 14', 4),
    ('List 15', 4),
    ('List 16', 4),
    ('List 17', 4),
    ('List 18', 4),
    
    -- Lists for Board 5
    ('List 19', 5),
    ('List 20', 5),
    ('List 21', 5),
    ('List 22', 5),
    ('List 23', 5),
    
    -- Lists for Board 6
    ('List 24', 6),
    ('List 25', 6),
    ('List 26', 6),
    ('List 27', 6),
    ('List 28', 6),
    
    -- Lists for Board 7
    ('List 29', 7),
    ('List 30', 7),
    ('List 31', 7),
    ('List 32', 7),
    ('List 33', 7),
    
    -- Lists for Board 8
    ('List 34', 8),
    ('List 35', 8),
    ('List 36', 8),
    ('List 37', 8),
    ('List 38', 8),
    
    -- Lists for Board 9
    ('List 39', 9),
    ('List 40', 9),
    ('List 41', 9),
    ('List 42', 9),
    ('List 43', 9),
    
    -- Lists for Board 10 (including lists 49 and 50)
    ('List 44', 10),
    ('List 45', 10),
    ('List 46', 10),
    ('List 47', 10),
    ('List 48', 10),
    ('List 49', 10),
    ('List 50', 10), 
    
    -- Lists for Board 11
    ('List 51', 11),
    ('List 52', 11),
    ('List 53', 11),
    ('List 54', 11),
    ('List 55', 11),
    ('List 56', 12),
    ('List 57', 12),
    ('List 58', 12),
    ('List 59', 12),
    ('List 60', 12),
    ('List 61', 21),
    ('List 62', 21),
    ('List 63', 21),
    ('List 64', 21),
    ('List 65', 21),
    ('List 66', 22),
    ('List 67', 22),
    ('List 68', 22),
    ('List 69', 22),
    ('List 70', 22),
    ('List 71', 23),
    ('List 72', 23),
    ('List 73', 23),
    ('List 74', 23),
    ('List 75', 23),
    ('List 76', 24),
    ('List 77', 24),
    ('List 78', 24),
    ('List 79', 24),
    ('List 80', 24),
    ('List 81', 25),
    ('List 82', 25),
    ('List 83', 25),
    ('List 84', 25),
    ('List 85', 25),
    ('List 86', 26),
    ('List 87', 26),
    ('List 88', 26),
    ('List 89', 26),
    ('List 90', 26),
    ('List 91', 27),
    ('List 92', 27),
    ('List 93', 27),
    ('List 94', 27),
    ('List 95', 27),
    ('List 96', 28),
    ('List 97', 28),
    ('List 98', 28),
    ('List 99', 28),
    ('List 100', 28),
    ('List 101', 29),
    ('List 102', 29),
    ('List 103', 29),
    ('List 104', 29),
    ('List 105', 29),
    ('List 106', 30),
    ('List 107', 30),
    ('List 108', 30),
    ('List 109', 30),
    ('List 110', 30),
    ('List 111', 31),
    ('List 112', 31),
    ('List 113', 31),
    ('List 114', 31),
    ('List 115', 31),
    ('List 116', 32),
    ('List 117', 32),
    ('List 118', 32),
    ('List 119', 32),
    ('List 120', 32),
    ('List 121', 33),
    ('List 122', 33),
    ('List 123', 33),
    ('List 124', 33),
    ('List 125', 33),
    ('List 126', 34),
    ('List 127', 34),
    ('List 128', 34),
    ('List 129', 34),
    ('List 130', 34),
    ('List 131', 35),
    ('List 132', 35),
    ('List 133', 35),
    ('List 134', 35),
    ('List 135', 35),
    ('List 136', 36),
    ('List 137', 36),
    ('List 138', 36),
    ('List 139', 36),
    ('List 140', 36),
    ('List 141', 37),
    ('List 142', 37),
    ('List 143', 37),
    ('List 144', 37),
    ('List 145', 37),
    ('List 146', 38),
    ('List 147', 38),
    ('List 148', 38),
    ('List 149', 38),
    ('List 150', 38),
    ('List 151', 39),
    ('List 152', 39),
    ('List 153', 39),
    ('List 154', 39),
    ('List 155', 39),
    ('List 156', 40),
    ('List 157', 40),
    ('List 158', 40),
    ('List 159', 40),
    ('List 160', 40),
    ('List 161', 41),
    ('List 162', 41),
    ('List 163', 41),
    ('List 164', 41),
    ('List 165', 41),
    ('List 166', 42),
    ('List 167', 42),
    ('List 168', 42),
    ('List 169', 42),
    ('List 170', 42),
    ('List 171', 43),
    ('List 172', 43),
    ('List 173', 43),
    ('List 174', 43),
    ('List 175', 43),
    ('List 176', 44),
    ('List 177', 44),
    ('List 178', 44),
    ('List 179', 44),
    ('List 180', 44),
    ('List 181', 45),
    ('List 182', 45),
    ('List 183', 45),
    ('List 184', 45),
    ('List 185', 45),
    ('List 186', 46),
    ('List 187', 46),
    ('List 188', 46),
    ('List 189', 46),
    ('List 190', 46),
    ('List 191', 47),
    ('List 192', 47),
    ('List 193', 47),
    ('List 194', 47),
    ('List 195', 47),
    ('List 196', 48),
    ('List 197', 48),
    ('List 198', 48),
    ('List 199', 48),
    ('List 200', 48);



SELECT * FROM cards;
INSERT INTO cards (title, description, list_id)
VALUES
    ('Task 5', 'Description for Task 5', 2),
    ('Task 6', 'Description for Task 6', 2),
    ('Task 7', 'Description for Task 7', 2),
    ('Task 8', 'Description for Task 8', 2),
    ('Task 9', 'Description for Task 9', 2),
    ('Task 10', 'Description for Task 10', 3),
    ('Task 11', 'Description for Task 11', 3),
    ('Task 12', 'Description for Task 12', 3),
    ('Task 13', 'Description for Task 13', 3),
    ('Task 14', 'Description for Task 14', 3),
    ('Task 15', 'Description for Task 15', 4),
    ('Task 16', 'Description for Task 16', 4),
    ('Task 17', 'Description for Task 17', 4),
    ('Task 18', 'Description for Task 18', 4),
    ('Task 19', 'Description for Task 19', 4),
    ('Task 20', 'Description for Task 20', 5),
    ('Task 21', 'Description for Task 21', 5),
    ('Task 22', 'Description for Task 22', 5),
    ('Task 23', 'Description for Task 23', 5),
    ('Task 24', 'Description for Task 24', 5),
    ('Task 25', 'Description for Task 25', 6),
    ('Task 26', 'Description for Task 26', 6),
    ('Task 27', 'Description for Task 27', 6),
    ('Task 28', 'Description for Task 28', 6),
    ('Task 29', 'Description for Task 29', 6),
    ('Task 30', 'Description for Task 30', 7),
    ('Task 31', 'Description for Task 31', 7),
    ('Task 32', 'Description for Task 32', 7),
    ('Task 33', 'Description for Task 33', 7),
    ('Task 34', 'Description for Task 34', 7),
    ('Task 35', 'Description for Task 35', 8),
    ('Task 36', 'Description for Task 36', 8),
    ('Task 37', 'Description for Task 37', 8),
    ('Task 38', 'Description for Task 38', 8),
    ('Task 39', 'Description for Task 39', 8),
    ('Task 40', 'Description for Task 40', 9),
    ('Task 41', 'Description for Task 41', 9),
    ('Task 42', 'Description for Task 42', 9),
    ('Task 43', 'Description for Task 43', 9),
    ('Task 44', 'Description for Task 44', 9),
    ('Task 45', 'Description for Task 45', 10),
    ('Task 46', 'Description for Task 46', 10),
    ('Task 47', 'Description for Task 47', 10),
    ('Task 48', 'Description for Task 48', 10),
    ('Task 49', 'Description for Task 49', 10),
    ('Task 50', 'Description for Task 50', 11),
    ('Task 51', 'Description for Task 51', 11),
    ('Task 52', 'Description for Task 52', 11),
    ('Task 53', 'Description for Task 53', 11),
    ('Task 54', 'Description for Task 54', 11),
    ('Task 55', 'Description for Task 55', 12),
    ('Task 56', 'Description for Task 56', 12),
    ('Task 57', 'Description for Task 57', 12),
    ('Task 58', 'Description for Task 58', 12),
    ('Task 59', 'Description for Task 59', 12),
    ('Task 60', 'Description for Task 60', 13),
    ('Task 61', 'Description for Task 61', 13),
    ('Task 62', 'Description for Task 62', 13),
    ('Task 63', 'Description for Task 63', 13),
    ('Task 64', 'Description for Task 64', 13),
    ('Task 65', 'Description for Task 65', 14),
    ('Task 66', 'Description for Task 66', 14),
    ('Task 67', 'Description for Task 67', 14),
    ('Task 68', 'Description for Task 68', 14),
    ('Task 69', 'Description for Task 69', 14),
    ('Task 70', 'Description for Task 70', 15),
    ('Task 71', 'Description for Task 71', 15),
    ('Task 72', 'Description for Task 72', 15),
    ('Task 73', 'Description for Task 73', 15),
    ('Task 74', 'Description for Task 74', 15),
    ('Task 75', 'Description for Task 75', 16),
    ('Task 76', 'Description for Task 76', 16),
    ('Task 77', 'Description for Task 77', 16),
    ('Task 78', 'Description for Task 78', 16),
    ('Task 79', 'Description for Task 79', 16),
    ('Task 80', 'Description for Task 80', 17),
    ('Task 81', 'Description for Task 81', 17),
    ('Task 82', 'Description for Task 82', 17),
    ('Task 83', 'Description for Task 83', 17),
    ('Task 84', 'Description for Task 84', 17),
    ('Task 85', 'Description for Task 85', 18),
    ('Task 86', 'Description for Task 86', 18),
    ('Task 87', 'Description for Task 87', 18),
    ('Task 88', 'Description for Task 88', 18),
    ('Task 89', 'Description for Task 89', 18),
    ('Task 90', 'Description for Task 90', 19),
    ('Task 91', 'Description for Task 91', 19),
    ('Task 92', 'Description for Task 92', 19),
    ('Task 93', 'Description for Task 93', 19),
    ('Task 94', 'Description for Task 94', 19),
    ('Task 95', 'Description for Task 95', 20),
    ('Task 96', 'Description for Task 96', 20),
    ('Task 97', 'Description for Task 97', 20),
    ('Task 98', 'Description for Task 98', 20),
    ('Task 99', 'Description for Task 99', 20),
    ('Task 100', 'Description for Task 100', 20),
    ('Task 101', 'Description for Task 101', 21),
    ('Task 102', 'Description for Task 102', 21),
    ('Task 103', 'Description for Task 103', 21),
    ('Task 104', 'Description for Task 104', 21),
    ('Task 105', 'Description for Task 105', 21),
    ('Task 106', 'Description for Task 106', 22),
    ('Task 107', 'Description for Task 107', 22),
    ('Task 108', 'Description for Task 108', 22),
    ('Task 109', 'Description for Task 109', 22),
    ('Task 110', 'Description for Task 110', 22),
    ('Task 111', 'Description for Task 111', 23),
    ('Task 112', 'Description for Task 112', 23),
    ('Task 113', 'Description for Task 113', 23),
    ('Task 114', 'Description for Task 114', 23),
    ('Task 115', 'Description for Task 115', 23),
    ('Task 116', 'Description for Task 116', 24),
    ('Task 117', 'Description for Task 117', 24),
    ('Task 118', 'Description for Task 118', 24),
    ('Task 119', 'Description for Task 119', 24),
    ('Task 120', 'Description for Task 120', 24),
    ('Task 121', 'Description for Task 121', 25),
    ('Task 122', 'Description for Task 122', 25),
    ('Task 123', 'Description for Task 123', 25),
    ('Task 124', 'Description for Task 124', 25),
    ('Task 125', 'Description for Task 125', 25),
    ('Task 126', 'Description for Task 126', 26),
    ('Task 127', 'Description for Task 127', 26),
    ('Task 128', 'Description for Task 128', 26),
    ('Task 129', 'Description for Task 129', 26),
    ('Task 130', 'Description for Task 130', 26),
    ('Task 131', 'Description for Task 131', 27),
    ('Task 132', 'Description for Task 132', 27),
    ('Task 133', 'Description for Task 133', 27),
    ('Task 134', 'Description for Task 134', 27),
    ('Task 135', 'Description for Task 135', 27),
    ('Task 136', 'Description for Task 136', 28),
    ('Task 137', 'Description for Task 137', 28),
    ('Task 138', 'Description for Task 138', 28),
    ('Task 139', 'Description for Task 139', 28),
    ('Task 140', 'Description for Task 140', 28),
    ('Task 141', 'Description for Task 141', 29),
    ('Task 142', 'Description for Task 142', 29),
    ('Task 143', 'Description for Task 143', 29),
    ('Task 144', 'Description for Task 144', 29),
    ('Task 145', 'Description for Task 145', 29),
    ('Task 146', 'Description for Task 146', 30),
    ('Task 147', 'Description for Task 147', 30),
    ('Task 148', 'Description for Task 148', 30),
    ('Task 149', 'Description for Task 149', 30),
    ('Task 150', 'Description for Task 150', 30),
    ('Task 151', 'Description for Task 151', 31),
    ('Task 152', 'Description for Task 152', 31),
    ('Task 153', 'Description for Task 153', 31),
    ('Task 154', 'Description for Task 154', 31),
    ('Task 155', 'Description for Task 155', 31),
    ('Task 156', 'Description for Task 156', 32),
    ('Task 157', 'Description for Task 157', 32),
    ('Task 158', 'Description for Task 158', 32),
    ('Task 159', 'Description for Task 159', 32),
    ('Task 160', 'Description for Task 160', 32),
    ('Task 161', 'Description for Task 161', 33),
    ('Task 162', 'Description for Task 162', 33),
    ('Task 163', 'Description for Task 163', 33),
    ('Task 164', 'Description for Task 164', 33),
    ('Task 165', 'Description for Task 165', 33),
    ('Task 166', 'Description for Task 166', 34),
    ('Task 167', 'Description for Task 167', 34),
    ('Task 168', 'Description for Task 168', 34),
    ('Task 169', 'Description for Task 169', 34),
    ('Task 170', 'Description for Task 170', 34),
    ('Task 171', 'Description for Task 171', 35),
    ('Task 172', 'Description for Task 172', 35),
    ('Task 173', 'Description for Task 173', 35),
    ('Task 174', 'Description for Task 174', 35),
    ('Task 175', 'Description for Task 175', 35),
    ('Task 176', 'Description for Task 176', 36),
    ('Task 177', 'Description for Task 177', 36),
    ('Task 178', 'Description for Task 178', 36),
    ('Task 179', 'Description for Task 179', 36),
    ('Task 180', 'Description for Task 180', 36),
    ('Task 181', 'Description for Task 181', 37),
    ('Task 182', 'Description for Task 182', 37),
    ('Task 183', 'Description for Task 183', 37),
    ('Task 184', 'Description for Task 184', 37),
    ('Task 185', 'Description for Task 185', 37),
    ('Task 186', 'Description for Task 186', 38),
    ('Task 187', 'Description for Task 187', 38),
    ('Task 188', 'Description for Task 188', 38),
    ('Task 189', 'Description for Task 189', 38),
    ('Task 190', 'Description for Task 190', 38),
    ('Task 191', 'Description for Task 191', 39),
    ('Task 192', 'Description for Task 192', 39),
    ('Task 193', 'Description for Task 193', 39),
    ('Task 194', 'Description for Task 194', 39),
    ('Task 195', 'Description for Task 195', 39),
    ('Task 196', 'Description for Task 196', 40),
    ('Task 197', 'Description for Task 197', 40),
    ('Task 198', 'Description for Task 198', 40),
    ('Task 199', 'Description for Task 199', 40),
    ('Task 200', 'Description for Task 200', 40);
