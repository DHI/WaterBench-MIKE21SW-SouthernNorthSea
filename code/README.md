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
    + Link: [`model_validation_altimetry`](model_validation_altimetry.ipynb)
    + Notebook validating model results against **satellite altimetry observations**.  
- model_validation_wave_direction.ipynb
    + Link: [`model_validation_period_and_direction`](model_validation_wave_direction.ipynb)
    + Notebook for model validation of **mean wave direction**.  
- model_validation_wave_heigt.ipynb
    + Link: [`model_validation_wave_height`](model_validation_wave_height.ipynb)
    + Notebook validating model results against observations of **significant wave height**.  
- model_validation_period_and_direction.ipynb
    + Link: [`model_validation_wave_period`](model_validation_wave_period.ipynb)
    + Notebook for model validation of **peak wave period**.  
- helper.py
    + Link: [`helper`](helper.py)
    + Python helper module with utility functions for data processing and analysis.
- plotting.py
    + Link: [`plotting`](plotting.py)
    + Python plotting module with helper functions for visualizing data.  
- requirements.txt
    + Link: [`requirements`](requirements.txt)
    + Python dependencies required to run the notebooks and scripts.  


# Python and libraries used in the notebooks

Python 3.12.10

Library | Version
--- | ---
ipykernel | 6.29.5
matplotlib | 3.10.3
mikeio | 2.6.0
modelskill | 1.2.0
numpy | 2.2.6
pandas | 2.2.3

The file [`requirements.txt`](requirements.txt) contains the list of libraries and their versions used in the notebooks.
