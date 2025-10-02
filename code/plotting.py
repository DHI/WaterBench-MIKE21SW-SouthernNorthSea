import matplotlib.pyplot as plt

def plot_scatter_cc(cc, title):    
    n_points = 10000
    fig, axs = plt.subplots(len(cc), 1, figsize=(9, 4*len(cc)))

    # Make sure axs is always iterable
    if len(cc) == 1:
        axs = [axs]
    else:
        axs = axs.flatten()

    for i in range(len(cc)):
        cc[i].plot.scatter(ax=axs[i], show_points=n_points)
        axs[i].set_title(title + f"\n {cc[i].name}")
        axs[i].legend(loc="upper center", bbox_to_anchor=(0.5, -0.15), ncol=1)

    plt.tight_layout()
    plt.show()


def plot_timeseries_currents(cc, title):
    time_slice = slice("2022-01","2022-01")
    fig, axs = plt.subplots(len(cc), 1, figsize=(12,3*len(cc)))
    axs = axs.flatten()
    for i in range(len(cc)):
        cc[i].sel(time=time_slice).plot.timeseries(ax=axs[i])
        axs[i].set_title(title + f": {cc[i].name}")
    plt.tight_layout()
    plt.show()

## these functions were not used at all I see. Maybe remove file?