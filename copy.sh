#copy set of files as pairs
r=`expr $# % 2`
if [ $r -ne 0 ]
then
echo "file name are not pairs "
exit 1
fi
while [ $# -ne 0 ]
do
cp $1 $2
shift
shift
done
exit 0 


#output
-------
ksb@ksb-Lenovo-Product:~/salha/nsa$ sh copy.sh a1 a2
ksb@ksb-Lenovo-Product:~/salha/nsa$ sh copy.sh a1 a2 a3
file name are not pairs 
