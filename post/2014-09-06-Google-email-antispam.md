## 根据计算rank来判定domain的spam程度
1. 用户反馈， 
2. 足够快的计算出来新增的domain是否spam
3. spam rank相互传递， 如果一个domain被判为spam, 那么这个ip下的未判定的domain都认为是spam
4. 用户必须足够多，否则，spammer不断的点击not spam, 把自己的domain刷新成白名单

## 除了domain之外，还有message级别的feature来判定
1. email的点击URL的比例
2. 链接使用便宜的domain， 比如cc
3. 链接使用可以控制的host, 比如*.blog.com, 还有短链服务
4. 黑正常的网站作为链接插入到email中
	大部分网站都不会出现在email中，所以rank不高， 对email来说可以过滤，所以这种作弊方式不太可靠
5. 谷歌判定了一个URL为Spam， 那么这个URL出现的email， 都可判定为spam message 
	搜索是否可用，链接出spam的页面，本身也是spam
	
## 原文链接 
1. https://moderncrypto.org/mail-archive/messaging/2014/000780.html?hn
2. http://ceas.cc/2006/19.pdf
