clear all;
close all;

x0 = 0;
xf = 2*pi;
n = 1000;

dx = (xf-x0)/n;
xi = x0:dx:xf;

y(n) = 0;

for i=1:n+1
    y(i) = f(xi(i));
end

graph = plot(xi,y,'LineWidth', 2);
xline(0);
yline(0);
axis([-0.1 3.5+0.1 -0.5 1.5])

function fx = f(x)
    x = round(x-0.5);
    if mod(x,2)==0
        fx = 1;
    else
        fx = 0;
    end
end