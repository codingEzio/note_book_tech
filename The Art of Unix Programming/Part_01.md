| 作者 | 頁數 | 出版時間 | 
| --- | --- | --- | 
| Eric S Raymond  | 475 | *2006* | 

--------- 

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

