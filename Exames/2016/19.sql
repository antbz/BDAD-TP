DROP TRIGGER IF EXISTS autoFriend;

CREATE TRIGGER autoFriend
AFTER INSERT ON Estudante
BEGIN
INSERT INTO Amizade SELECT New.ID, E.ID FROM Estudante WHERE E.ID <> New.ID AND E.curso = New.curso;
INSERT INTO Amizade SELECT E.ID, New.ID FROM Estudante WHERE E.ID <> New.ID AND E.curso = New.curso;
END;