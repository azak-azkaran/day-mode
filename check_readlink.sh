#!/bin/bash
if [ "$#" != 2 ]; then
    echo "wrong number of parameters"
    echo "usage:"
    echo "check_readlink FILE_TO_CHECK FILE_TO_BE"
    exit -1
fi

FILE_TO_CHECK="$1"
FILE_TO_BE="$2"
echo "checking $FILE_TO_CHECK for inequality to $FILE_TO_BE"
CHECK="$(readlink $FILE_TO_CHECK )"

if [ "$CHECK" != "$FILE_TO_BE" ] ; then
    echo "let it be light at: $FILE_TO_CHECK"
    ln -fs $FILE_TO_BE $FILE_TO_CHECK
else
    echo "was equal"
fi

echo "it is $(readlink $FILE_TO_CHECK )"
