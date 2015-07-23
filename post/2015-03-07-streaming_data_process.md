# 大数据及流式数据处理常用算法
## bloom filter
### 传统bloom filter
1. 保证
    1. 当判定元素存在时， 不一定能够存在
    2. 当判定元素不存在时，一定是不存在的
2. 实现细节
    1. k个hash函数， m个cell, 每个cell只占1bit
    2. 添加一个元素, 通过计算这个元素的k个hash的函数结果, 然后对结果的每一个cell都置位1
    3. 判断元素是否存在,计算这个元素的k个hash的函数结果, 判断是否每一个对应的cell都为1， 如果都为1， 存在，否则，不存在
    
### 自动扩展 bloom filter
### 处理流式数据 stable bloom filter
1. 基本条件
    1. 历史数据会逐渐不重要，最近的元素是最重要的
2. 实现细节
    1. 每个cell占d bit 
    2. 初始化，每个cell都初始化为0
    3. 添加一个元素
        1. 随机将P个cell的值减一，但是保证大于0,
        2. 通过计算这个元素的k个hash的函数结果, 然后对结果的每一个cell，都赋值为最大值， 2^d - 1
    4. 判断元素是否存在,计算这个元素的k个hash的函数结果, 然后对结果的每一个cell,如果有任何一个值为0， 那么这个不存在，否则存在
3. 细节说明
    1. 每次增加新元素的时候，随机将P个cell的值减一，就是逐渐清楚历史数据的过程

### 可删除数据的 counting bloom filter
### Inverse Bloom Filter 提供和传统bloom filter 相反的是否存在保证
1. 基本保证和传统bloom filter刚好相反（缓存系统？？）
    1. 当判定元素存在时，一定是存在的
    2. 当判定元素不存在时， 可能是存在的
2. 实现细节
    1. m个cell, 每个cell需要能够保存一个元素, 一个hash函数.
    2. 添加元素e: 对array[hash(e)]的cell元素置为e
    3. 验证元素是否存在: 如果array[hash(e)]的元素和自己相等，则存在过，否则不存在