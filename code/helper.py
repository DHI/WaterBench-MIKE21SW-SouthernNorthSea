import glob
from pathlib import Path
import warnings
import pandas as pd
import modelskill as ms
import matplotlib.pyplot as plt

obs_fldr = "../observations/" 
alt_fldr = "../observations/altimetry/"
df_stn = pd.read_csv(obs_fldr + "stations.csv", index_col=0)
df_stn_cur = pd.read_csv(obs_fldr + "current_stations.csv", index_col=0)


def get_swh_point_obs(station_file):
    """Get wave height point observations as list of PointObservation objects"""
    q = ms.Quantity(name="Significant wave height", unit="m")
    swhlist = []

    df_stn = pd.read_csv(obs_fldr + station_file, index_col=0)

    for i, row in df_stn.iterrows():
        df = pd.read_csv(obs_fldr + f"{i}.csv", index_col=0)
        df.index = pd.to_datetime(df.index, format="ISO8601")
        o = ms.PointObservation(df.VHM0, x=row['lon'], y=row['lat'], name=i, quantity=q)
        swhlist.append(o)

    return swhlist

def get_tp_point_obs(station_file):
    """Get wave period point observations as list of PointObservation objects"""
    q = ms.Quantity(name="Wave period", unit="s")
    tplist = []

    df_stn = pd.read_csv(obs_fldr + station_file, index_col=0)

    for i, row in df_stn.iterrows():
            if not Path(obs_fldr + f"{i}.csv").exists():
                continue
            df = pd.read_csv(obs_fldr + f"{i}.csv", index_col=0)
            df.index = pd.to_datetime(df.index, format="ISO8601")
            # Check is VTPK column exists
            if 'VTPK' not in df.columns:
                continue
            o = ms.PointObservation(df.VTPK, x=row['lon'], y=row['lat'], name=i, quantity=q)
            tplist.append(o)
    return tplist



def get_altimetry_obs(quality=None):
    """Get altimetry observations as list of TrackObservation objects"""
    sat_files = sorted(glob.glob(alt_fldr + "Altimetry_*.csv"))
    missions = [f.split("_")[1].split(".")[0] for f in sat_files] # get satellite names from filenames
    q = ms.Quantity(name="Significant Wave Height", unit="meter")
    altlist = []
    for m in missions:
        df = pd.read_csv(alt_fldr + f"Altimetry_{m}.csv", index_col=0)
        df.index = pd.to_datetime(df.index, format="ISO8601")
        if quality is not None:
            df = df[df.quality_significant_wave_height == quality]

        with warnings.catch_warnings():
            warnings.filterwarnings("ignore", message=".*duplicate timestamps.*")
            # Create TrackObservation object
            o = ms.TrackObservation(df, item="significant_wave_height", x_item="longitude", y_item="latitude", name=m, quantity=q)
        altlist.append(o)
    return altlist


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



