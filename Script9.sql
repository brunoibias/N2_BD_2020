CREATE OR REPLACE FUNCTION crescimentoProd(p_inicio int, p_fim int)
RETURNS TABLE( microrregiao VARCHAR, estado varchar, ano_inicial double precision,
    ano_final double precision,	percentual_crescimento_medio double precision)
AS $$
BEGIN
  RETURN QUERY
    WITH consulta as (
      SELECT m.nome as microrregiao, e.descricao as estado, 
		(SELECT SUM(i2.cana_de_acucar) 
		FROM indicadoresagriculturatemporaria_qtdeproduzida i2, cidades c2  
		WHERE ano = p_inicio 
		AND i2.idcidade = c2.idcidade 
		and c2.idestado = e.idestado) as inicial, 
		(SELECT SUM(i2.cana_de_acucar) 
		FROM indicadoresagriculturatemporaria_qtdeproduzida i2, cidades c2  
		WHERE ano = p_fim 
		AND i2.idcidade = c2.idcidade 
		and c2.idestado = e.idestado) as final
		FROM microrregioes m, estados e, cidades c, indicadoresagriculturatemporaria_qtdeproduzida i
		WHERE m.idmicro = c.idmicro AND
		c.idestado = e.idestado AND
		i.idcidade = c.idcidade AND
		(i.ano = p_inicio OR i.ano = p_fim)

		GROUP BY m.nome, e.descricao, e.idestado
    ),
    resultado as(
      SELECT consulta.microrregiao, consulta.estado, consulta.inicial, consulta.final, 
                (((consulta.final::double precision - consulta.inicial::double precision)/consulta.inicial::double precision)*100) 
                as media
        FROM consulta
    )
    SELECT resultado.microrregiao::VARCHAR,
           resultado.estado::VARCHAR,
           resultado.inicial::double precision,
           resultado.final::double precision,
           resultado.media::double precision
      FROM resultado;
END;
$$ LANGUAGE plpgsql
