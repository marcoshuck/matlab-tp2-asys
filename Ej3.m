%{ 
Análisis de Señales y Sistemas - TP Laboratorio Nº 2
Ejercicio 3 - Grupo 6

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

% Borramos todas las variables del workspace
clear all;
% Borramos los outputs e inputs de la ventana de comandos
clc;

% << INICIO DEL EJERCICIO 3.1 >>
disp('Ejercicio 3 - Grupo 6 - 3.1');

% Definimos la variable independiente
syms t tao;

n = -10:1:10;

% Definición del escalón unitario
u = @(t) heaviside(t);

% Ventanas(3.1.1): Igual amplitud y duración.
x1 = @(t) u(t) - u(t-2);
h1 = @(t) u(t+1) - u(t-1);

% Ventanas(3.1.2): Igual amplitud, distinta duración.
x2 = @(t) u(t) - u(t-5);
h2 = @(t) u(t+2) - u(t-6);

% Ventanas(3.1.3): Distinta amplitud y duración.
x3 = @(t) 2*(u(t-2) - u(t-3));
h3 = @(t) -(u(t+1) - u(t-1));

% Integración por definición
y1a = int(x1(tao).*h1(t-tao), tao, -inf, inf);
fprintf('3.1.1) x1(t)*h1(t) => y1(t) = %s\n', y1a);

y2a = int(x2(tao).*h2(t-tao), tao, -inf, inf);
fprintf('3.1.2) x2(t)*h2(t) => y2(t) = %s\n', y2a);

y3a = int(x3(tao).*h3(t-tao), tao, -inf, inf);
fprintf('3.1.3) x3(t)*h3(t) => y3(t) = %s\n', y3a);

disp('Gráfica 3.1.1');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función y
ezplot(t, y1a);

% Estado de hold graph activado
hold on;

% Gráfica de la función x
ezplot(t, x1(t));

% Gráfica de la función h
ezplot(t, h1(t));

% Opciones de la gráfica
grid on;
title('x1(t) convolución h1(t) por definición');
xlabel('t');
ylabel('F(t)');
legend('show');
legend('y1(t)', 'x1(t)', 'h1(t)');

disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

disp('Gráfica 3.1.2');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función y
ezplot(t, y2a);

% Estado de hold graph activado
hold on;

% Gráfica de la función x
ezplot(t, x2(t));

% Gráfica de la función h
ezplot(t, h2(t));

% Opciones de la gráfica
grid on;
title('x2(t) convolución h2(t) por definición');
xlabel('t');
ylabel('F(t)');
legend('show');
legend('y2(t)', 'x2(t)', 'h2(t)');

disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

disp('Gráfica 3.1.3');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función y
ezplot(t, y3a);

% Estado de hold graph activado
hold on;

% Gráfica de la función x
ezplot(t, x3(t));

% Gráfica de la función h
ezplot(t, h3(t));

% Opciones de la gráfica
grid on;
title('x3(t) convolución h3(t) por definición');
xlabel('t');
ylabel('F(t)');
legend('show');
legend('y3(t)', 'x3(t)', 'h3(t)');

disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

% << FIN DEL EJERCICIO 3.1 >>

% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% << INICIO DEL EJERCICIO 3.2 >>
disp('Ejercicio 3 - Grupo 6 - 3.2');

T = 0.1;
t = 0:T:10;
t0 = (0:200)*T;

y1 = T*conv(x1(t), h1(t));

fprintf('3.2.1) x1(t)*h1(t) => y1(t)\n');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función y
stem(y1);

% Estado de hold graph activado
hold on;

% Gráfica de la función x
stem(x1(t));

% Gráfica de la función h
stem(h1(t));

% Opciones de la gráfica
grid on;
title('x1(t) convolución h1(t)');
xlabel('t');
ylabel('F(t)');
legend('show');
legend('y1(t)', 'x1(t)', 'h1(t)');

% Fin de caso 1
disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

y2 = T*conv(x2(t), h2(t));

fprintf('3.2.2) x2(t)*h2(t) => y2(t)\n');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función y
stem(y2);

% Estado de hold graph activado
hold on;

% Gráfica de la función x
stem(x2(t));

% Gráfica de la función h
stem(h2(t));

grid on;
title('x2(t) convolución h2(t)');
xlabel('t');
ylabel('F(t)');
legend('show');
legend('y2(t)', 'x2(t)', 'h2(t)');

% Fin de caso 2
disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

y3 = T*conv(x3(t), h3(t));

fprintf('3.2.3) x3(t)*h3(t) => y3(t)\n');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función y
stem(y3);

% Estado de hold graph activado
hold on;

% Gráfica de la función x
stem(x3(t));

% Gráfica de la función h
stem(h3(t));

grid on;
title('x3(t) convolución h3(t)');
xlabel('t');
ylabel('F(t)');
legend('show');
legend('y3(t)', 'x3(t)', 'h3(t)');

% Fin de caso 3
disp('Presione una tecla para continuar.');
system('PAUSE>NULL');


% << FIN DEL EJERCICIO 3.2 >>

% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% << INICIO DEL EJERCICIO 3.3 >>
disp('Ejercicio 3 - Grupo 6 - 3.3');

y1 = T*conv(x1(t), h1(t));
[Yn1, Ynx1, Xnx1, Hnx1] = CONVD(n, x1, n, h1);

% Estado de hold graph desactivado
hold off;

% Gráfica de la función y
stem(y1);

% Estado de hold graph activado
hold on;

% Gráfica de la función Yn1
stem(Ynx1, Yn1);

grid on;
title('Comparación de convolución por definición y con comando CONVD');
xlabel('n');
ylabel('F(n)');
legend('show');
legend('y(n) original', 'y(n) convolución con CONVD');

% << FIN DEL EJERCICIO 3.3 >>