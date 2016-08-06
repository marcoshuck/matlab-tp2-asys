%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Ejercicio 2 - Grupo 6

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

% Borramos todas las variables del workspace
clear all;
% Borramos los outputs e inputs de la ventana de comandos
clc;

FCT1=@(t) sin(t);
FCT2=@(t) cos(t);

FDN1=@(n) sin(n);
FDN2=@(n) cos(n);


% << INICIO DEL EJERCICIO 2.1.1 >>
hold off;
ezplot(FCT1, [-10, 10]);
hold on;
ezplot(FCORT(FCT1), [-10, 10]);


% << FIN DEL EJERCICIO 2.1.1 >>


% Realizamos un salto de línea por cuestión estética
fprintf('\n');