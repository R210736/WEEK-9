function dydt = returns_dydt(y, t)
    dydt = [(1 - y(1)) / (1.95 - y(1)) - y(1) / (0.05 + y(1));
            (1 - y(2)) / (1.95 - y(2)) - y(2) / (0.05 + y(2));
            (1 - y(3)) / (1.95 - y(3)) - y(3) / (0.05 + y(3))];
endfunction

y0 = [0; 1; 2];
t = linspace(0, 5);
y = lsode("returns_dydt", y0, t);

plot(t, y);
xlabel("Time");
ylabel("Y");
title("ODE Solution");
grid on;
