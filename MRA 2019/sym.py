import itertools
import math
import numpy as np
def sym(A):
    r=len(A.shape)
    d=A.shape[0]
    symA=np.zeros([d]*r)
    for i in itertools.permutations(range(r)):
        symA += np.transpose(A,axes=list(i))
    symA/=math.factorial(r)
    return symA
        