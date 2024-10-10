# Analysis Folder

This folder contains Jupyter notebooks used for analyzing the results of molecular dynamics simulations of alanine dipeptide across different temperatures. Each notebook focuses on a specific aspect of the analysis, such as computing free energy surfaces, plotting energy histograms, or examining dihedral angles.

## Contents

- **Free_Energy_Surface_300K_400K_600K_6kT.ipynb**: Generates and plots the free energy surfaces for temperatures 300K, 400K, and 600K, with the free energy capped at 6 kT for better visualization.

- **Free_Energy_Surface_300K.ipynb**: Computes and visualizes the free energy surface specifically for the 300K trajectory, without a cap on the free energy values.

- **Free_Energy_Surface_300K_6kT.ipynb**: Computes the free energy surface for 300K and sets a maximum free energy value of 6 kT for the plot to highlight low-energy regions.

- **Free_energy_surface.ipynb**: A generalized notebook for computing free energy surfaces, which can be adapted for different temperature trajectories or modified parameters.

- **histogram_of_energy.ipynb**: Calculates and plots histograms of the potential energy distribution for each temperature (300K, 400K, 600K), allowing comparison of energy distributions across replicas.

- **replica_temperature_transitions.ipynb**: Analyzes how each replica transitions between temperatures in a replica exchange molecular dynamics (REMD) simulation. This notebook plots the temperature of each replica over time, showing whether replicas explore the temperature space effectively.

- **phi_psi_dihedral_angles.ipynb**: Computes and plots the \(\phi\) and \(\psi\) dihedral angles of alanine dipeptide over time, providing insights into the conformational changes and stability of the molecule during the simulation.


