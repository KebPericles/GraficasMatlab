clear all;
close all;

x0 = 0;
xf = 2*pi;
n = 100;

dx = (xf-x0)/n;
xi = x0:dx:xf;

y(n) = 0;

for i=1:n+1
    y(i) = f(xi(i));
end

graph = plot(xi,y,'LineWidth', 2);
xline(0);
yline(0);
axis([-0.1 2*pi+0.1 -1.5 1.5])

function fx = f(x)
    fx = sin(x);
end