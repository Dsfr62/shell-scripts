#!/bin/bash


# first_parameter: old img ext
# second_paramenter: new img ext

convert_imgs(){
  cd ~/Pictures/midjourney
  
  mkdir output_$2

  for img in *.$1
  do
    result=$(ls $img | awk -F. '{ print $1 }')
    convert $img output_$2/$result.$2
  done

  echo "finished"
}

convert_imgs jpg png