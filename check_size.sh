#!/bin/bash

# Fonction pour calculer la taille d'un répertoire
calculate_size() {
    local dir=$1
    if [ -d "$dir" ]; then
        local size=$(du -sh "$dir" 2>/dev/null | cut -f1)
        echo "$size"
    else
        echo "0B"
    fi
}

# Calculer la taille de l'environnement virtuel
env_size=$(calculate_size "env")

# Calculer la taille des modèles (vous pouvez ajuster le chemin selon l'emplacement de vos modèles)
model_size=$(calculate_size "models")

# Calculer la taille des paquets installés (si vous avez un répertoire spécifique pour les paquets)
package_size=$(calculate_size "packages")

# Afficher les tailles
echo "Taille de l'environnement virtuel : $env_size"
echo "Taille des modèles : $model_size"
echo "Taille des paquets : $package_size"

# Calculer la taille totale
total_size=$(($(du -sb env models packages 2>/dev/null | awk '{s+=$1} END {print s}'))
echo "Taille totale (env + modèles + paquets) : $(numfmt --to=iec-i --suffix=B $total_size)"
