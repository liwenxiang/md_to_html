TC_TOOL="/Users/liwenxiang/Program/md_to_html/md2html.sh"
rm -rf build
cp -r $1 build
for file in `find  build -name "*.md"`;do
    dst_file_name="${file}.html"
    $TC_TOOL $file > $dst_file_name
done
find  build -name "*.md" | xargs rm -f 

cp -r theme build

cd build
echo "" > index.md
for file in `find . -name "*.html" | grep -v "^\./theme/" | grep -v "^\./index" | sort -r`;do
    echo "* [$file]($file)" >> index.md
done
$TC_TOOL index.md > index.html
rsync -avz -e "ssh -p 2222" . codeboy.name:/usr/share/nginx/blog_html/
