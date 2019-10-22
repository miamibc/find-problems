echo "Hello."
echo ""
echo "This is analysis of files of $(whoami) at $(hostname)."

echo ""
echo "[PHP files modified today]"
find ~/domains/ -name "*.php" -mtime -1 -printf "%T@ %Tb %Td %TY %p\n" | sort -n

echo ""
echo "[files containing yummingid]"
grep -r 'yumingid' ~/domains/

echo ""
echo "Best regards,"
echo "$(basename $0)"
