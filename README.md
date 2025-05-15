# Conda Jupyter Notebook Docker Environment

A ready-to-use Docker environment for Jupyter notebooks with Conda, including GPU support.

## Overview

This repository provides a containerized Jupyter Lab environment with:
- Python 3.10
- Conda package management
- Pre-installed data science libraries (NumPy, Pandas)
- GPU support via NVIDIA drivers
- Sample notebook and data for quick testing

## Project Structure

```
conda-jupyter-notebook/
├── Dockerfile            # Docker image definition
├── docker-compose.yml    # Container orchestration config
├── environment.yml       # Conda environment specification
├── data/                 # Data directory
│   └── sample_data.csv   # Sample dataset
└── notebooks/            # Jupyter notebooks
    └── example.ipynb     # Example notebook demonstrating data analysis
```

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [NVIDIA Container Toolkit](https://github.com/NVIDIA/nvidia-docker) (for GPU support)

## Setup Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/JakobFenderHSLU/conda-jupyter-notebook
   cd conda-jupyter-notebook
   ```

2. Build and start the container:
   ```bash
   docker compose up --build
   ```

3. Access Jupyter Lab:
   - Open your browser and navigate to `http://localhost:8888`
   - Use the token `mytoken` to log in

## Usage

### Running the Example Notebook

1. After accessing Jupyter Lab, navigate to the `notebooks` directory
2. Open `example.ipynb`
3. Run the cells to see how the sample data is loaded and analyzed

### Adding Your Own Notebooks

You can add your own notebooks to the `notebooks` directory. They will be available in the Jupyter Lab interface.

### Adding Your Own Data

Place your data files in the `data` directory. They will be accessible from your notebooks.

## Environment Customization

To add additional Python packages:

1. Edit the `environment.yml` file to include your required packages
2. Rebuild the Docker container:
   ```bash
   docker-compose down
   docker-compose up --build
   ```

## GPU Support

This environment is configured to use NVIDIA GPU (device ID 1) for accelerated computing. To modify GPU settings:

1. Edit the `docker-compose.yml` file to change the device ID or capabilities
2. Restart the container

## License

DO WHAT YOU WANT PUBLIC LICENSE
Version 1.0, May 2025

Copyright (C) 2025 Jakob Fender

Everyone is permitted to copy, modify, publish, use, sell, or distribute this work, either in source code form, for any purpose, commercial or non-commercial, and by any means.

THE WORK IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.