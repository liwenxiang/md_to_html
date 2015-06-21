TC_TOOL="/Users/liwenxiang/Program/md_to_html/md2html.sh"
POST_DIR="post/"

rm -rf build
set -e
cp -r $POST_DIR build
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
rsync -avz -e "ssh -p 2222" . codeboy.name:/home/liwenxiang/nginx/html/blog_html/
