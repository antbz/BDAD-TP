SELECT nome, anoCurricular
FROM Estudante JOIN numAmigos NA1 USING (ID)
WHERE NOT EXISTS (SELECT * FROM numAmigos NA2 WHERE NA2.numAmigos > NA1.numAmigos);