CREATE PROCEDURE sp_PesquisarMunicipiosPorSiglaUF
(@SiglaUF CHAR(2))
AS 

SELECT        
	MUN.MunicipioID, 
	MUN.IBGE6, 
	MUN.IBGE7, 
	MUN.Descricao, 
	MUN.MesoregiaoID, 
	MES.Descricao AS NomeMesoregiao,
	MUN.MicroregiaoID, 
	MIC.Descricao AS NomeMicroregiao,
	MUN.UFID,
	MUN.SiglaUF,
	UFS.Descricao AS UFNome,
	Populacao, 
	MUN.CEP
FROM  Municipio AS MUN
INNER JOIN Mesoregiao AS MES
	ON MUN.MesoregiaoID = MES.MesoregiaoID
INNER JOIN Microregiao AS MIC 
	ON MUN.MicroregiaoID = MIC.MicroregiaoID
INNER JOIN UnidadesFederacao AS UFS
	ON MUN.UFID = UFS.UFID
WHERE MUN.SiglaUF = @SiglaUF
GO