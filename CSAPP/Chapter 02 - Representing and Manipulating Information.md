## Information Storage 

- 多数计算机采用 *blocks of 8 bits* <small>(bytes)</small> 作为 可寻址的存储器单位 <small>(addressable unit of memory)</small>.
	> A machine-level program views ***memory*** as <u>a very large array of bytes</u>, 即 *virtual memory*.<br>
	> 内存中每个字节由 一个唯一的数 标识, 其集合称为 *virtual address namespace*. 

- C 语言中一个*指针的值* 都是**某个存储块的 第一个字节的虚拟地址**.
	> C 编译器还将每个指针 与其类型信息联系起来. <br>如此, 其根据指针值的类型生成不同的机器级代码 其用来访问指针所指向位置的值

- 关于 C 语言的指针
	> 其有两方面: **值** 和 **类型**.
	> > 值 表示 某个对象的位置.<br>类 表示 那个位置上 所存储对象的类型.
	
	> 对于数据类型 T, 声明格式为 ```T *p = &value;```<br>
	> > ```p``` 为指针变量<br>其指向一个类型为 ```T``` 的对象.

- 每台 PC 都有一个 word size <small>(字长)</small>, 其指明 整数与指针的标称大小 <small>(nominal size)</small>.
	> A *virtual address* 由 word size 来编码.<br> Word size 决定了虚拟地址空间的最大大小 
	> > 若字长为 w 位, 其虚拟地址的范围即 0 \~ 2<sup>w-1</sup>. 
	> > > 以我的 PC 举例: 字长 64 位, 故虚拟地址空间大约为 8GB <small>( not RAM !! )</small>

- 数据大小 
    > 准确的字节数 依赖于机器和编译器. <small>( 如 int -- 4 Bytes )</small>
    > > 32 与 64 位的机器 在某些数据类型上有所区别.
    
- 寻址与字节顺序
    - 对于多字节的程序对象: 其地址为何, 如何排列这些字节.
        - 多字节对象多被 存储为 **连续的字节序列**, 
        - 对象地址为 **所使用字节中最小的地址**
    
    
- 寻址与字节顺序 --- 个人理解(待梳理)
    - 假设一个 w 位的整数 (我的理解) 
        - x<sub>0</sub> 即 x[0], 最靠前的, <br>又称最低有效位, 另作为虚拟内存地址
        - 最高位即 索引 -1 ( 如 1234, 4 就是最高位 ) 
    - 且 w 是 8 的倍数, 是在指 (我的理解) 
        - 若为 4 个 字节(Byte), 最高有效字节就是 4, 最低就是 1 ( 即它们都只对应一个字节(8位) !! )
        - 最高有效字节包括 
            - 位 [x<sub>w-1</sub>, x<sub>w-2</sub>, ... , x<sub>w-8</sub>]
                - ( 1234567812345678 => 87654321(第二段反过来) )
                - 自 最靠后(最高位) 倒着往前数(索引变小) 
                - ... 16, 15, 14, 13 ...
        - 最低有效字节包括
            - 位 [x<sub>7</sub>, x<sub>6</sub>, ... , x<sub>0</sub>]
                - 和最高有效字节其实一样 
                    - 只不过其索引跑到了 那个整数4个字节中的第一个字节 
        - 某些机器选择 
            - 在存储器里 按照从最低有效字节 到 最高有效字节 的顺序存储对象
            - 最低有效字节在前, 称为小端法 <small>(little endian)</small>. 
                - 再重复一遍, 它与日常数字的表达是相反的
                - 例1 -- ‘AB CD EF’ 
                    - 以小端表示是 ‘EF CD AB’ 
                - 例2 -- 日常数字 1234, 1 是最高位,
                    -  而小端以 4 作为最高位 (“书写”的时候)

- 关于 ```typedef``` 命名数据类型
    - 其与变量声明类似
        - 不过由 ```int a = 5;``` 变为 ```typedef TYPE KIND-OF-ALIAS```
    - 具体的介绍可参照 [此维基条目](https://en.wikipedia.org/wiki/Typedef)

- Representing Strings 
    > 在使用 ASCII 码作为字符码 的任何系统上都将得到相同的结果. <br><small>( This same result would be obtained on any system using ASCII as its character code, )</small><br><br>
    > 与 字节顺序和字大小 无关 <br><small>( independent of the byte ordering and word size conventions )</small>.
    
- 布尔代数
    - *较易理解, 不作详细记录.*
    - 提到了这些内容:
        - 对应的 数学命题的符号 (长得不一样)
        - 布尔**代数** 以及布尔环
        -  

- 位级运算 / 逻辑运算
    
    | opt | sym | 
    | :-- | :--: |
    | bit-wise | & | \|  | ~  | ^ | 
    | logical | && | \|\| | ! | 

- 移位运算 <small>( shift operations )</small>
    - 0