CREATE TABLE IF NOT EXISTS pandemia(
	id serial, idestado varchar not null, quantidadecasos integer, 
	quantidadeobitos integer, numeromes integer, 
	FOREIGN KEY (idestado) references estados(idestado) );