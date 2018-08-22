# Part 01 - Philosophy

### Chapter 01 \~ 02 

- C 語言本身就是 Unix 的一種發明,<br>而 ANSI C 程序庫表述了相當大一部分的 Unix 服務.

- 讓每個程序就做好一件事. 若有新任務就重新開始. 減少加入新功能而搞得複雜.

- 假定每個程序的 output 都會成為另一個程序的 input. <br>不要有無關的信息. 不要堅持使用交互式輸入 <small>( using param instead ? )</small>

- 一個程序只做一件事, 並做好. <br>程序要能協作.<br>程序要能處理文本流, 因其是相當通用的接口.

- When you must fail, fail noisily and as soon as possible.

- Prototype before polishing. Get it working before you optimize it.
    - Make it run, then make it right, then make it fast.

- Get your design right with an un-optimized, slow, memory-intensive implementation before you try to tune.
    - Then tune systematically, looking for the places where you can buy big performance wins with the smallest possible increases in local complexity.

- Rule of Transparency
    > Design for visibility to make inspection and debugging easier 
    - A software system is transparent 
    > when you can look at it and immediately understand what it is doing and how.
    - It is discoverable 
        > when it has facilities for monitoring and display of internal state<br>so that your program not only functions well but can be seen to function well.
    - The debugging options should not be minimal afterthoughts.
        > Rather, they should be designed in from the beginning 
        - The program should be able to both demonstrate its own correctness <br>and communicate to future dev the original dev’s mental model of the problem it solves.

- 將程式邏輯抽象為數據結構 而非一堆 ```if```, ```switch``` 語句
    > 對於 Python 即是抽象為 dict 的鍵值
    
- If someone has already solved a problem once, don’t let pride or else suck you into solving it a 2nd time rather than re-using .
- Lean on your tools and automate everything you can.


### Chapter 03 

- 系统的多任务能力
    > 几乎所有的 OS 都支持 *抢占式调度* <br>
    > 另外, 调度的时间间隔 由硬件的周期性中断决定
    
    | Type | Do What | 
    | ----: | ---- | 
    | 顺序加载 | 压根没有多任务能力 <small>( 如早期的 *DOS* )</small> | 
    | 协作式 | 运行进程2 须待进程1 主动放弃占用处理器 <small>( 此类也**已过时** )</small> | 
    | 抢先式 | 由调度程序 **定期**中断/抢断 当前的进程 后将控制权交给另一个处理器 | 
    
- Internal boundaries 
    > 此于 Unix 有三层
    
    | Level | Do What | 
    | ----: | :---- | 
    | 内存管理<small>(硬)</small> | 保证各自的进程不会 ”侵入”其他进程的内存地址空间 | 
    | 权限组 | 普通用户 其进程未经允许 即无法 r/w 其他用户的文件 | 
    | 功能限制 | 将涉及关键安全性的功能 限制在尽可能小的可信代码块里 | 
    
- 文件属性
    > Unix 采用 直接去 “看”文件的内容来”推测”文件类型, <br>而非其他系统: 在文件外再维护一套属性结构 <small>(hmm..)</small> 且使系统依赖之
    
- 操作系统的比较
    > 后期 Linux 也自 OS X 借鉴了部分理念 <small>( e.g. 文件属性 )</small>
    
- 一些名词
    - IPC
    - MMU
    - *dotfile* 
    - *Cygwin*
    - *DLL hell*


# Part 02 - Design 

### Chapter 04 

- Quotes
    > There are two ways of constructing a software design.
    
    >> One is to make it so simple that there are obviously no deficiencies;<br>
    >> the other is to make it so complicated that there are no obvious deficiencies. 
    
    > The first method is far more difficult.
    
- 封装
    - 不过度披露细节 / 不*直接*调用其他模块 / 不乱共享全局数据
    - 如何优雅地设计 API?
        - 先试着用人类语言描述设计 (理清思路)
        - 定义结构之前如何调用 (粗略)
        - 给定调用各接口的注释
        - 写代码
    - 如何优雅的 ... ? (人话)
        - 此程序干嘛的 / 大概怎么干 / 文件结构
        - 如何相互调用 
            - 举个不恰当的例子: ```main.py``` <small>(调用其他所有模块)</small>
        - 描述 如何调用 / 调用需要注意啥 (偏向伪码了!!)
        - 开写 <small>( 好像有点 TDD 的感觉? )</small>

- 紧凑
    > 尚未理解透彻, 稍后补充 <small>(maybe)</small>.
    
- 正交性 <small>(赞!)</small>
    - 一个动作只改变一件事, 不影响其它. 
        - <small>( 若顺便做的事 不会再增复杂度 或是副作用 倒也并无大碍 )</small>
    - 改变每个属性的方法 只有一个. 
        - <small>( 即 there’s only  One way to do xxx )</small>
    - 咳咳 :)
        - 正交性做的越好, 测试也就越容易 越”纯” <small>( T! D! D! )</small>

- D.R.Y. and S.P.O.T.
    > *Don’t Repeat Yourself* & *Single Point of Truth*
    
    > 以下内容在理解上有所偏差 且不够全面 <small>(稍后可能补充)</small>
    
    | Type | What | 
    | ----: | :---- |
    | 数据 | [0] const / dict / metadata 只应该声明一次 并导入其他地方<br>[1] 重复数据应变化为 ‘代码生成之’ 或将其合并为同一来源 <small>(仅一份)</small> |
    | 文档 | [0] 文档不应 重复先前代码已提到的知识点 |
    
- 层
    > 以下内容在理解上有所偏差 且不够全面 <small>(稍后可能补充)</small>
    - 方式
        - 抽象化实物 <small>( 体现为”动作列表” )</small>
        - 围绕行为模型组织 <small>( 例: “迈脚”的详细流程 )</small>
    - 类别
        - 围绕 主事件循环 组织
        - 围绕 主循环可能调用的所有操作 组织