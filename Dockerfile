FROM python:3.9-slim

# Define diretório de trabalho
WORKDIR /workspace

# Instala dependências do sistema
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copia requirements.txt (se existir) ou instala as dependências direto
COPY . /workspace

# Instala dependências Python
RUN pip install --no-cache-dir \
    jupyter \
    jupyterlab \
    numpy \
    pandas \
    scikit-learn \
    tensorflow \
    matplotlib \
    seaborn \
    opencv-python-headless \
    tqdm

# Expõe porta do Jupyter
EXPOSE 8888

# Inicia Jupyter Lab com acesso remoto permitido
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
