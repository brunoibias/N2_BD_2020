select mc.nome as M_Regiao, e.sigla as Estado,sum (p.pib) PIB,
count(c.idmicro) as N_Municipios_Pertencentes

from cidades c
join indicadorespib p on c.idcidade = p.idcidade
join microrregioes mc on c.idmicro = mc.idmicro
join estados e on c.idestado = e.idestado

where p.pib > 100000000 and p.ano = (select max (ano) from indicadorespib p)
group by c.idmicro, e.sigla, mc.idmicro

order by e.sigla ASC, sum(p.pib) DESC 