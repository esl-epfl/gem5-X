#!/bin/bash

path_to_images=$(sed 's|/|\\/|g' <<< $1)

echo $path_to_images

sed -i 's/<PATH_TO_FULL_SYSTEM_IMAGES>/'$path_to_images'/g' configs/common/SysPaths.py
