#!/bin/bash

# Clonar el repositorio
git clone --depth=1 https://github.com/ehettervik/es-runcommand-splash.git ~/config/scripts/splash_screens

# Verificar si el clon fue exitoso
if [ $? -ne 0 ]; then
    echo "Error al clonar el repositorio."
    exit 1
fi

echo "Repositorio clonado"

# Directorios
splash_screens_dir=~/config/scripts/splash_screens
config_dir=~/../../opt/retropie/configs

echo "Inicia movimiento de archivos de $splash_screens_dir a $config_dir"

# Recorrer cada carpeta en splash_screens
for folder in "$splash_screens_dir"/*; do
    echo "Carpeta: $folder"
    
    # Verificar que sea un directorio
    if [ -d "$folder" ]; then
        echo "Se encontró: $folder"
        
        # Obtener el nombre de la carpeta (A, B, C, ...)
        folder_name=$(basename "$folder")
        
        # Comprobar si la carpeta correspondiente existe en config
        if [ -d "$config_dir/$folder_name" ]; then
            # Verificar si el archivo launching.png existe
            if [ -f "$folder/launching.png" ]; then
                # Mover el archivo
                mv "$folder/launching.png" "$config_dir/$folder_name/"
                echo "Movido: $folder/launching.png a $config_dir/$folder_name/"
            else
                echo "No se encontró launching.png en $folder."
            fi
        else
            echo "No se encontró la carpeta $folder_name en config."
        fi
    fi
done
