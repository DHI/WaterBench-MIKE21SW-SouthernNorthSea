# Spectral wave model of the Southern North Sea: MIKE21 SW model setup, outputs and observation data

## Description

**MIKE 21 SW** is a new generation spectral wind-wave model based on unstructured meshes. The model simulates the growth, decay and transformation of wind-generated waves and swell waves in offshore and coastal areas. This repository includes a highly simplified model setup and 2-year simulation results for a region in the Southern North Sea, as well as observational data and code for model validation.

This dataset is part of the **WaterBench** series by DHI, supporting open research on water-related challenges. It is intended for **educational and research purposes only**, such as model validation, parameter calibration, and machine learning applications. The model mesh has been reduced from over 80,000 to ~8,000 elements compared to our operational model, and inputs are coarser in time and space, resulting in increased error. **Results must not be used for decision-making.**

Files:

* **README**. Description of dataset with details on citations, data processing, and background information. 
* **WaterBench-MIKE21SW-SouthernNorthSea.zip**: model setup, input data (e.g., boundary conditions, wind), observational data, and code for data exploration and model validation. 
* **MIKE21SW-SouthernNorthSea-output.zip**: 2-years model result files `Area.dfsu`, `Points.dfs0` and `Points_spectral.dfsu` (~7.5 GB).
* **MIKE21SW-SouthernNorthSea-input.zip**: wind input data and hydrodynamic area file for the model(~4 GB).


## DOI

10.5281/zenodo.17099654

## Contributors

* Melissa Ulsøe Jessen
* Jesper Sandvig Mariegaard

## Publication date

2025-09-24

## Funding

Danish Ministry of Higher Education and Science

## Software

https://github.com/DHI/WaterBench-MIKE21SW-SouthernNorthSea