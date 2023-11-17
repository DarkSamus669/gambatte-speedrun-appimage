#!/bin/sh

# Build gambatte_speedrun
wget -q "https://github.com/pokemon-speedrunning/gambatte-speedrun/archive/refs/tags/r717.tar.gz" \
	 -O gambatte-speedrun.tar.gz && tar -xf gambatte-speedrun.tar.gz

cd gambatte-speedrun-r717 && sh scripts/build_qt.sh
