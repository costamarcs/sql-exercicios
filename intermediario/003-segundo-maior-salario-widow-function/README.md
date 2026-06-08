# Second Highest Salary - Datalemur

## Problema

O objetivo desse exercício é criar uma query que retorne o 2 maior salário da companhia:

## Estratégia

A solução foi realizada com apenas 1 etapa essencial:

### 1. Utilização de window function juntamente com dense_rank

Para organizar minha query, elaborei um CTE com os seguintes itens:

* Utilização de window function;
* Escolha da função dense_rank() para estabelecer um ranking entre os salários (sem empates) e evitar duplicatas;
* Dentro de over(), organizar a função por ordem decrecente para garantir a ordem correta dos salários;
* Filtrar o segundo maior salário com where;

Obs: Esse método visa a escabilidade da query, não apenas o resultado em si.

## Conceitos Utilizados

* Window function (over() e dense_rank())
* CTE com With
* Pipeline

## Aprendizados

* Remoção de duplicataas com window function.
* Criação de pipeline com querys. 
