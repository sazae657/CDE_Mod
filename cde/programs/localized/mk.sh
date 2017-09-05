#!/bin/sh
for K in `find ja_JP.dt-eucJP -type f `;do
	OUT=`echo ${K} | sed 's/^ja_JP.dt-eucJP/ja_JP.UTF-8/'`
	echo "${K} => ${OUT}"
	iconv -c -f UJIS -t UTF8 ${K} >${OUT} || exit
done
echo done
