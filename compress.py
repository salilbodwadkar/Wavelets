import numpy as np

def comp(y, r):
    abs_y = np.abs(y)
    threshold = r * np.max(abs_y)
    yc = np.where(abs_y < threshold, 0, y)
    
    return yc
