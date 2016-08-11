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

% Redefinimos las funciones del ejercicio anterior
syms t;
n = -100:1:100;

FCT1=@(t) sin(0.25*t);
FCT2=@(t) tan(t);

FDN1=@(n) sin(0.25*n);
FDN2=@(n) tan(n);


% << INICIO DEL EJERCICIO 2.1.1 >>
disp('Ejercicio 2 - Grupo 6 - 2.1.1');

% Valores de desplazamiento
vD1 = 15;
vD2 = -12;

disp('Efectuar un corrimiento de tiempo.');

fprintf('- Gráfica de FCT1, FCT1(t-(%i)) y FCT1(t-(%i)\n', vD1, vD2);

% Estado de hold graph desactivado
hold off;

% Gráfica de la función original
ezplot(FCT1(t), [-100, 100]);

% Estado de hold graph activado
hold on;

% Gráfica de la función con corrimiento vD1
ezplot(FCORT(FCT1, vD1, 1), [-100, 100]);

% Gráfica de la función con corrimiento vD2
ezplot(FCORT(FCT1, vD2, 1), [-100, 100]);

grid on;
title('FCT1 con FCORT');
xlabel('t');
ylabel('FCT(t)');
legend('show');
legend('FCT1(t)', 'FCT1(t - vD1)', 'FCT1(t - vD2)');

disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

fprintf('- Gráfica de FDN2, FDN2(n-(%i)) y FDN2(n-(%i))\n', vD1, vD2);

% Estado de hold graph desactivado
hold off;

% Gráfica de la función original
stem(n, FDN2(n));

% Estado de hold graph activado
hold on;

% Gráfica de la función con corrimiento vD1
Fr = FCORT(FDN2, vD1, 0, n);
stem(n, Fr(n));

% Gráfica de la función con corrimiento vD2
Fr = FCORT(FDN2, vD2, 0, n);
stem(n, Fr(n));

grid on;
title('FDN2 con FCORT');
xlabel('n');
ylabel('FDN(n)');
legend('show');
legend('FDN2(n)', 'FDN2(n - vD1)', 'FDN2(n - vD2)');

disp('Fin del ejercicio 2.1.1. Presione una tecla para continuar.');
system('PAUSE>NULL');

% << FIN DEL EJERCICIO 2.1.1 >>

% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% << INICIO DEL EJERCICIO 2.1.2 >>
disp('Ejercicio 2 - Grupo 6 - 2.1.2');

disp('Consumar una inversión de tiempo');

fprintf('- Gráfica de FCT1 y FCT1(-t)\n');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función original
ezplot(FCT1, [-100, 100]);

% Estado de hold graph activado
hold on;

% Gráfica de la función con corrimiento vD1
ezplot(FINVT(FCT1, 1), [-100, 100]);

grid on;
title('FCT1 con FINVT');
xlabel('t');
ylabel('FCT(t)');
legend('show');
legend('FCT1(t)', 'FCT1(-t)');

disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

fprintf('- Gráfica de FCT2 y FCT2(-t)\n');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función original
ezplot(FCT2, [-100, 100]);

% Estado de hold graph activado
hold on;

% Gráfica de la función con corrimiento vD1
ezplot(FINVT(FCT2, 1), [-100, 100]);

grid on;
title('FCT2 con FINVT');
xlabel('t');
ylabel('FCT(t)');
legend('show');
legend('FCT2(t)', 'FCT2(-t)');

disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

fprintf('- Gráfica de FDN1(n) y FDN1(-n)\n');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función original
stem(n, FDN1(n));

% Estado de hold graph activado
hold on;

% Gráfica de la función con corrimiento vD1
Fr = FINVT(FDN1, 0, n);
stem(n, Fr(n));

grid on;
title('FDN1 con FCORT');
xlabel('n');
ylabel('FDN(n)');
legend('show');
legend('FDN1(n)', 'FDN1(-n)');


disp('Presione una tecla para continuar.');
system('PAUSE>NULL');


fprintf('- Gráfica de FDN2(n) y FDN2(-n)\n');

% Estado de hold graph desactivado
hold off;

% Gráfica de la función original
stem(n, FDN2(n));

% Estado de hold graph activado
hold on;

% Gráfica de la función con corrimiento vD1
Fr = FINVT(FDN2, 0, n);
stem(n, Fr(n));

grid on;
title('FDN2 con FCORT');
xlabel('n');
ylabel('FDN(n)');
legend('show');
legend('FDN2(n)', 'FDN2(-n)');

