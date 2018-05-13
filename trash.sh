#!/bin/sh  
org_path=`pwd`
cd
date=`date +%F`
base_path_bak=${PWD#*/}
base_path=`pwd`"/.trash"
path=$base_path"/"$date         
echo $path  
if [ ! -d $path  ]; then         
      mkdir $path                            #创建一个目录  
  fi  
    
  str=$1    
  echo $str
  #第一个参数  
  first_char=$(str:0:1)  
  if [ $first_char = '-'  ];then          #第一个参数是-f或者-rf，shift到第二个参数  
        shift  
    fi  
      
    while [ $# != 0  ];                     #遍历所有的参数，mv到指定path  
    do  
          mv -f $org_path"/"$1 $path  
            shift  
        done 
