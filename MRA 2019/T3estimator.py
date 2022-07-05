from moment_tensor import moment
from sym import sym
import statistics
import numpy as np
def T3estimator(y,sigma):
    n,d=y.shape
    first_term = sum( [ moment(3,y[i,:]) for i in range(n) ] ) / n
    second_term = 0
    for i in range(n):
        for l in range(d):
            roll_y=np.roll(y[i,:], l)
            second_term += -3 * sym( np.tensordot(roll_y,np.identity(d),0) )
    second_term=second_term/(n*d)*sigma**2
    return first_term+second_term