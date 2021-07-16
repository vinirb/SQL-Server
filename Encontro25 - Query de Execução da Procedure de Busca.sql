USE [CapacitacaoPSG2021H2]
GO

DECLARE	@return_value int,
		@Populacao int

EXEC	@return_value = [dbo].[sp_PesquisarPopulacaoMunicipioPorIBGE7]
		@CodigoIBGE7 = 1200435,
		@Populacao = @Populacao OUTPUT

SELECT	@Populacao as N'@Populacao'

SELECT	'Return Value' = @return_value

GO
