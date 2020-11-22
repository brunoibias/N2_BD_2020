select c.nome, e.sigla as Sigla_Estado, sum (ind.algodao_herbaceo) as qiantidade_Algodão
   
from indicadoresagriculturatemporaria_qtdeproduzida ind
join cidades c on c.idcidade = ind.idcidade 
left join estados e on e.idestado = c.idestado
where ind.ano = (select max(ano) from indicadoresagriculturatemporaria_qtdeproduzida)

GROUP BY c.nome, e.sigla
ORDER BY qiantidade_Algodão DESC
limit 20;