y = @(x) x^3 - 2 * x^2 - 4;
y1 = @(x) 3 * x^2 - 4*x;

a = input("Enter a: ");
b = input("Enter b: ");

if y(a) * y(b) > 0
    fprintf("No root in range!\n")
    return
end

if y(a) == 0
    fprintf("%d is root\n", a)
    return
end

if y(b) == 0
    fprintf("%d is root\n", b)
    return
end

c = (a+b)/2;

for i = 1:100
    c = c - (y(c) / y1(c));
    if abs(y(c)) < 1.0E-10
        break
    end
end

fprintf("The root: %d\nIterations: %d\n", c, i)