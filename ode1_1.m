function dydt = returns_dydt(y, t)
    dydt = -y*t + 13;
endfunction

y0 = 1;
t = linspace(0, 5);
y = lsode("returns_dydt", y0, t);

plot(t, y);
xlabel("Time");
ylabel("Y");
title("ODE Solution");
grid on;
