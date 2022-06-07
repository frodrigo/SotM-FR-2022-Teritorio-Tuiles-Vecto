name=`basename "$(pwd)"`
for md in *.md; do
    reveal-md "$md" --theme white --static gh-pages
done
