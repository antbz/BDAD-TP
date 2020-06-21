PRAGMA foreign_keys = 'ON';

SELECT caption
FROM Photo P JOIN User U ON P.user = U.id
WHERE U.name = 'Daniel Ramos' AND julianday(uploadDate) = julianday(creationDate) + 2;