curDir="`dirname $0`"
echo `cat $curDir/theme/head.html`
node $curDir/md2html.js "$1"
echo `cat $curDir/theme/end.html`
