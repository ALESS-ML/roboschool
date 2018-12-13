#!python3
from baselines.common import plot_util as pu
import sys
results = pu.load_results(sys.argv[1])
import matplotlib.pyplot as plt 
import numpy as np 
r = results[0] 
plt.plot(np.cumsum(r.monitor.l),r.monitor.r)
plt.show()
