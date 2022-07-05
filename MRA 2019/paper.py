import numpy as np
import math
from distance import rho
from T3estimator import T3estimator
from Jennrich import Jennrich
from generate import generate
def run(n,sigma,theta):
    d=len(theta)
    y=generate(theta,n,sigma)
    T=T3estimator(y,sigma)
    J=Jennrich(T,d)
    theta_tilde=np.real(J[:,0])
    epsilon=min( rho(theta_tilde,theta), rho(-theta_tilde,theta) )
    return theta_tilde,epsilon