import glob
from pathlib import Path
import warnings
import pandas as pd
import modelskill as ms

obs_fldr = "../observations/"
alt_fldr = "../observations/altimetry/"

def get_swh_point_obs(obs_fldr, station_file):
    """Get wave height point observations as list of PointObservation objects"""
    q = ms.Quantity(name="Significant Wave Height", unit="meter")
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

def get_mwd_point_obs(station_file):
    """Get wave period point observations as list of PointObservation objects"""
    q = ms.Quantity(name="Mean wave direction", unit="degree")
    mwdlist = []

    df_stn = pd.read_csv(obs_fldr + station_file, index_col=0)

    for i, row in df_stn.iterrows():
            if not Path(obs_fldr + f"{i}.csv").exists():
                continue
            df = pd.read_csv(obs_fldr + f"{i}.csv", index_col=0)
            df.index = pd.to_datetime(df.index, format="ISO8601")
            # Check is VMDR column exists
            if 'VMDR' not in df.columns:
                continue
            o = ms.PointObservation(df.VMDR, x=row['lon'], y=row['lat'], name=i, quantity=q)
            mwdlist.append(o)

    return mwdlist



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

