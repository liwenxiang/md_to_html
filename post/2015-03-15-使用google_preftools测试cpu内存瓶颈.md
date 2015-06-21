# 安装软件
libgoogle-perftools-dev
libgoogle-perftools4
google-perftools
# 使用步骤
```
example.c内容
#include "google/profiler.h"
...
ProfilerStart("google.out");
function();
ProfilerStop();
...
测试步骤
gcc example.c -g -o main -O0 -lprofiler
./main 10000 > /dev/null
/usr/bin/google-pprof --gif  ./main ./google.out   > /usr/share/nginx/html/output.gif
```
<http://blog.codeboy.name/content_store/cpu.gif>

#测试内存使用类似
```
example.c内容
#include "google/heap-profiler.h"
...
HeapProfilerStart("google.out");
function();
HeapProfilerStop();
...
测试步骤
gcc example.c -g -o main -O0 -lprofiler
./main 10000 > /dev/null
/usr/bin/google-pprof --gif  ./example1 heap.out.0001.heap   > /usr/share/nginx/html/heap.gif
```
<http://blog.codeboy.name/content_store/heap.gif>

#测试c文件
<http://blog.codeboy.name/content_store/example.c>
