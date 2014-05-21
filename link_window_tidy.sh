#!/bin/sh 

### variables
TIDY=$HOME/Library/Application\ Support/Window\ Tidy

GREEN="\x1B[;032m"
NC="\x1B[0m"
### commands
echo "${GREEN}link window tidy${NC}"

rm -rf "$TIDY"
ln -s "$PWD/window_tidy/" "$TIDY"

echo "${GREEN}done${NC}"