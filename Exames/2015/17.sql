DROP VIEW IF EXISTS numTagged;
DROP VIEW IF EXISTS numLikes;

CREATE VIEW numTagged AS
    SELECT photo, COUNT(*) as numTagged
    FROM AppearsIn
    GROUP BY photo;

CREATE VIEW numLikes AS
    SELECT photo, COUNT(*) as numLikes
    FROM Likes
    GROUP BY photo;

SELECT AVG(numTagged)
FROM numTagged
WHERE photo IN (SELECT photo FROM numLikes WHERE numLikes > 3);