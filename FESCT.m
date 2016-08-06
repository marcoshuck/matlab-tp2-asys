%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Función FESCT - Grupo 6

Argumentos:
    - F: Función original
    - K: Escalamiento

Retorna:
    - Fr: Función escalada

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FESCT(F, K)
    Fr = @(t) F(K*t);
end