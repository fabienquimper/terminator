#!/bin/bash

# Nom du script par défaut
DEFAULT_SCRIPT="007_pipeline_audiospeachreco.py"

# Vérifier si un script a été passé en paramètre
if [ -n "$1" ]; then
    SCRIPT_TO_RUN="$1"
else
    SCRIPT_TO_RUN="$DEFAULT_SCRIPT"
fi

# Créer un environnement virtuel
python3 -m venv env

# Activer l'environnement virtuel
source env/bin/activate

# Mettre à jour pip
pip install --upgrade pip

# Installer les dépendances
pip install -r requirements.txt

# Lancer le script Python spécifié
python "$SCRIPT_TO_RUN"

echo "Installation terminée et script '$SCRIPT_TO_RUN' lancé."
