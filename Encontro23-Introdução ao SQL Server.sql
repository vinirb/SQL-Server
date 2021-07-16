SELECT 
	PRO.catid , 
	CAT.descricao AS 'Descricao da Categoria',
	PRO.subcatid,
	SUBCAT.descricao AS 'Descricao da Subcategoria', 
	PRO.produtoid,
	PRO.descricao AS 'Descricao do Produto',
	PRO.datainsert
FROM  produto AS PRO
INNER JOIN subcategoria AS SUBCAT ON
PRO.subcatid = SUBCAT.subcatid
INNER JOIN categoria AS CAT ON 
	PRO.catid = CAT.catid
WHERE PRO.catid = 14
GO