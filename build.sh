#!/usr/bin/env bash
set -euo pipefail 

echo -e "Building Livox-SDK2\n\n"

if ! command -v "cmake" &> /dev/null; then
	echo -e "Installing CMake\n"
	sudo apt install -y cmake
fi

cmake -S . -B build
cmake --build build --parallel


echo -e "Installing Livox-SDK2"
sudo cmake --build build --target install
