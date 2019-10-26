#!/bin/bash

SCRIPT=`realpath $0`
if [ -z "$1" ] then
        SCRIPTDIR=`dirname $SCRIPT`
else
        SCRIPTDIR="$1"
fi
cd $SCRIPTDIR

echo "Hello."
echo ""
echo "This is overview of account $(whoami) at $(hostname)."
echo ""
echo "[PHP files modified today]"
find -name "*.php" -mtime -1 -printf "%T@ %Tb %Td %TY %p\n" | sort -n

echo ""
echo "[Most bushy folders]"
find -type d -print0 2>/dev/null | while IFS= read -r -d '' dir; do 
    echo -e `ls -A "$dir" 2>/dev/null | wc -l` "files in $dir"
done | sort -nr | head

echo ""
echo "[Files containing suspicious words]"
grep -nr 'yumingid\|"chmod"'
grep -nr "'chmod'|;exit();}if("

echo ""
echo "Best regards,"
echo "$(basename $0)"
