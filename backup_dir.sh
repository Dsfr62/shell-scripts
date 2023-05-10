#!/bin/bash

echo "backup directory: "
read dir_bkp

if [ ! -d backup ]
then
  mkdir backup
fi

cp -rv $dir_bkp ./backup
echo ""
echo "backup complete"
