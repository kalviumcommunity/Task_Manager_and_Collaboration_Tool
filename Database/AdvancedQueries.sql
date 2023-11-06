USE task_manager_and_collaboration_tool;

SHOW TABLES;

-- 1. Find All Collaborators on a Specific Board with Their Roles
SELECT 
    Users.user_name, 
    Roles.role_name 
FROM 
    Collaborators 
JOIN 
    Users ON Collaborators.user_id = Users.user_id 
JOIN 
    Roles ON Collaborators.role_id = Roles.role_id 
WHERE 
    Collaborators.board_id = 1;


-- 2. Get the Number of Cards in Each List with a Subquery
SELECT 
    Lists.title, 
    (SELECT COUNT(*) FROM Cards WHERE Cards.list_id = Lists.list_id) AS NumberOfCards 
FROM 
    Lists;
