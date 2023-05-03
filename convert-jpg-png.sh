#!/bin/bash


convert_imgs(){
  cd ~/Pictures

  if [ ! -d png ]
  then
    mkdir png
  fi


  for img in *.jpg
  do
    result=$(ls $img | awk -F. '{ print $1 }')
    convert $img png/$result.png
  done

  echo "finished"
}

convert_imgs 2>errors.txt
if [ $? -eq 0 ]
then
  echo "images converted, find them in /png"
else
  echo "an error has occurred"
fi

