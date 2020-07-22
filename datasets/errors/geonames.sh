#!/bin/bash
while read file; do
rapper --quiet <(echo $file) 2> errors
done < <(awk ‘NR % 2 == 0 { print; }’ $*)
