#!/bin/bash

find / -type f \( -name "*.txt" -o -name "*.png" -o -name "*.jpg" \) 2> /dev/null

echo "Archivos txt:"
find / -type f -name "*.txt" 2> /dev/null | wc -l
echo "Archivos png:"
find / -type f -name "*.png" 2> /dev/null | wc -l
echo "Archivos jpg:"
find / -type f -name "*.jpg" 2> /dev/null | wc -l
