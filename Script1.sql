select  e.descricao as Estado, count (c.idcidade)as quantidade_cidade
from estados e
join cidades c on c.idestado = e.idestado
WHERE e.sigla in ('PA','AM','TO','AP','AC','RR','RO')
GROUP BY e.descricao
ORDER BY quantidade_cidade ASC