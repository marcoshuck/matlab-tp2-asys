%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Ejercicio 4 - Grupo 6

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

% Borramos todas las variables del workspace
clear all;
% Borramos los outputs e inputs de la ventana de comandos
clc;

% << INICIO DEL EJERCICIO 4.1 >>
n = -10:1:10;

u = @(n) heaviside(n);

x = @(n) u(n) - u(n-2);
h = @(n) 2*(u(n-2) - u(n-3));

h1 = @(n) 2*u(n-2);
h2 = @(n) -2*u(n-3);

% << INICIO DEL EJERCICIO 4.1.1 >>
[Yn1, Ynx1, Xnx1, Hnx1] = CONVD(n, x, n, h);
[Yn2, Ynx2, Xnx2, Hnx2] = CONVD(n, h, n, x);

fprintf('4.1.1 - Verificación x(n)*h(n) = h(n)*x(n): %d\n', isequal(Yn1, Yn2));
% << FIN DEL EJERCICIO 4.1.1 >>

% << INICIO DEL EJERCICIO 4.1.2 >>
[Yn1, Ynx1, Xnx1, Hnx1] = CONVD(n, x, n, h1);
[Yn2, Ynx2, Xnx2, Hnx2] = CONVD(n, x, n, h2);

[Yn3, Ynx3, Xnx3, Hnx3] = CONVD(n, x, n, h);

fprintf('4.1.2 - Verificación x(n)*h1(n) + x(n)*h2(n) = x(n)*(h1(n)+h2(n)): %d\n', isequal(Yn1 + Yn2, Yn3));
% << FIN DEL EJERCICIO 4.1.2 >>

% << INICIO DEL EJERCICIO 4.1.3 >>
[Yn1, Ynx1, Xnx1, Hnx1] = CONVD(n, x, n, h1);
[Yn2, Ynx2, Xnx2, Hnx2] = CONVD(n, Yn1, n, h2);

[Yn1, Ynx1, Xnx1, Hnx1] = CONVD(n, h1, n, h2);
[Yn3, Ynx3, Xnx3, Hnx3] = CONVD(n, Yn1, n, x);

fprintf('4.1.3 - Verificación: (x(n)*h1(n))*h2(n) = x(n)*(h1(n)*h2(n)): %d\n', isequal(Yn2, Yn3));
% << FIN DEL EJERCICIO 4.1.3 >>

% << FIN DEL EJERCICIO 4.1 >>