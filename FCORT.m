%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Función FCORT - Grupo 6

Argumentos:
    - F: Función original
    - D: Desplazamiento
    - flag: Bandera de estado de ejecución
    - v_dom: Dominio de la función

Retorna:
    - Fr: Función desplazada

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FCORT(F, D, flag, v_dom)
    if(flag == 1)
        syms t;
        Fr = @(t) F(t-D);
    elseif(flag == 0 && nargin == 4)
        n = v_dom;
        Fr = @(n) F(n-D);
    else
        warning('Ha ingresado mal los argumentos o de manera incompleta');
    end
end