# 🏥 Sistema de Suporte ao Diagnóstico Cardiovascular
## Tech Challenge Fase 1 — Atividade Extra: Visão Computacional

**Equipe:** # Flamers Team 🔥  
**Instituição:** Hospital Universitário (Simulação)  
**Projeto:** IA para Triagem e Apoio à Decisão Médica em Doenças Circulatórias

> 📄 **Desafio oficial:** [IADT - Fase 1 - Tech challenge B.pdf](IADT%20-%20Fase%201%20-%20Tech%20challenge%20B.pdf)

---

## 📺 Demonstração em Vídeo
Assista à apresentação do projeto, metodologia e resultados:
👉 **[Link para o Vídeo no YouTube/Vimeo](#)** *(https://www.youtube.com/watch?v=6l4sF38SXOM)*

---

## 👥 Membros da Equipe
* **Flávio Oscar Hahn** - RM 374132
* **Larissa Gomes do Vale Cabrerisso Machado** - RM 370911
* **Michelle Almeida Nogueira Rodrigues** - RM 372291
* **Ramon Silva** - RM 373445
* **Selvino Wilmar Rodrigues Junior** - RM 368570

---

## 📋 Sobre o Projeto
Este projeto foi desenvolvido como parte da Fase 1 da Pós-Tech em IA para Desenvolvedores. O objetivo é auxiliar médicos de um hospital universitário na análise inicial e triagem de pacientes com doenças do aparelho circulatório (CID-10: I00-I99), utilizando dados reais do DataSUS 2024.

Notebook principal de trabalho (entrega principal): [analiseDosDadosDATASUS.ipynb](analiseDosDadosDATASUS.ipynb).

O sistema utiliza algoritmos de Machine Learning para prever a **necessidade de internação em UTI**, permitindo que a equipe clínica priorize casos críticos e otimize o tempo de resposta hospitalar.

---

> 📒 Todas as orientações detalhadas, dicionário de dados, estratégias de pré-processamento, modelos utilizados e resultados estão documentados diretamente no notebook principal: [analiseDosDadosDATASUS.ipynb](analiseDosDadosDATASUS.ipynb).

---

## 🚀 Como Executar o Projeto

### Instalação
1. Clone o repositório:
   ```bash
   git clone [https://github.com/Flamers-Team/FLAMERSTEAM.git](https://github.com/Flamers-Team/FLAMERSTEAM.git)
   

---

## 🎁 Entrega Extra — Visão Computacional

# Detecção de Retinopatia Diabética com CNN

Notebook da entrega extra: [CNN_Retinopatia_Diabetica.ipynb](CNN_Retinopatia_Diabetica.ipynb).

Modelo de CNN para **detecção automática de retinopatia diabética** a partir de fotografias do fundo de olho (fundoscopia retiniana). O projeto treina e compara dois modelos: uma CNN construída do zero e Transfer Learning com EfficientNetB0.

> Este modelo é uma ferramenta de **suporte ao diagnóstico** — o médico sempre tem a palavra final.

---

## Sobre o Problema

A **retinopatia diabética (RD)** é uma das principais causas de cegueira evitável no mundo, causada pelo dano progressivo aos vasos sanguíneos da retina em pacientes com diabetes mellitus.

| Grau | Nome | Características |
|------|------|-----------------|
| 0 | No DR | Retina normal, sem lesões |
| 1 | Mild NPDR | Microaneurismas isolados |
| 2 | Moderate NPDR | Hemorragias, exsudatos, manchas algodonosas |
| 3 | Severe NPDR | Hemorragias em 4 quadrantes, IRMA |
| 4 | Proliferative DR | Neovascularização, risco de descolamento de retina |

O projeto converte esse problema em **classificação binária**: `normal` (Grau 0) vs `diabetic` (Graus 1–4).

---

## Fluxo do Projeto

```
1. Download manual do dataset via Kaggle
2. Análise Exploratória dos Dados (EDA)
3. Pré-processamento e Data Augmentation
4. Modelo 1: CNN personalizada (4 blocos convolucionais)
5. Modelo 2: Transfer Learning com EfficientNetB0 (2 fases)
6. Avaliação: Accuracy, Recall, F1-Score, AUC-ROC, Confusion Matrix
7. Interpretabilidade com Grad-CAM
8. Salvamento dos modelos e resultados
```

---

## Dataset

**[Diabetic Retinopathy 224x224 (Gaussian Filtered)](https://www.kaggle.com/datasets/sovitrath/diabetic-retinopathy-224x224-gaussian-filtered)**

| Split | Imagens |
|-------|---------|
| Treino | ~2.562 |
| Validação | ~546 |
| Teste | ~554 |

### Download manual

1. Acesse o link do dataset acima (requer conta no Kaggle)
2. Clique em **Download** para baixar o arquivo `.zip`
3. Extraia o conteúdo dentro da pasta `data/diabetic_retinopathy/` na raiz do projeto

**Estrutura esperada após extração:**
```
data/diabetic_retinopathy/
  └── gaussian_filtered_images/
        └── gaussian_filtered_images/
              ├── train/
              │     ├── No_DR/
              │     ├── Mild/
              │     ├── Moderate/
              │     ├── Severe/
              │     └── Proliferative_DR/
              ├── valid/
              └── test/
```

---

## Pré-requisitos

- Python 3.9+
- Conta no [Kaggle](https://www.kaggle.com) para download do dataset

---

## Instalação

### 1. Clone o repositório

```bash
git clone https://github.com/Flamers-Team/cnn-retinopatia-diabetica.git
cd cnn-retinopatia-diabetica
```

### 2. Instale as dependências

```bash
pip install tensorflow matplotlib seaborn scikit-learn opencv-python-headless tqdm pandas numpy
```

### 3. Baixe o dataset manualmente

Acesse o link abaixo, faça o download do `.zip` e extraia dentro de `data/diabetic_retinopathy/`:

```
https://www.kaggle.com/datasets/sovitrath/diabetic-retinopathy-224x224-gaussian-filtered
```

---

## Como Rodar

Abra e execute o notebook célula por célula:

```bash
jupyter notebook CNN_Retinopathy_Diabetes.ipynb
```

Antes de executar, certifique-se de que o dataset já foi extraído em `./data/diabetic_retinopathy/` conforme a estrutura descrita na seção **Dataset**.

---

## Tecnologias Utilizadas

| Categoria | Biblioteca | Uso |
|-----------|-----------|-----|
| Deep Learning | `tensorflow` / `keras` | Construção e treinamento dos modelos |
| Modelo pré-treinado | `EfficientNetB0` (ImageNet) | Transfer Learning |
| Processamento de imagem | `opencv-python-headless` | Leitura, redimensionamento e Grad-CAM |
| Dados | `numpy`, `pandas` | Manipulação de arrays e DataFrames |
| Visualização | `matplotlib`, `seaborn` | Gráficos de métricas e heatmaps |
| Métricas | `scikit-learn` | Avaliação dos modelos |
| Dataset | Kaggle (manual) | Download via site do Kaggle |
| Ambiente | `jupyter notebook` | Execução interativa |

---

## Arquitetura dos Modelos

### Modelo 1 — CNN Personalizada

4 blocos convolucionais progressivos (VGG-like):

```
Input (224 × 224 × 3)
  → Bloco 1: Conv2D(32)  × 2 → BN → ReLU → MaxPool → Dropout(0.25)
  → Bloco 2: Conv2D(64)  × 2 → BN → ReLU → MaxPool → Dropout(0.25)
  → Bloco 3: Conv2D(128) × 2 → BN → ReLU → MaxPool → Dropout(0.25)
  → Bloco 4: Conv2D(256) × 2 → BN → ReLU → MaxPool → Dropout(0.25)
  → GlobalAveragePooling2D
  → Dense(256, relu) → Dropout(0.5)
  → Dense(1, sigmoid)
```

### Modelo 2 — Transfer Learning EfficientNetB0

Treinado em 2 fases:

```
FASE 1 (5 épocas, LR = 1e-4):
  EfficientNetB0 (congelada) → cabeça classificadora treinada do zero

FASE 2 (até 15 épocas, LR = 1e-5):
  Últimas 30 camadas descongeladas → fine-tuning no domínio de retina
```

Cabeça classificadora:
```
GlobalAveragePooling2D → Dense(256, relu) → Dropout(0.4) → Dense(1, sigmoid)
```

---

## Estratégia de Treinamento

- **Otimizador:** Adam
- **Loss:** Binary Cross-Entropy
- **Class weights:** calculados automaticamente para compensar desbalanceamento
- **EarlyStopping:** monitora `val_auc`, patience=5, restaura melhores pesos
- **ReduceLROnPlateau:** reduz LR pela metade se `val_loss` estagnar por 3 épocas
- **ModelCheckpoint:** salva automaticamente o melhor modelo por `val_auc`

### Data Augmentation (apenas no treino)

| Transformação | Parâmetro |
|--------------|-----------|
| Rotação | ±20° |
| Shift horizontal/vertical | ±10% |
| Flip horizontal | ativado |
| Flip vertical | ativado |
| Zoom | 0.85–1.15× |
| Ajuste de brilho | 0.8–1.2 |

---

## Métricas de Avaliação

| Métrica | Importância clínica |
|---------|---------------------|
| **Recall** | Prioridade máxima — minimizar falsos negativos (pacientes doentes não detectados) |
| **Precision** | Evitar encaminhamentos desnecessários ao oftalmologista |
| **F1-Score** | Equilíbrio entre Recall e Precision |
| **AUC-ROC** | Capacidade discriminativa geral, independente do threshold |
| **Accuracy** | Métrica geral de acerto |

O projeto também inclui **análise de threshold** para ajustar o ponto de corte conforme a prioridade clínica (ex: maximizar Recall).

---

## Interpretabilidade — Grad-CAM

O **Grad-CAM** (Gradient-weighted Class Activation Maps) gera mapas de calor que mostram quais regiões da imagem de retina mais influenciaram a decisão do modelo.

```
Imagem → Forward pass → Gradientes da última Conv → Heatmap → Sobreposição
```

Isso permite que médicos validem se o modelo está focando nas estruturas corretas: microaneurismas, hemorragias, exsudatos e neovascularização.

---

## Arquivos Gerados

| Arquivo | Descrição |
|---------|-----------|
| `cnn_retinopathy_model.keras` | CNN personalizada treinada |
| `efficientnet_retinopathy_model.keras` | EfficientNetB0 treinado |
| `resultados_modelos.json` | Métricas finais dos dois modelos |
| `01_distribuicao.png` | Distribuição das classes |
| `02_exemplos_retina.png` | Amostras visuais por grau |
| `03_historico_cnn.png` | Curvas de aprendizado — CNN |
| `04_historico_tl.png` | Curvas de aprendizado — EfficientNetB0 |
| `05_avaliacao.png` | Confusion Matrix + Curva ROC |
| `06_gradcam_cnn.png` | Grad-CAM — CNN personalizada |
| `07_gradcam_tl.png` | Grad-CAM — EfficientNetB0 |

---

## Contexto Acadêmico

Projeto desenvolvido para o  **Tech Challenge Fase 1 (EXTRA)** do curso **IA for Devs** da FIAP, com foco em Visão Computacional aplicada à saúde.
