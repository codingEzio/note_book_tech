
## 信息即 **bits** + **context**
- 文本文件以 *唯一的单字节整数值* 来表示每个字符 
  > 字节<small>(序列)</small> --> 整数值 --> 字符
  > > 其他文件均称为 *binary files* .
- 二进制文件 于 *0*,*1* 组成的 bit 序列 <small>( 以 8 bits 为组构成*字节* )</small> 
	> 针对*字节* 再由相应编码对应至字符
- thus, 系统中所有的信息 均有 *a bunch of bits* 组成.
	> 区分不同数据 需根据上下文判定 
	> e.g. 
	> > 停留在 bit <small>(0,1)</small> 为二进制文件<br>

	> > 又如特定序列对应的数据类型 <small>(*int*, *float* etc.)</small><br>
	> > 亦或是 由整数值<small>(特定字节序列)</small> 与编码的对应 “得出”的字符

## Compilation
|||||
|--|--|--|--|
| *Pre-processor* | 根据 “#” 开头的命令修改源程序 | e.g. ```#IF```, ```#include <stdio.h>``` | *hello.i* (text) |
| *Compiler* | 将 <small>hello.i</small> 翻译为汇编代码 <small>( hello.s )</small> |  | *hello.s* (text) |
| *Assembler* | 由汇编再翻译为机器语言 <small>( 非 0,1 )</small> | 后将其打包为 *relocatable object program* | *hello.o* (binary) |
| *Linker* | 将当前文件与引入的库**合并** <small>(链接)</small> | 每个引入的库 会各自生成自己的目标文件 | *hello* (excutable) |

## Running the ```hello``` program 
> These are my conclusions <small>( I mean, *not entirely* true )</small>.

- 用户键入可执行的文件名 (USB控制器参与)
- 由 I/O 总线 达到 I/O 桥 (non-stop)
	> 总线上有 USB 控制器, 图形适配器, 磁盘控制器 etc.<br>
	> I/O 桥 作为 CPU 与 主存的中转站 <small>( 主存为 RAM )</small> 
- 数据于 I/O 桥 并经由总线接口<small>(非I/O)</small> 到达处理器
- 处理后再于 I/O 桥 经由存储器总线 传送至主存储器 
- 此时输出结果 ```hello```

## Running the ```hello``` program (**for real**)
- 注解
	> 代码: 类似 ```printf``` 等具有 “功能” 的指令 即 code.

	> 数据: 类似 ```15```, ```“hello"``` 的 data.

- Shell 接收指令后 将可执行文件加载至主存
	> 将 *hello.c* 中的 code & data 由 *硬盘* 复制至 *内存*.<br>

	> 另有 *DMA* <small>(direct memory access)</small>, 数据可直接由硬盘到达内存 <small>(不经处理器)</small>. 
- 若其到达内存, 处理器开始执行相关指令 
	> Code 将被译为机器语言执行<br>
	> Data 则遵循 **主存 --> 寄存器 --> 显示设备** 的流程.

- 另外, 由于 *processor-memory gap*, 后引入了**高速缓存**.
	> 设计目的是为 填补处理器与内存之间的速度差异 <small>( CPU ≧ Cache > RAM )</small><br>
	
	> 与其相关的三级高速缓存: L1, L2, L3. 
	>> 前两者由 SRAM <small>(s:static)</small> 硬件技术实现.

## The OS Manages the Hardware
- Process 
	> \\

- Thread
	> \\

- Virtual Memory 
	> 其基本思想: 将一个进程的 *virtual memory* 中的内容 存储在磁盘上
	>> 然后 用 RAM 作为 磁盘的高速缓存

- Files 
	> 每次 I/O 都被视为对文件的读写 <small>( system calls: Unix I/O )</small>.
	
	> 每个 I/O 设备都可以视为文件 <small>(e.g. disk, keyboard, monitor, ***even network*** etc.)</small>.

## Concurrency and Parallelism
|||
|----|----|
| <small>(并发)</small> ***concurrency*** | a system with *multiple, simultaneous activities* | 
| <small>(并行)</small> ***parallelism*** | the use of concurrency to make a system run faster | 

- 线程级并发
	> Powered by **多核处理器** 与 **超线程** 
	
	>> 多核处理器
	>>> 将多个 CPU/核 集成到一个集成电路芯片上.<br>
	>>> 每个核各有 L1, L2 缓存.<br>所有的核共享 更高层次的高速缓存 <small>(L3)</small> 以及到 RAM 的接口.
	
	>> 超线程
	>>> 它是一项 允许一个 CPU 执行多个控制流的技术<br>
	>>> 超线程的处理器 可以在单个周期决定要执行哪一个线程<br>以使 CPU 能够更好地利用它的处理资源
	
- 指令级并行
	> 即能够同时执行多条指令
	>> 较先进的处理器可保持 每个时钟周期内 2\~4 条指令的执行速率<br>
	>> 处理器会使用许多技巧 来同时处理多达 100 条的指令 
	>>> 譬如 pipelining<br>
	>>> 将执行所需活动划分为不同步骤, <br>将处理器硬件组成一系列的阶段 每个阶段执行一个步骤
	
- 单指令, 多数据并行
	> 由处理器中特殊的硬件 使一条指令产生多个可以并行执行的操作 <small>( 亦称 SIMD )</small>.
	
