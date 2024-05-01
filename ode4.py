import numpy as np
from scipy.integrate import odeint
import matplotlib.pyplot as plt

tmin = 0
tmax = 3
tspan = np.linspace(tmin, tmax)
y0 = 1

def myode(y, t):
    return -2*y

t = np.linspace(tmin, tmax)
y = odeint(myode, y0, t)

plt.figure(figsize=(24, 13.5))
plt.plot(t, y, 'ro', linewidth=1, markersize=20)
plt.grid(True)
plt.xlabel("Time", fontsize=48)
plt.ylabel("Y", fontsize=48)
plt.xticks(fontsize=48)
plt.yticks(fontsize=48)

t_exact = np.linspace(tmin, tmax)
y_exact = np.exp(-2*t_exact)
plt.plot(t_exact, y_exact, 'b:', linewidth=3)
plt.plot(t, y, linewidth=1, markersize=20)

plt.grid(True)
plt.show()
