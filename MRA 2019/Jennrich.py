import numpy as np
def Jennrich(T,r):
    m,n,p=T.shape
    a = np.random.rand(p)
    a = a / np.linalg.norm(a,2)
    b = np.random.rand(p)
    b = b / np.linalg.norm(a,2)
    A = np.tensordot(T,a,1)
    B = np.tensordot(T,b,1)
    A_pseudo_inverse=np.linalg.pinv(A)
    B_pseudo_inverse=np.linalg.pinv(B)
    D,U=np.linalg.eig(A@B_pseudo_inverse)
    E,V=np.linalg.eig(B@A_pseudo_inverse)
    true=[]
    for i in range(m):
        if abs(D[i])>0.000000001:
            true.append(i)
    return U[:,true]