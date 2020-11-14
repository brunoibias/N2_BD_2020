# N2_BD_2020

<h2>N2 da cadeira de Banco de Dados 2020/02</h2>

Consulta 1
• Apresente o script de uma consulta que gere um relatório que
apresente a quantidade de cidades das UF da região norte.
• Deve ser exibido o Nome do estado, e a quantidade de cidades.
• Ordene os resultados de forma crescente pela quantidade de cidades

Consulta2
• Apresente o script de uma consulta que retorne o a soma do PIB por
microrregião para o ano mais recente. Somente para as microrregiões
com PIB maior de 100.000.000.
• Deve ser exibido o Nome da microrregião, estado da microrregião,
soma do PIB para o ano mais recente e a quantidade de municípios da
microrregião.
Ordene os resultado de forma ascendente pelo estado da microrregião
e depois descendente pela soma do PIB.

Consulta 3
• Apresente o script de uma consulta que retorne os nomes das 20
cidades que produzem mais algodão para o ano mais recente.
Deve ser exibido o nome da cidade, o a sigla do estado e o total de
algodão produzido
Ordene o resultado de forma decrescente pelo total de algodão
produzida

Consulta 4
• Apresente o script para a criação de uma view que apresenta a lista
de cidades, indicando a microrregião e o nome do estado e a sigla do
estado de cada uma das cidades. Esta view também deve calcular
ocupação em territorial indicando a quantidade de habitantes (campo
população) por km² (campo área)
• Deve ser apresentado a chave primária da tabela cidades, nome da
cidade, a população, a área, o nome da microrregião e a sigla do
estado correspondente, ocupação.

Consulta 5
• Apresente uma consulta que retorne a lista das cidades que produziram
trigo e arroz no ano de 2013. Produção igual a zero significa que não teve
produção.
• Utilize a view criada na consulta 4 para exibir o nome da cidade e o estado.
• Além do nome da cidade e do estado deve ser exibido a quantidade
produzida de Trigo e a quantidade produzida de Arroz, também deve ser
apresentado o valor monetário através da multiplicação da quantidade
produzida de arroz pelo valor da tonelada de arroz que é R$2850,00

Consulta 6
• Apresente o script de uma consulta utilizando o comando “UNION”
que retorne 4 classes de produção de arroz considerando intervalos
de tamanhos iguais.
• Nomeie os intervalos como: pequena, média, grande, muito grande.
• Apresente os resultados apresentando os seguintes campos: nome da
cidade, estado, intervalo e valor produzido.

Consulta 7
• Utilizando a solução de select into, apresente o script capaz de criar
uma tabela com as informações de renda por UF (para todos as UFs)
para o ano de 2010.
• O resultado deverá conter os seguintes campos: idestado, sigla,
rendatotal, rendapercapta

Consulta 8
• Apresente o script de criação de uma função que calcula a produção
de uva para todos os estados para um determinado ano que é
passado como parâmetro.
• Exibir o nome do estado, o total de uva produzida no ano passado
como parâmetro.

Consulta 9
• Apresente o script que cria uma função que deve retornar o
crescimento médio da produção de cana por microrregião passando
como parâmetro o ano inicial e o ano final.
• Apresente os campos nome da microrregião, estado, valor ano inicial,
valor ano final, crescimento médio

Consulta 10
• Apresente o script para criar uma tabela PANDEMIA que irá
armazenar as informações de quantidade de casos por mês e
quantidade de óbitos por mês devido ao COVID 19 vírus por UF.
• Deve conter a chave primária idestado, qtd casos, qtd óbitos, numero
mês
• Não esqueça de fazer a chave estrangeira com a tabela estados

Consulta 11
• Apresente o script para realização da inserção de dados para a tabela
criada na consulta 10, simulando os registros para os meses de
agosto, setembro, outubro para os estados de RS, SC, PR.

Consulta 12
• Apresente o script para a criação de um novo campo na tabela
PANDEMIA que indica o status do estado. O status deve registrar se o
número de óbitos se é crescente, decrescente ou estável.

Consulta 13
• Construa um trigger que preencha o valor do campo status com base
no valor do mês anterior para o estado que está sendo cadastrado.
• Se o valor do registro que está sendo inserido for mais do que 15% do
mês anterior – “Crescente”
• Se o valor do registro que está sendo inserido for menos do que 15%
do mês anterior – “Decrescente”
• Se o valor do registro que está sendo inserido for entre menos do que
15% do mês anterior e mais 15% do mês anterior – “Estável”
