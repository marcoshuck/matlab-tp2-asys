%{ 
An�lisis de Se�ales y Sistemas - TP Laboratorio N� 2
Funci�n FESCT - Grupo 6

Argumentos:
    - F: Funci�n original
    - K: Escalamiento
    - flag: Bandera de estado de ejecuci�n
    - v_dom: Dominio de la funci�n

Retorna:
    - Fr: Funci�n escalada

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[Fr] = FESCT(F, K, flag, v_dom)
    if(flag == 1)
        syms t;
        Fr = @(t) F(K*t);
    elseif(flag == 0 && nargin == 4)
        n = v_dom;
        Fr = @(n) F(K*n);
    else
        warning('Ha ingresado mal los argumentos o de manera incompleta');
    end
end