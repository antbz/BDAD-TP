CREATE TRIGGER Clinica2A
BEFORE INSERT ON ConsultasMarcadas
WHEN New.codmedico NOT IN (
SELECT codigo
FROM Disponibilidade
WHERE dia = New.data AND codigo NOT IN (
SELECT codmedico
FROM ConsultasMarcadas
WHERE data = New.data
GROUP BY codmedico
HAVING COUNT(*) >= (SELECT numdoentes 
FROM HorarioConsultas AS HC, Disponibilidade AS D 
WHERE HC.idhorarioconsulta = D.idhorarioconsulta AND
D.dia = data AND D.codigo = codmedico)))
BEGIN
SELECT RAISE(IGNORE);
END;