%{ 
An�lisis de Se�ales y Sistemas - TP Laboratorio N� 2
Funci�n ESPERIODICA - Grupo 6

Argumentos:
    - X, H: Funciones
    - nx, nh: Dominio de las funciones

Retorna:
    - Yn: resultado (vector)
    - Ynx: valores de x (vector)
    - Xnx, Hnx: valores de x de X y H (vector)

Repositorio disponible en: https://github.com/marcoshuck/matlab-tp2-asys

Realizado por Huck Marcos A. y Castelluci Leandro E.
%}

function [ Yn, Ynx, Xnx, Hnx  ] = CONVD( nx, X, nh, H )
    Xnx = -abs(nx):1:abs(nx); 
    Hnx = -abs(nh):1:abs(nh);
    Yn = conv(X(Xnx),H(Hnx));
    Ynx = linspace(-(abs(Xnx(1))+abs(Hnx(1))),abs(Xnx(length(Xnx)))+abs(Hnx(length(Hnx))),length(Xnx)+length(Hnx)-1);
end

%function[Yn, Ynx, Xnx, Hnx] = CONVD(nx, X, nh, H)
%    if(size(nx) == size(nh))
%        Xnx = X(nx);
%        Hnx = H(nh);
%        Yn = zeros(1, length(nx));
%        for idx = 1:length(Hnx)
%            Ynx = FCORT(Xnx, nx(idx), 0, nx);
%            Yn = Hnx(idx) .* Ynx(nx) + Yn;
%        end;
%    else
%        warning('nx y nh son de tama�os distintos.');
%    end
%end