# Analysis Folder

This folder contains Jupyter notebooks and data files used for analyzing a molecular dynamics production trajectory. The analysis focuses on end-to-end distance, radius of gyration, and Mean Squared Displacement (MSD) for specific atom groups.

## Contents

1. **Jupyter Notebooks**
   - `Art-Est_AMBER_end_to_end_distance.ipynb`: Computes and plots the end-to-end distance vs. time.
   - `Art-Est_AMBER_Radius_of_Gyration.ipynb`: Calculates and plots the radius of gyration over time.
   - `Ions_in_water_CHARMM36M_MSD_vs_Time.ipynb`: Analyzes and plots the MSD vs. time for Water Oxygens, Sodium, and Oxygen atoms.

2. **Data Files**
   - `Art-Est_AMBER_end_to_end_dist.xvg`: Data file containing end-to-end distance information over time.
   - `Art-Est_AMBER_Radius_of_Gyration.xvg`: Data file with radius of gyration data over time.

## Overview

Each notebook generates a well-labeled plot based on the production trajectory, which is then saved in the `Figures` folder. The MSD notebook includes a single plot for Water Oxygens, Sodium, and Oxygen atoms, as per assignment requirements.
