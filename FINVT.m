%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Función FINVT - Grupo 6

Argumentos:
    - F: Función original

Retorna:
    - Fr: Función invertida temporalmente

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FINVT(F)
    Fr = @(t) F(-t);
end