# Tweets Rolling Averages - Datalemur

## Problema

O objetivo desse exercício é analisar calcular a média movel de 3 dias dos tweets de cada usuário:

## Estratégia

A solução foi realizada com apenas 1 etapa essencial:

### 1. Utilização da função de janela para calcular a média movel

A solução foi construída utilizando uma função de janela para calcular a média móvel dos tweets de cada usuário.

* AVG(tweet_count) para calcular a média dos tweets;
* PARTITION BY user_id para reiniciar o cálculo para cada usuário;
* ROWS BETWEEN 2 PRECEDING AND CURRENT ROW para criar uma janela composta pelo registro atual e os dois      anteriores;;
* ORDER BY tweet_date para garantir a ordem cronológica dos registros;;
* ROUND(...,2) para exibir o resultado com duas casas decimais.

## Conceitos Utilizados

* Média movel
* Window function (over() e preceding)
* ROUND()
* Conceito de janela de registros com PRECEDING

## Aprendizados

* Conceitos sorbe média movel.
* Como utilizar funções de janela para média movel 
