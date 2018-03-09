#!/bin/bash

multiply()
{
 i=$1
  for k in ` seq 1 10`
  do
    echo "$1 * $k = `expr $i \* $k `"
  done
}

multiply2()
{
 i=$1
  for k in ` seq $3 10`
  do
    echo "$1 * $k = `expr $i \* $k `"
  done

}

multiply3()
{
 i=$1
  for k in ` seq 1 $3`
  do
    echo "$1 * $k = `expr $i \* $k `"
  done

}

multiply4()
{
 i=$1
  for k in ` seq $3 $5 `
  do
    echo "$1 * $k = `expr $i \* $k `"
  done

}

multiply5()
{
 i=$1
  for k in ` seq $5 $3`
  do
    echo "$1 * $k = `expr $i \* $k `"
  done

}



if [ $# -eq 1 ]
then
multiply $1

elif [ $2 = "-s" ]
then
multiply2 $1 $2 $3
0
elif [ $2 = "-e" ]
then
multiply3 $1 $2 $3

elif [ $2 = "-s" -a $4 = "-e" ]
then
multiply4 $1 $2 $3 $4 $5

elif [ test $6 = "-r"  ]
then
multiply5 $1 $2 $3 $4 $5 $6

else
 echo "Error"
fi

exit 0
