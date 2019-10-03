import matplotlib as matplotlib
matplotlib.use("Agg", force = True)

import networkx as nx
import netwulf as wulf
import matplotlib.pyplot as plt

  
g = nx.read_graphml("g")
  
stylized_network, config = wulf.visualize(g)
  
fig, ax = wulf.draw_netwulf(stylized_network)
plt.show()
