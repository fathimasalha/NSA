#3 numbers and test sides of triangle

    if  [ $# -gt 1 ]
    then
    echo "syntax error"
    exit 1
    fi
    if [ $# -eq 0 ]
    then
    echo "enter first number"
    read a
    echo "enter second number"
    read b
    echo "enter third number"
    read c
    fi
    if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
    then
    echo "$a $b $c cannot be the sides of triangle"
    exit
    else
    echo "$a $b $c can be the sides of triangle"
    fi
 


#output

ksb@ksb-Lenovo-Product:~/salha/nsa$ sh triangle.sh
enter first number
1
enter second number
2
enter third number
3 
1 2 3 cannot be the sides of triangle

ksb@ksb-Lenovo-Product:~/salha/nsa$ sh triangle.sh
enter first number
3
enter second number
3
enter third number
3
3 3 3 can be the sides of triangle
