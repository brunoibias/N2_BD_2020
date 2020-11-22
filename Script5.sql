SELECT o.cidade, o.uf, i.trigo, i.arroz, (i.arroz*2850) as valor

FROM ocupacao o, indicadoresagriculturatemporaria_qtdeproduzida i

WHERE i.idcidade = o.idcidade