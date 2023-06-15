#display prime numbers
if [ $# -ne 2 ]
then
   echo "syntax is <$0> <no1> <no2> " 
   exit 1
fi
n1=$1
n2=$2
if [ $n1 -gt $n2 ]
then
 t=$n1
 n1=$n2 
 n2=$t 
fi
while [ $n1 -le $n2 ]
do
i=2
while [ $i -le `expr $n1 / 2` ]
do
if [ `expr $n1 %  $i` -eq 0 ]
then 
break
fi
i=`expr $i + 1`
done
if [ $i -gt `expr $n1 / 2` ]
then
echo -n "$n1,"
fi
n1=`expr $n1 + 1` 
done
echo "\n"
exit 0


#output

ksb@ksb-Lenovo-Product:~/salha/nsa$ sh PRIME.sh 100 200
101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199

ksb@ksb-Lenovo-Product:~/salha/nsa$ sh PRIME.sh 100 
syntax is <PRIME.sh> <no1> <no2> 
ksb@ksb-Lenovo-Product:~/salha/nsa$ sh PRIME.sh 
syntax is <PRIME.sh> <no1> <no2> 











































































































