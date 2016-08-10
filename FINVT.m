%{ 
An�lisis de Se�ales y Sistemas - TP Laboratorio N� 2
Funci�n FINVT - Grupo 6

Argumentos:
    - F: Funci�n original
    - flag: Bandera de estado de ejecuci�n
    - v_dom: Dominio de la funci�n

Retorna:
    - Fr: Funci�n invertida temporalmente

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FINVT(F, flag, v_dom)
    if(flag == 1)
        syms t;
        Fr = @(t) F(-t);
    elseif(flag == 0 && nargin == 3)
        n = v_dom;
        Fr = @(n) F(-n);
    else
        warning('Ha ingresado mal los argumentos o de manera incompleta');
    end
end