drop function calcula_uva;

create or replace function calcula_uva(anoCalcular integer)
returns table (estado varchar, total double precision)
language plpgsql
as 
$$
declare
	estado varchar;
	total double precision;
begin
	RETURN QUERY
		select e.descricao as estado, sum(iq.uva) as total
		from indicadoresagriculturapermanente_qtdeproduzida iq 
			inner join cidades c on c.idcidade = iq.idcidade
			inner join estados e on e.idestado = c.idestado
		where iq.ano = anoCalcular
		group by
			e.idestado
		order by
			total desc;
end;
$$

select * from calcula_uva(*);