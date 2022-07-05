import numpy as np
def moment(r,theta):
    d=len(theta)
    T=np.zeros([d]*r)
    for l in range(d):
        roll_tau=np.roll(theta, l)
        tem=roll_tau
        for dim in range(1,r):
            tem=np.tensordot(tem,roll_tau,0)
        T=T+tem
    T=T/d
    return T