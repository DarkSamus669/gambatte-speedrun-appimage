#!/bin/sh

cd gambatte-speedrun-r717

# Download linuxdeploy

wget -q "https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage" \
     -O linuxdeploy-x86_64.AppImage

wget -q "https://github.com/linuxdeploy/linuxdeploy-plugin-qt/releases/download/continuous/linuxdeploy-plugin-qt-x86_64.AppImage" \
     -O linuxdeploy-plugin-qt-x86_64.AppImage

chmod +x linuxdeploy-x86_64.AppImage linuxdeploy-plugin-qt-x86_64.AppImage

# Building appimage

export ARCH=x86_64
export OUTPUT="Gambatte-Speedrun-r717-x86_64.AppImage"

export UPDATE_INFORMATION="gh-releases-zsync|DarkSamus669|gambatte-speedrun-appimage|Gambatte-Speedrun-r717-x86_64.AppImage"

./linuxdeploy-x86_64.AppImage -i ../scripts/gambatte_speedrun.png \
		-d ../scripts/gambatte_speedrun.desktop \
		--executable bin/gambatte_speedrun \
		--appdir AppDir \
        --plugin qt \
        --output appimage
