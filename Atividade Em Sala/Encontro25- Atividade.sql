ALTER PROCEDURE sp_BuscaNomedeMunicipiopeloIBGE7
(@NIBGE7 INT)

AS

SELECT 
	UFS.Descricao AS NomeEstado ,
	MES.Descricao AS NomeMesoregiao,
	MIC.Descricao AS NomeMicroregiao,
	MUN.CEP
FROM Municipio AS MUN
INNER JOIN Mesoregiao AS MES 
	ON MUN.MesoregiaoID = MES.MesoregiaoID
INNER JOIN Microregiao AS MIC
	ON MUN.MicroregiaoID = MIC.MicroregiaoID
INNER JOIN UnidadesFederacao AS UFS
	ON MUN.UFID = UFS.UFID
WHERE MUN.IBGE7 =@NIBGE7
GO
