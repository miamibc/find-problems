#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTDIR=`dirname $SCRIPT`
cd $SCRIPTDIR

echo "Hello."
echo ""
echo "This is analysis of account $(whoami) at $(hostname)."
echo ""
echo "[PHP files modified today]"
find -name "*.php" -mtime -1 -printf "%T@ %Tb %Td %TY %p\n" | sort -n

echo ""
echo "[Files containing suspicious words]"
grep -nr 'yumingid\|"chmod"'
grep -nr "'chmod'|;exit();}if("

echo ""
echo "Best regards,"
echo "$(basename $0)"
