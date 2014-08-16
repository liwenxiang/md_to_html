var marked = require('marked');
marked.setOptions({
      renderer: new marked.Renderer(),
      gfm: true,
      tables: true,
      breaks: true,
      pedantic: false,
      sanitize: true,
      smartLists: true,
      smartypants: false
});
var fs = require("fs");
var fileName = process.argv.slice(2)[0];
var content = fs.readFileSync(fileName, 'utf8');
console.log(marked(content));
