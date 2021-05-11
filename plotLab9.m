fun = @(x) x .^ (1/3)

x = linspace(0, 10);
figure
plot(x, f(x));
hold on;
x0 = 7;

[A, y, z] = Lab9(fun, [1, 2, 4, 5, 8], 0.001, x0)
plot(x0, z);

A
y
z