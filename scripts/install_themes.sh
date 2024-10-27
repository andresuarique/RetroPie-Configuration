cd ~ || exit 1
cd .. || exit 1
cd .. || exit 1
cd etc/ || exit 1
cd emulatiostation/ ||exit 1
cd themes/ || exit 1
git clone --depth=1 https://github.com/c64-dev/es-theme-epicnoir epic-noir
git clone --depth=1 https://github.com/lipebello/es-theme-retrorama retrorama
git clone --depth=1 https://github.com/lioneil/obsidian-es-theme-retropie obsidian
git clone --depth=1 https://github.com/fabricecaruso/batocera-emulationstation.git nostalgia-pure
reboot