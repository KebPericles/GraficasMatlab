clear all;
close all;

%Informacion de la grafica
%intervalo de graficacion
x0 = 0;
xf = 10;
step = 0.5;

% Preparacion de x para graficar
n = (xf-x0)/step;
dx = (xf-x0)/n;
xi = x0:dx:xf;

% Inicializar
y(n) = 0;

% Funcion de x
for i=1:n+1
    y(i) = f(xi(i));
end

%Grafica
graph = plot(xi,y,'LineWidth', 2);
xline(0);
yline(0);
axis([-0.1 3.5+0.1 -0.5 1.5])


%Funcion
function fx = f(x)
    c = 2 * round(x/(p()/2));

    if mod(x+d(), p()) < p()/2
        %crece
        fx = m()*x - c;
    else
        %decrece
        fx = -m()*x + c;
    end
    fx = fx*lim();
end

% Parametros
%maximo en y
function lim = lim()
    lim = 3;
end

%periodo de la funcion
function p = p()
    p = 4;
end
% distancia de puntos importantes
function d = d()
    d = p() / 4;
end
% pendiente para que en cualquier periodo el maximo sea 1
function m = m()
    m = 1/d();
end