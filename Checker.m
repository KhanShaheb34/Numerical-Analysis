f = @(x) x^3 - 2 * x^2 -4;
a = 2.5;

cd RootFindingMethods;

[root iter] = Bisection(f, 2, 3)