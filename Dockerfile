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

# Pré-carrega workspace com os notebooks principais já abertos como abas.
# Usa o import oficial do JupyterLab para garantir o naming/hash correto da pasta de workspaces.
RUN jupyter lab workspaces import /workspace/jupyter-workspace.json --name=default

# Expõe porta do Jupyter
EXPOSE 8888

# Inicia Jupyter Lab abrindo a workspace padrão (notebooks fixos como abas)
# e desabilita o prompt de token/senha (uso local, sem autenticação).
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--ServerApp.token=", "--ServerApp.password=", "--LabApp.default_url=/lab/workspaces/default"]
