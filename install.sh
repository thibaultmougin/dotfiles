#!/bin/bash

while test $# -gt 0; do
  case "$1" in
    -h|--help)
      echo " "
      echo "$package dotfiles install"
      echo " "
      echo "options:"
      echo "-h, --help                show brief help"
      echo "-e, --extensions          install vscode extensions"
      exit 0
      ;;
    --extensions|-e)

        find vscode/extensions/ -type f -print0 | while IFS= read -r -d $'\0' file;
          do code --install-extension "$file" ;
        done
        exit 1
      ;;
  esac
done