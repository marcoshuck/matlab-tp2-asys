%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Función FCORT - Grupo 6

Argumentos:
    - F: Función original
    - D: Desplazamiento

Retorna:
    - Fr: Función desplazada

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FCORT(F, D)
    Fr = @(t) F(t-D);
end