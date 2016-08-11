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
disp('Ejercicio 1 - Grupo 6 - 1.1');

%Definimos la variable independiente
syms t;

% Definimos las funciones en tiempo continuo
FCT1=@(t) sin(t);
FCT2=@(t) tan(t);

fprintf('FCT1 = %s\n', FCT1(t));
fprintf('FCT2 = %s\n', FCT2(t));

disp('- Gráfica de FCT1 y FCT2');

% Estado de hold graph desactivado
hold off;

% Graficamos la primera función
ezplot(FCT1(t), [-100, 100]);

% Estado de hold graph activado
hold on;

% Graficamos la segunda función
ezplot(FCT2(t), [-100, 100]);

grid on;
title( 'FCT1 y FCT2' );
xlabel('t');
ylabel('FCT(t)');
legend('FCT1(t)', 'FCT1(t)');
legend('show');

% << FIN DEL EJERCICIO 1.1 >>

disp('Final del ejercicio 1.1. Presione una tecla para continuar.');
system('PAUSE>NULL');

% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% << INICIO DEL EJERCICIO 1.2 >>
disp('Ejercicio 1 - Grupo 6 - 1.2');

n = -100:1:100;

% Definimos las funciones en tiempo continuo
FDN1=@(n) sin(n);
FDN2=@(n) tan(n);

fprintf('FDN1 = %s\n', char(FDN1));
fprintf('FDN2 = %s\n', char(FDN2));

% Estado de hold graph desactivado
hold off;

disp('- Gráfica con comando plot');

% Graficamos la primera función con plot
plot(n, FDN1(n));

% Estado de hold graph activado
hold on;

% Graficamos la segunda función con plot
plot(n, FDN2(n));

grid on;
title('FDN1 y FDN2 con PLOT');
xlabel('n');
ylabel('FDN(N)');
legend('FDN1(n)', 'FDN1(n)');
legend('show');

system('PAUSE>NULL');
disp('- Gráfica con comando stem');

% Estado de hold graph desactivado
hold off;

% Graficamos la primera función con stem
stem(FDN1(n));

% Estado de hold graph activado
hold on;

% Graficamos la segunda función con stem
stem(FDN2(n));

grid on;
title('FDN1 y FDN2 con STEM');
xlabel('n');
ylabel('FDN(N)');
legend('FDN1(n)', 'FDN1(n)');
legend('show');

disp('Final del ejercicio 1.2. Presione una tecla para continuar.');
system('PAUSE>NULL');

% << FIN DEL EJERCICIO 1.2 >>

% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% << INICIO DEL EJERCICIO 1.3 >>
disp('Ejercicio 1 - Grupo 6 - 1.3');

disp('Utilizando la función ESPERIODICA, determinamos que FDN1 es: %s', ESPERIODICA(FDN1));
disp('Utilizando la función ESPERIODICA, determinamos que FDN2 es: %s', ESPERIODICA(FDN1));

% << FIN DEL EJERCICIO 1.3 >>