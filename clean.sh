#!/bin/bash

# Désactiver l'environnement virtuel s'il est activé
if [ -n "$VIRTUAL_ENV" ]; then
    deactivate
fi

# Supprimer l'environnement virtuel
if [ -d "env" ]; then
    rm -rf env
    echo "Environnement virtuel supprimé."
else
    echo "Aucun environnement virtuel trouvé."
fi

# Supprimer les fichiers générés par pip
if [ -f "requirements.txt" ]; then
    rm -f *.egg-info dist build
    find . -type d -name "__pycache__" -exec rm -rf {} +
    echo "Fichiers générés par pip supprimés."
else
    echo "Aucun fichier requirements.txt trouvé."
fi

echo "Nettoyage terminé."
