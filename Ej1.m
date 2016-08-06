%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Ejercicio 1 - Grupo 6

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

% Borramos todas las variables del workspace
clear all;
% Borramos los outputs e inputs de la ventana de comandos
clc;

% << INICIO DEL EJERCICIO 1.1 >>

%Definimos la variable independiente
syms t;

% Definimos las funciones en tiempo continuo
FCT1=@(t) sin(t);
FCT2=@(t) cos(t);

% Estado de hold graph desactivado
hold off;

% Graficamos la primera función
ezplot(FCT1(t), [-10, 10]);

% Estado de hold graph activado
hold on;

% Graficamos la segunda función
ezplot(FCT2(t), [-10, 10]);

% << FIN DEL EJERCICIO 1.1 >>

input('Presione ENTER para continuar ...');

% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% << INICIO DEL EJERCICIO 1.2 >>

%Definimos la variable independiente
syms t;

% Definimos las funciones en tiempo continuo
FDN1=@(n) sin(n);
FDN2=@(n) cos(n);

% Estado de hold graph desactivado
hold off;

% Graficamos la primera función con plot
plot(n, FDN1);

% Estado de hold graph activado
hold on;

% Graficamos la segunda función con plot
plot(n, FDN2);

% Estado de hold graph desactivado
hold off;

input('Presione ENTER para continuar ...');

% Graficamos la primera función con stem
stem(n, FDN1);

% Estado de hold graph activado
hold on;

% Graficamos la segunda función con stem
stem(n, FDN2);


% << FIN DEL EJERCICIO 1.2 >>