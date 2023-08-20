#!/bin/bash
find ~/Pictures/Screenshots/ | sort -r | head -n 1 | xargs -I{} bash -c 'tesseract "{}" clipboard'
cat clipboard.txt | xsel --clipboard
rm clipboard.txt
find ~/Pictures/Screenshots/ | sort -r | head -n 1 |xargs -I % rm %