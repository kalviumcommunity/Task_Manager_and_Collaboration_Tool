
-- Measure query execution time BEFORE indexing
SELECT NOW(); -- Record the start time
-- Run your complex join query
SELECT 
    c.title AS CardTitle, 
    l.title AS ListTitle, 
    b.board_name AS BoardName 
FROM 
    Cards c
JOIN 
    Lists l ON c.list_id = l.list_id
JOIN 
    Boards b ON l.board_id = b.board_id
JOIN 
    Users u ON b.owner_id = u.user_id
WHERE 
    u.user_id = 1; -- Example user_id

SELECT NOW(); -- Record the end time

-- Apply the indexes
CREATE INDEX idx_cards_list_id ON Cards(list_id);
CREATE INDEX idx_lists_board_id ON Lists(board_id);
CREATE INDEX idx_boards_owner_id ON Boards(owner_id);
-- Add any other indexes you deem necessary

-- Measure query execution time AFTER indexing
SELECT NOW(); -- Record the start time

-- Run the same complex join query again
SELECT 
    c.title AS CardTitle, 
    l.title AS ListTitle, 
    b.board_name AS BoardName 
FROM 
    Cards c
JOIN 
    Lists l ON c.list_id = l.list_id
JOIN 
    Boards b ON l.board_id = b.board_id
JOIN 
    Users u ON b.owner_id = u.user_id
WHERE 
    u.user_id = 1; -- Example user_id

SELECT NOW(); -- Record the end time



SHOW INDEX FROM Cards;
SHOW INDEX FROM Lists;
SHOW INDEX FROM Boards;


ALTER TABLE Cards DROP FOREIGN KEY cards_ibfk_1;
ALTER TABLE Lists DROP FOREIGN KEY lists_ibfk_1;
ALTER TABLE boards DROP FOREIGN KEY boards_ibfk_1;

-- //Drop INDEXES

DROP INDEX idx_cards_list_id ON Cards;
DROP INDEX idx_lists_board_id ON Lists;
DROP INDEX idx_boards_owner_id ON Boards;



