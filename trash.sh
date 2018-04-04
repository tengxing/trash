#!/bin/sh  
  
date=`date +%F`                              #当前日期  
path="~/.trash/"$date         
  
if [ ! -d $path  ]; then         
      mkdir $path                            #创建一个目录  
  fi  
    
  str=$1                                #第一个参数  
  first_char=$(str:0:1)  
  if [ $first_char = '-'  ];then          #第一个参数是-f或者-rf，shift到第二个参数  
        shift  
    fi  
      
    while [ $# != 0  ];                     #遍历所有的参数，mv到指定path  
    do  
          mv -f $1 $path  
            shift  
        done 
