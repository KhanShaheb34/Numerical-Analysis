y = @(x) x^3 - 2 * x^2 - 4;

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

for i = 1:100
    c = (a * y(b) - b * y(a)) / (y(b) - y(a));
    if y(a)*y(c) < 0
        b = c;
    else
        a = c;
    end
    if abs(y(c)) < 1.0E-10
        break
    end
end

fprintf("The root: %d\nIterations: %d\n", c, i)