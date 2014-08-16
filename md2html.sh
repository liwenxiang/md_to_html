curDir="/Users/liwenxiang/Program/md_to_html/"
echo `cat $curDir/theme/head.html`
node /Users/liwenxiang/Program/md_to_html/md2html.js "$1"
echo `cat $curDir/theme/end.html`
