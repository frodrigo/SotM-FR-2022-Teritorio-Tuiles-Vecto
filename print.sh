name=`basename "$(pwd)"`
for md in *.md; do
    reveal-md "$md" --theme white --print "${md%.md}.pdf"
done
