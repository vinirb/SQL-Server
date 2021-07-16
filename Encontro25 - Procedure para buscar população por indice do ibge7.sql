CREATE PROCEDURE sp_PesquisarPopulacaoMunicipioPorIBGE7
(
	@CodigoIBGE7 INT ,
	@Populacao INT OUTPUT
)
AS 
SELECT @Populacao = MUN.Populacao
FROM  Municipio AS MUN
WHERE MUN.IBGE7 = @CodigoIBGE7;

