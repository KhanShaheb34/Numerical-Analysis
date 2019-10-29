fx = @(y, z) (2 + 2*y - z) / 10;
fy = @(z, x) (5 + 3*x - 2*z) / 11;
fz = @(x, y) (1 + y - x) / 5;

x = 0; y = 0; z = 0;
xt = 0; yt = 0; zt = 0;

for i = 1 : 100
    xt = fx(y, z);
    yt = fy(z, x);
    zt = fz(x, y);

    x = xt; y = yt; z = zt;
end

printf("X: %d\nY: %d\nZ: %d\n", x, y, z);

