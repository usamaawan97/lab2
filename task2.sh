#!/bin/bash

a=( `pidof firefox`)
arr=( `cat /proc/${a[0]}/status | grep pid` )
echo -n ${arr[0]}
echo ${arr[1]}


echo " `cat /proc/${a[0]}/status | grep Name`"
echo -n ${arr[2]}
echo ${arr[3]}
echo " `cat /proc/${a[0]}/status | grep State`"





