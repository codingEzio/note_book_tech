## Information Storage 
- 多数计算机采用 *blocks of 8 bits* <small>(bytes)</small> 作为 可寻址的存储器单位 <small>(addressable unit of memory)</small>.
	> A machine-level program views ***memory*** as <u>a very large array of bytes</u>, 即 *virtual memory*.<br>
	> 内存中每个字节由 一个唯一的数 标识, 其集合称为 *virtual address namespace*.

- C 语言中一个指针的值 都是某个存储块的 第一个字节的虚拟地址.
	> C 编译器还将每个指针 与其类型信息联系起来. <br>如此, 可根据指针值的类型 生成不同的机器级代码 来访问指针所指向位置的值

- 关于 C 语言的指针
	> 其有两方面: **值** 和 **类型**.
	> > 值 表示 某个对象的位置.<br>类 表示 那个位置上 所存储对象的类型.
	
	> 对于数据类型 T, 声明格式为 ```T *p;```<br>
	> > 即 ```p``` 是一个指针变量<br>并指向一个类型为 ```T``` 的对象.

- 每台 PC 都有一个 word size <small>(字长)</small>, 其指明 整数与指针的标称大小.
	> A *virtual address* 由 word size 来编码.<br> 即 word size 决定了虚拟地址空间的最大大小 
	> > 若字长为 w 位, 其虚拟地址的范围即 0 \~ 2<sup>w-1</sup>. 

- 寻址与字节顺序
> 
