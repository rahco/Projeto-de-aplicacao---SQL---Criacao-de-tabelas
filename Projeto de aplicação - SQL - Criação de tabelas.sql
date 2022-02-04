
-- Modelo de criação de tabelas de um banco de dados transacional

DROP TABLE IF EXISTS `projeto-final-bq-ds-338821.BitbyteDW.aluno`;

CREATE TABLE `projeto-final-bq-ds-338821.BitbyteDW.aluno` (
  id INT64 ,
  nome STRING ,
  email STRING
) ;

DROP TABLE IF EXISTS `projeto-final-bq-ds-338821.BitbyteDW.curso`;

CREATE TABLE `projeto-final-bq-ds-338821.BitbyteDW.curso` (
  id INT64 ,
  nome STRING ,
  semestre STRING,
  ano STRING ,
  periodo_id STRING ,
  preco FLOAT64
) ;

DROP TABLE IF EXISTS `projeto-final-bq-ds-338821.BitbyteDW.exercicio`;

CREATE TABLE `projeto-final-bq-ds-338821.BitbyteDW.exercicio` (
  id INT64 ,
  secao_id INT64 ,
  pergunta STRING ,
  resposta_oficial STRING ,
  periodo_id STRING
) ;

DROP TABLE IF EXISTS `projeto-final-bq-ds-338821.BitbyteDW.matricula`;

CREATE TABLE `projeto-final-bq-ds-338821.BitbyteDW.matricula` (
  id INT64 ,
  aluno_id INT64 ,
  curso_id INT64 ,
  data DATETIME ,
  tipo STRING ,
  periodo_id STRING
);

DROP TABLE IF EXISTS `projeto-final-bq-ds-338821.BitbyteDW.nota`;

CREATE TABLE `projeto-final-bq-ds-338821.BitbyteDW.nota` (
  id INT64 ,
  resposta_id INT64 ,
  nota FLOAT64 ,
  periodo_id STRING 
) ;

DROP TABLE IF EXISTS `projeto-final-bq-ds-338821.BitbyteDW.resposta`;

CREATE TABLE `projeto-final-bq-ds-338821.BitbyteDW.resposta` (
  id INT64 ,
  exercicio_id INT64 ,
  aluno_id INT64,
  resposta_dada STRING ,
  periodo_id STRING
) ;

DROP TABLE IF EXISTS `projeto-final-bq-ds-338821.BitbyteDW.secao`;

CREATE TABLE `projeto-final-bq-ds-338821.BitbyteDW.secao` (
  id INT64 ,
  curso_id INT64 ,
  titulo STRING ,
  explicacao STRING ,
  numero INT64 ,
  periodo_id STRING
) ;


-- Modelo de criação de tabela de um data warehouse

DROP TABLE IF EXISTS `projeto-final-bq-ds-338821.BitbyteDW.bitbyte_dw`;

CREATE TABLE `projeto-final-bq-ds-338821.BitbyteDW.bitbyte_dw` (
  NOME_ALUNO STRING ,
  NOME_CURSO STRING ,
  TIPO_PAGAMENTO STRING,
  PERIODO STRING ,
  SEMESTRE STRING ,
  ANO STRING,
  PRECO FLOAT64 ,
  NUMERO_MATRICULAS INT64 ,
  NOTA_FINAL FLOAT64 ,
) ;



