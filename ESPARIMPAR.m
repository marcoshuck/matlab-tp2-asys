%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Función ESPARIMPAR - Grupo 6

Argumentos:
    - F: Función

Retorna:
    - r: Bandera de resultado
    - Frpar: Parte par.
    - Frimp: Parte impar.

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function[r, Frpar, Frimp] = ESPARIMPAR(x, y)
    if(y(x) == y(-x))
        r = [1, 1, 1];
    elseif(y(x) == -y(-x))
        r = [0, 0, 1];
    else
        r = [1, 0, 1];
    end;
    
Frpar=(1/2)*(y(x)+y(-x));

Frimp=(1/2)*(y(x)-y(-x));

end