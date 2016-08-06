%{ 
An�lisis de Se�ales y Sistemas - TP Laboratorio N� 2
Funci�n FESCT - Grupo 6

Argumentos:
    - F: Funci�n original
    - K: Escalamiento

Retorna:
    - Fr: Funci�n escalada

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FESCT(F, K)
    Fr = @(t) F(K*t);
end