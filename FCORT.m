%{ 
An�lisis de Se�ales y Sistemas - TP Laboratorio N� 2
Funci�n FCORT - Grupo 6

Argumentos:
    - F: Funci�n original
    - D: Desplazamiento

Retorna:
    - Fr: Funci�n desplazada

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FCORT(F, D)
    Fr = @(t) F(t-D);
end