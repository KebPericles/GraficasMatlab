clear all;
close all;

x0 = 0;
xf = 2.5;
n = 100;

dx = (xf-x0)/n;
xi = x0:dx:xf;

y(n) = 0;

for i=1:n+1
    y(i) = f(xi);
end

graph = plot(xi,y,'LineWidth', 2);
xline(0);
yline(0);
axis([-0.1 2.5 -0.1 2])

function fx = f(x)
    fx = 1;
end