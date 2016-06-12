#!/bin/sh

files=
line="none"

if [ $# = 0 ]; then
	echo 'usage: B [-nnnn] files...'  1>&2
	exit 1
fi

dir=`/bin/pwd`
if [ "$USER" = "" ]; then
	USER=$LOGNAME
fi
pipe=/tmp/.sam.$USER

if [ $DISPLAY != "" ]; then
	pipe=$pipe.$DISPLAY
fi

if [ ! -r $pipe ]; then
	echo `basename $0`": No pipe \""$pipe"\" to sam." 1>&2
	exit 1
fi

for i in $*
do
	case "$i" in
		/*)	files="$files $i"
			;;
		-*)	line=`echo $i | sed 's/.//'`
			;;
		*)	files="$files $dir/$i"
			;;
	esac
done

echo "B $files" >> $pipe
if [ $line != "none" ]; then
	echo $line >> $pipe
fi

