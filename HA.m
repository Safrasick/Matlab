%Задание 1
syms x
f = x .^ 3 + 3 .* x .^ 2 + 1;
res = int(f, x)

%Задание 2
syms x
f = sin(2 .* x + 3) - 2 .* cos(5 .* x);
res = int(f, x, 0, 4)
vpa(res, 3)
 
%Задание 3
syms x y
f = 2 .* x + (y .^2 / 2);
res = int(int(f, x), y)

%Задание 4
syms x y z
f = (x .^2 - 2) .* y + 3 .* z;
res = vpa(int(int(int(f, x, 0, 3), y, 1, 2), z, -1, 1), 3)

%Задание 5
syms x
f = sin(x) .^ tan(x);
res = limit(f, (pi ./ 2))
vpa(res, 3)

%Задание 6
syms x
f = x - cos(x);
res = diff(f)

%Задание 7
syms x
f = exp((-2) .* x) + x .^ 3;
res = diff(f, 3)

%Задание 8
x = dsolve('Dx = x .* tan(t) + (1 ./ cos(t))', 'x(0) = 0')
ezplot(x, [0, 20])
grid
