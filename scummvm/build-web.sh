#!/bin/bash
# ScummVM 2.9.1 als WebAssembly mit AGS-Engine bauen (so gebaut für freehab.fab0.cc).
# Ergebnis in scummvm/build-emscripten: scummvm.html, scummvm.js, scummvm.wasm, scummvm_fs.js, data/
set -e
git clone --depth 1 --branch v2.9.1 https://github.com/scummvm/scummvm.git
cd scummvm
./dists/emscripten/build.sh configure make dist \
  --enable-mad --enable-ogg --enable-vorbis --enable-freetype2 --enable-zlib --enable-png \
  --disable-all-engines --enable-engine=ags --disable-seq-midi