disp('Fin del ejercicio 2.1.2. Presione una tecla para continuar.');
system('PAUSE>NULL');

% << FIN DEL EJERCICIO 2.1.2 >>

% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% << INICIO DEL EJERCICIO 2.1.3 >>
disp('Ejercicio 2 - Grupo 6 - 2.1.3');

disp('Ejecutar un escalamiento de tiempo');

% Valores de escalamiento
vK1 = 50/100; % 50%
vK2 = 325/100; % 325%

fprintf('- Gráfica de FCT1, FCT1(%f*t) y FCT1(%f*t)\n', vK1, vK2);

% Estado de hold graph desactivado
hold off;

% Gráfica de la función original
ezplot(FCT1(t), [-100, 100]);

% Estado de hold graph activado
hold on;

% Gráfica de la función con corrimiento vD1
ezplot(FESCT(FCT1, vK1, 1), [-100, 100]);

% Gráfica de la función con corrimiento vD2
ezplot(FESCT(FCT1, vK2, 1), [-100, 100]);

grid on;
title('FCT1 con FESCT');
xlabel('t');
ylabel('FCT(t)');
legend('show');
legend('FCT1(t)', 'FCT1(vK1*t)', 'FCT1(vK2*t)');

disp('Presione una tecla para continuar.');
system('PAUSE>NULL');

fprintf('- Gráfica de FDN2, FDN2(%f*n) y FDN2(%f*n)\n', vK1, vK2);

% Estado de hold graph desactivado
hold off;

% Gráfica de la función original
stem(n, FDN2(n));

% Estado de hold graph activado
hold on;

% Gráfica de la función con corrimiento vD1
Fr = FESCT(FDN2, vK1, 0, n);
stem(n, Fr(n));

% Gráfica de la función con corrimiento vD2
Fr = FESCT(FDN2, vK2, 0, n);
stem(n, Fr(n));

grid on;
title('FDN2 con FESCT');
xlabel('n');
ylabel('FDN(n)');
legend('show');
legend('FDN2(n)', 'FDN2(vK1*n)', 'FDN2(vK2*n)');

disp('Fin del ejercicio 2.1.3. Presione una tecla para continuar.');
system('PAUSE>NULL');

% << FIN DEL EJERCICIO 2.1.3 >>

% Realizamos un salto de línea por cuestión estética
fprintf('\n');

% << INICIO DEL EJERCICIO 2.2 >>
disp('Ejercicio 2 - Grupo 6 - 2.2');

disp('Función ESPARIMPAR');

% for i = 1:5
%     fprintf('Prueba %d\n', i)
%     switch i
%         case 1 % Prueba 1
%             fprintf('Función: %s\n', FCT1);
%             [p, Fpar, Fimp] = ESPARIMPAR(t, FCT1, 1);
%             fprintf('\tParidad: %d\n\tFunción par: %s\n\tFunción impar: %s\n\n', p, Fpar, Fimp);
%         case 2 % Prueba 2
%             fprintf('Función: %s\n', FCT2(t));
%             [p, Fpar, Fimp] = ESPARIMPAR(t, FCT1, 1);
%             fprintf('\tParidad: %d\n\tFunción par: %s\n\tFunción impar: %s\n\n', p, Fpar, Fimp);
%         
%         case 3 % Prueba 3
%             fprintf('Función: %s\n', FDN1);
%             [p, Fpar, Fimp] = ESPARIMPAR(n, FDN1, 0);
%             fprintf('\tParidad: %d\n\tFunción par: %s\n\tFunción impar: %s\n\n', p, Fpar, Fimp);
%         case 4 % Prueba 4
%             fprintf('Función: %s\n', FDN2);
%             [p, Fpar, Fimp] = ESPARIMPAR(n, FDN2, 0);
%             fprintf('\tParidad: %d\n\tFunción par: %s\n\tFunción impar: %s\n\n', p, Fpar, Fimp);
%         case 5 % Prueba 5
%             fprintf('Función: %s\n', FDN2);
%             [p, Fpar, Fimp] = ESPARIMPAR(n, FDN2, 0);
%             fprintf('\tParidad: %d\n\tFunción par: %s\n\tFunción impar: %s\n\n', p, Fpar, Fimp);
%         otherwise
%             warning('Cuidado, no se han definido todas las pruebas que usted está requiriendo.');
%     end
% end