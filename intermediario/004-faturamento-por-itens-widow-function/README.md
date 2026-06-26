# Highest-Grossing Items - Datalemur

## Problema

O objetivo do exercício é identificar os dois produtos das categorias "appliance" e "electronics" com maior faturamento no ano de 2022:

## Estratégia

A solução foi realizada com apenas 1 etapa essencial:

### 1. Utilização de window function juntamente com dense_rank e organização com CTE.

Para organizar minha query, elaborei um CTE com os seguintes itens:

* Utilização de window function;
* Escolha da função dense_rank() para evitar duplicatas;
* Utilização do EXTRACT para filtrar o ano solicitado;
* Ordenação pela soma e categoria;

## Conceitos Utilizados

* Window function (over() e dense_rank())
* CTE com With

## Aprendizados

* Utilização do EXTRACT.
* Utilização do dense_rank para segragação dos itens. 
