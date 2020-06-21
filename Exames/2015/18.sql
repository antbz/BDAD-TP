DROP VIEW IF EXISTS amigosDR;

CREATE VIEW amigosDR AS
    SELECT id FROM User WHERE name = 'Daniel Ramos'
    UNION
    SELECT user2
    FROM Friend
    WHERE user1 = (SELECT id FROM User WHERE name = 'Daniel Ramos')
    UNION
    SELECT user2
    FROM Friend
    WHERE user1 IN (SELECT user2
                    FROM Friend
                    WHERE user1 = (SELECT id FROM User WHERE name = 'Daniel Ramos'));

SELECT caption
FROM Photo
WHERE id IN (SELECT photo FROM AppearsIn WHERE user IN amigosDR);