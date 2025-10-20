import glob
from pathlib import Path
import warnings
import pandas as pd
import modelskill as ms

obs_fldr = "../observations/"
meas_fldr = "../observations/measurements/"
alt_fldr = "../observations/altimetry/"

def get_swh_point_obs(station_file):
    """Get wave height point observations as list of PointObservation objects"""
    q = ms.Quantity(name="Significant Wave Height", unit="meter")
    swhlist = []

    df_stn = pd.read_csv(obs_fldr + station_file, index_col=0)

    for i, row in df_stn.iterrows():
        df = pd.read_csv(meas_fldr + f"{i}.csv", index_col=0)
        df.index = pd.to_datetime(df.index, format="ISO8601")
        o = ms.PointObservation(df.significant_wave_height, x=row['lon'], y=row['lat'], name=i, quantity=q)
        swhlist.append(o)

    return swhlist

def get_tp_point_obs(station_file):
    """Get wave period point observations as list of PointObservation objects"""
    q = ms.Quantity(name="Peak wave period", unit="s")
    tplist = []

    df_stn = pd.read_csv(obs_fldr + station_file, index_col=0)

    for i, row in df_stn.iterrows():
            if not Path(meas_fldr + f"{i}.csv").exists():
                continue
            df = pd.read_csv(meas_fldr + f"{i}.csv", index_col=0)
            df.index = pd.to_datetime(df.index, format="ISO8601")
            # Check that peak wave period column exists
            if 'peak_wave_period' not in df.columns:
                continue
            o = ms.PointObservation(df, item='peak_wave_period', x=row['lon'], y=row['lat'], name=i, quantity=q, aux_items='significant_wave_height')
            tplist.append(o)
    return tplist

def get_mwd_point_obs(station_file):
    """Get wave period point observations as list of PointObservation objects"""
    q = ms.Quantity(name="Mean wave direction", unit="degree", is_directional=True)
    mwdlist = []

    df_stn = pd.read_csv(obs_fldr + station_file, index_col=0)

    for i, row in df_stn.iterrows():
            if not Path(meas_fldr + f"{i}.csv").exists():
                continue
            df = pd.read_csv(meas_fldr + f"{i}.csv", index_col=0)
            df.index = pd.to_datetime(df.index, format="ISO8601")
            # Check is mean wave direction column exists
            if 'mean_wave_direction' not in df.columns:
                continue
            o = ms.PointObservation(df.mean_wave_direction, x=row['lon'], y=row['lat'], name=i, quantity=q)
            mwdlist.append(o)

    return mwdlist



def get_altimetry_obs(quality=None):
    """Get altimetry observations as list of TrackObservation objects"""
    sat_files = sorted(glob.glob(alt_fldr + "altimetry_*.csv"))
    missions = [f.split("_")[1].split(".")[0] for f in sat_files] # get satellite names from filenames
    q = ms.Quantity(name="Significant Wave Height", unit="meter")
    altlist = []
    for m in missions:
        df = pd.read_csv(alt_fldr + f"altimetry_{m}.csv", index_col=0)
        df.index = pd.to_datetime(df.index, format="ISO8601")
        if quality is not None:
            df = df[df.quality_significant_wave_height == quality]

        with warnings.catch_warnings():
            warnings.filterwarnings("ignore", message=".*duplicate timestamps.*")
            # Create TrackObservation object
            o = ms.TrackObservation(df, item="significant_wave_height", x_item="longitude", y_item="latitude", name=m, quantity=q)
        altlist.append(o)
    return altlist

