FROM continuumio/miniconda3

# Set working directory
WORKDIR /app

# Copy environment.yml into the container
COPY environment.yml .

# Copy notebooks and data directories
COPY notebooks/ /app/notebooks/
COPY data/ /app/data/

# Create conda environment
RUN conda env create -f environment.yml

# Activate environment (must match name in environment.yml)
# Add conda to PATH, fix token, and launch Jupyter
CMD ["/bin/bash", "-c", "source activate notebook-env && jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --NotebookApp.token='mytoken' --NotebookApp.allow_origin='*' --NotebookApp.notebook_dir=/app"]
