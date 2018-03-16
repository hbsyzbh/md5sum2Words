if [[ "$@" = "" ]]; then
	echo "Need file path!!!"
	exit 1
fi
MD5SUM=`md5sum $@ | awk '{print $1}'`
FILEPATH=`md5sum $@ | awk '{print $2}'`

RESULT=""
for i in `echo $MD5SUM | sed "s/[^\n].../&\n/g"`;
do  
	((num=16#$i))
#	echo $num
	((num=num+1))
#	echo $num
	RESULT+=`sed -n "$num""p" ../Tools/cleanWords`
	RESULT+=" "
done

#echo $RESULT
SHORT=`echo $RESULT | awk '{print $1 " " $8}'`
echo $SHORT $MD5SUM $FILEPATH
