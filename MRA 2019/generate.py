import numpy as np
def generate(theta,n,sigma):
    d=len(theta)
    y=np.empty((n,d))
    shifts=np.random.randint(0,d,size=n)
    noises=np.random.normal(size=n)
    for i in range(n):
        y[i,:]=np.roll(theta,shifts[i])+sigma*noises[i]
    return y