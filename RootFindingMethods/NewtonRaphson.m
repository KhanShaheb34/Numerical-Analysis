function [root, iter] = NewtonRaphson(y, a, b)

    pkg load symbolic
    syms x;
    ff = f(x);

    y1 = diff(ff, x);

    if y(a) * y(b) > 0
        root = 0; iter = 0;
        fprintf("No root in range!\n")
        return
    end

    if y(a) == 0
        root = a; iter = 0;
        return
    end

    if y(b) == 0
        root = b; iter = 0;
        return
    end

    c = (a+b)/2;

    for i = 1:100
        c = c - (y(c) / y1(c));
        if abs(y(c)) < 1.0E-10
            break
        end
    end
endfunction