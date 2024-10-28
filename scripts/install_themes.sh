cd ~ || exit 1
cd .. || exit 1
cd .. || exit 1
cd etc/ || exit 1
cd emulationstation || exit 1
cd themes || exit 1
sudo git clone --depth=1 https://github.com/c64-dev/es-theme-epicnoir epic-noir
sudo git clone --depth=1 https://github.com/lipebello/es-theme-retrorama retrorama
sudo git clone --depth=1 https://github.com/lioneil/obsidian-es-theme-retropie obsidian
sudo git clone --depth=1 https://github.com/fabricecaruso/batocera-emulationstation.git nostalgia-pure
sudo git clone --depth=1 https://github.com/fagnerpc/Alekfull-ARTFLIX.git artflix