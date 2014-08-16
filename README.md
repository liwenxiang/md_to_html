# marddown文档生成html工具

## 依赖
1. marked https://github.com/chjj/marked
```bash
    由于npm服务器不能访问，使用阿里npm
    alias cnpm='npm --registry=https://registry.npm.taobao.org  --cache=/Users/liwenxiang/.npm/.cache/cnpm  --disturl=https://npm.taobao.org/dist  --userconfig=/Users/liwenxiang/.cnpmrc'
    cnpm install marked --save
```
2. GitHub2.css https://github.com/gcollazo/mou-theme-github2
已经默认下载到了theme/css目录中

## 使用
```bash
md2html.sh README.md > t.html
```
## marked 配置更改地方 
参考 https://help.github.com/articles/writing-on-github

## 显示样式
主要样式在theme中的head.html, end.html css/Github2.css文件中
