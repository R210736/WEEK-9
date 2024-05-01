import numpy as np
import matplotlib.pyplot as plt
t=np.arange(0,5,0.1)
x=np.sin(0.2*np.pi*t)
y=np.cos(0.5*np.pi*t)
z=x+y
plt.subplot(3,1,1)
plt.plot(x)
plt.subplot(3,1,2)
plt.plot(y)
plt.subplot(3,1,3)
plt.plot(z)
plt.show()