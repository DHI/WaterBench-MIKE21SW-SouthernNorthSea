# Folder structure
The code folder is organized in the following way

- README.md
- explore_full_spectral_model_result_data.ipynb
    + Link: [`explore_full_spectral_model_result_data`](explore_full_spectral_model_result_data.ipynb)
    + Notebook demonstrating how to open and analyze **full spectral model results** (directional wave spectra).  
- explore_model_result_data.ipynb
    + Link: [`explore_model_result_data`](explore_model_result_data.ipynb)
    + Notebook showing how to open MIKE dfs data (non-spectral), including **mesh, bathymetry, and model outputs**.  
- explore_observation_data.ipynb
    + Link: [`explore_observation_data`](explore_observation_data.ipynb)
    + Notebook for loading and inspecting **observation datasets** (e.g., buoy or station data).  
- model_validation_altimetry.ipynb
    + Link: ['model_validation_altimetry'](model_validation_altimetry.ipynb)
    + Notebook validating model results against **satellite altimetry observations**.  
- model_validation_period_and_direction.ipynb
    + Link: ['model_validation_period_and_direction'](model_validation_period_and_direction.ipynb)
    + Notebook for model validation of **wave period and direction**.  
- model_validation_wave_heigt.ipynb
    + Link: ['model_validation_wave_height'](model_validation_wave_height.ipynb)
    + Notebook validating model results against observations of **significant wave height (Hs)**.  
- plotting.py
    + Link: ['plotting'](plotting.py)
    + Python plotting module with helper functions for visualizing data.  
- requirements.txt
    + Link: ['requirements'](requirements.txt)
    + Python dependencies required to run the notebooks and scripts.  


# Python and libraries used in the notebooks

Python 3.12.10

Library | Version
--- | ---
modelskill | 1.2.0
mikeio | 2.4.0
matplotlib | 3.10.1
pandas | 2.2.3
mikecore | 0.2.2
numpy | 2.2.4
scipy | 1.15.2
xarray | 2025.3.0
ipykernel | 6.29.5

[`requirements.txt`](requirements.txt) contains the list of libraries and their versions used in the notebooks (excluding jupyter).
