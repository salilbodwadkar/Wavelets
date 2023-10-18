import numpy as np

def compress(w,r):
    if (r < 0) or (r > 1):
        raise Exception("R must be between zero and one")
    N = len(w)
    Nr = np.floor(N*r)
    ww = np.sort(np.abs(w))
    tol = np.abs(ww[Nr])
    
    for i in range(N):
        if np.abs(w[i]) < tol:
             w[i] = 0  
    wc = w
    return wc
    
