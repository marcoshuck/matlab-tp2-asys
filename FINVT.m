%{ 
An�lisis de Se�ales y Sistemas - TP Laboratorio N� 2
Funci�n FINVT - Grupo 6

Argumentos:
    - F: Funci�n original

Retorna:
    - Fr: Funci�n invertida temporalmente

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FINVT(F)
    Fr = @(t) F(-t);
end