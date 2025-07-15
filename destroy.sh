#!/bin/bash

folders=($(ls -d */))

for folder in "${folders[@]}"; do
    cd "$folder"
    vagrant destroy -f
    cd ..
done