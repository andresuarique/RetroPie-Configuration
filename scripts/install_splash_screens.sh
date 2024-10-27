git clone --depth=1 https://github.com/ehettervik/es-runcommand-splash.git splash_screens

#!/bin/bash

# Directorios
splash_screens_dir="~/config/scripts/splash_screens"
config_dir="~/../../opt/retropie/configs"

# Recorrer cada carpeta en splash_screens
for folder in "$splash_screens_dir"/*; do
    # Verificar que sea un directorio
    if [ -d "$folder" ]; then
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
