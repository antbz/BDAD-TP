DROP TABLE IF EXISTS AmizadeTransitiva;

CREATE TABLE AmizadeTransitiva (
    ID1 INTEGER REFERENCES Estudante,
    ID2 INTEGER REFERENCES Estudante,
    PRIMARY KEY (ID1, ID2)
);

INSERT INTO AmizadeTransitiva
SELECT E1.ID, E2.ID
FROM Estudante E1, Estudante E2
WHERE E1.ID <> E2.ID AND (E1.ID, E2.ID) NOT IN Amizade
AND E2.ID IN (SELECT ID2 
              FROM Amizade 
              WHERE ID1 IN (SELECT ID2 FROM Amizade WHERE ID1 = E1.ID));