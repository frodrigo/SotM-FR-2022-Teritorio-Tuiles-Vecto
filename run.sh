echo "Press S to open speaker window"
if ! [ -z "$1" ]; then
    reveal-md "$1" --watch --theme white
else
    reveal-md *.md --watch --theme white
fi
