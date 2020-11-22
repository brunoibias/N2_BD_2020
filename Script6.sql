SELECT o.cidade, o.uf, 'pequena' as intervalo, SUM(i.arroz) as total
FROM ocupacao o, indicadoresagriculturatemporaria_qtdeproduzida i
WHERE i.idcidade = o.idcidade AND
(SELECT SUM(arroz) FROM indicadoresagriculturatemporaria_qtdeproduzida WHERE idcidade = o.idcidade ) <= 11000

GROUP BY o.cidade, o.uf, intervalo

UNION

SELECT o.cidade, o.uf, 'media' as intervalo, SUM(i.arroz) as total
FROM ocupacao o, indicadoresagriculturatemporaria_qtdeproduzida i
WHERE i.idcidade = o.idcidade AND
(SELECT SUM(arroz) FROM indicadoresagriculturatemporaria_qtdeproduzida WHERE idcidade = o.idcidade ) > 11000 AND
(SELECT SUM(arroz) FROM indicadoresagriculturatemporaria_qtdeproduzida WHERE idcidade = o.idcidade ) <= 367000

GROUP BY o.cidade, o.uf, intervalo

UNION

SELECT o.cidade, o.uf, 'grande' as intervalo, SUM(i.arroz) as total
FROM ocupacao o, indicadoresagriculturatemporaria_qtdeproduzida i
WHERE i.idcidade = o.idcidade AND
(SELECT SUM(arroz) FROM indicadoresagriculturatemporaria_qtdeproduzida WHERE idcidade = o.idcidade ) > 367000 AND
(SELECT SUM(arroz) FROM indicadoresagriculturatemporaria_qtdeproduzida WHERE idcidade = o.idcidade ) <= 447000

GROUP BY o.cidade, o.uf, intervalo

UNION

SELECT o.cidade, o.uf, 'muito grande' as intervalo, SUM(i.arroz) as total
FROM ocupacao o, indicadoresagriculturatemporaria_qtdeproduzida i
WHERE i.idcidade = o.idcidade AND
(SELECT SUM(arroz) FROM indicadoresagriculturatemporaria_qtdeproduzida WHERE idcidade = o.idcidade ) > 447000 AND
(SELECT SUM(arroz) FROM indicadoresagriculturatemporaria_qtdeproduzida WHERE idcidade = o.idcidade ) <= 587000

GROUP BY o.cidade, o.uf, intervalo

ORDER BY cidade ASC, total DESC