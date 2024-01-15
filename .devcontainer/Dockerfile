# Usa un'immagine base di Python compatibile con Apple Silicon
FROM python:3.11-slim

# Imposta l'ambiente per non richiedere conferme durante l'installazione
ENV DEBIAN_FRONTEND=noninteractive

# Aggiorna e installa dipendenze
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    build-essential \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Installa Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Imposta il path per Poetry
ENV PATH="/root/.local/bin:${PATH}"

# Scarica e installa Google Cloud SDK
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
    && apt-get update -y \
    && apt-get install google-cloud-sdk -y

# Impostazioni di lavoro
WORKDIR /workspace

# Copia il tuo progetto nel container (opzionale)
# COPY . /workspace
