y = @(x) x^2 - 9;

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
    c = (a+b)/2;
    if y(a)*y(c) < 0
        b = c;
    else
        a = c;
    end
    if abs(y(c)) < 1.0E-6
        break
    end
end

fprintf("The root: %d\nIterations: %d\n", c, i)