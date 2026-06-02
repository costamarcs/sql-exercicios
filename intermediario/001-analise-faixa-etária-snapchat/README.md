# Sending vs. Opening Snaps - Datalemur

## Problema

O objetivo desse exercício é analisar o tempo gasto por faixa etária de usuários do Snapchat, cruzando informações sobre tempo de envio e abertura de snaps. As tabelas dadas pelo pelo exercício:

## Estratégia

A solução foi dividida em duas etapas:

### 1. Consolidação dos dados

Utilizei uma CTE para criar uma tabela intermediária contendo:

* Tempo total gasto enviando snaps;
* Tempo total gasto abrindo snaps;
* Tempo total das atividades analisadas.

Para isso, apliquei agregações condicionais utilizando `SUM(CASE WHEN ...)`, permitindo calcular múltas métricas em uma única varredura dos dados.

### 2. Cálculo dos percentuais

Com os totais já calculados, bastou dividir cada categoria pelo tempo total da faixa etária:

* Send % = tempo de envio / tempo total
* Open % = tempo de abertura / tempo total

O resultado foi multiplicado por `100.0` para evitar divisão inteira e arredondado para duas casas decimais.

## Conceitos Utilizados

* CTE (`WITH`)
* `LEFT JOIN`
* Agregação com `SUM()`
* Agregação condicional com `CASE WHEN`
* `GROUP BY`
* Cálculo de percentuais
* `ROUND()`

## Aprendizados

* Como utilizar agregações condicionais para criar métricas diferentes na mesma consulta.
* Como estruturar consultas complexas utilizando CTEs.
* A importância de utilizar `100.0` em vez de `100` para evitar divisão inteira em SQL.
