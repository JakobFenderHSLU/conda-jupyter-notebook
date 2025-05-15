FROM continuumio/miniconda3

# Set working directory
WORKDIR /app

# Copy environment.yml into the container
COPY environment.yml .

# Create conda environment
RUN conda env create -f environment.yml

# Activate environment (must match name in environment.yml)
# Add conda to PATH, fix token, and launch Jupyter
CMD ["/bin/bash", "-c", "source activate notebook-env && jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --ServerApp.token=mytoken --ServerApp.allow_origin='*' --ServerApp.root_dir=/app"]
