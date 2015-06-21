#include "google/profiler.h"
#include "google/heap-profiler.h"


#include <stdio.h>

void print(int i) {
      printf("abc%d", i);
}

int a(int limit) {
  void* p = malloc(10000);
  print(p);
  int i=0,g=0;
  while(i++<limit)
  {
      print(i);
      g+=i;
  }
  return g;
}
int b(int limit) {
  int i=0,g=0;
  while(i++<limit)
  {
    g+=i;
  }
  return g;
}

int main(int argc, char** argv)
{
   int iterations;

   if(argc != 2)
   {
      printf("Usage %s <No of Iterations>\n", argv[0]);
      return -1;
   }
   else
      iterations = atoi(argv[1]);

   printf("No of iterations = %d\n", iterations);

   HeapProfilerStart("heap.out");
   ProfilerStart("cpu.out");

   int total = 0;

   int srcNum = iterations;

   while(iterations--)
   {
       total += b(srcNum);
       if (iterations % 5 != 0) {
           total += a(srcNum);
       }
   }
   ProfilerStop();
   HeapProfilerStop();
   printf("total is %d\n", total);
   return 0;
}
