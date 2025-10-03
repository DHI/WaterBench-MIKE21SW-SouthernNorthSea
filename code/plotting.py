import matplotlib.pyplot as plt

def plot_timeseries_currents(cc, title):
    time_slice = slice("2022-01","2022-01")
    fig, axs = plt.subplots(len(cc), 1, figsize=(12,3*len(cc)))
    axs = axs.flatten()
    for i in range(len(cc)):
        cc[i].sel(time=time_slice).plot.timeseries(ax=axs[i])
        axs[i].set_title(title + f": {cc[i].name}")
    plt.tight_layout()
    plt.show()

