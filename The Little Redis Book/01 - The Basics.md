### Getting started
1. ```brew install redis && redis-server```
2. ```redis-cli```

### Concept
- It got *DBs*, switch by ```SELECT n```.
- Keys’ crucial, values are **not** (only query by key). 
- Persistence :: MemToDisk :: Snapshot
    - Freq :: ModifiedItems
        - ```~9 items | 9000 seconds```
        - ```1000+ items | 60 seconds```

### Get those props!
- ```STRLEN <key>```
- ```APPEND <key> <value>```
- ```GETRANGE <key> <start> <end>```

### Change values (**int only**, (```INCR``` | ```DECR```))
- ```INCR <key>```
- ```INCRBY <key> NUM_WHATEVER```

### For the lord of ```Hash``` !
- set
    - ```HSET user:new name “alex”```
    - ```HMSET user:new name "alex" age 20```
- get 
    - ```HGET user:new name```
    - ```HKEYS user:new```
    - ```HMGET user:new name age```
- others
    - ```HGETALL user:new```
    - ```HDEL user:new age```

### The ```List``` !!
- Features
    - Got *orders*, can be accessed by *index*.
- Add 
    - ```LPUSH threetwoone 1 2 3```
    - ```RPUSH onetwothree 1 2 3```
- Get 
    - ```LINDEX example:list 0```
    - ```LINDEX example:list -1```

### The ***normal*** ```Set``` 
- Add 
    - ```SADD friend:alex Johnny Jessi Mona```
    - ```SADD friend:yori Johnny Jessi Alice```
- Set opts
    - ```SINTER friend:alex friend:yori```
    - ```SINTERSTORE friend:alex_yori_both_have friend:alex friend:yori```
- Is it
    - ```SISMEMBER friend:alex Jessi``` (=> ```0```, ```1```)

### The ***sorted*** ```Set```
- Add 
    - ```ZADD myrate:celeb 95 Olsen 85 Cameron 10 Swift```
- Incr
    - ```ZINCRBY myrate:celeb 5 Olsen``` (=> ```”100”```)
- Rank 
    - ```ZCOUNT myrate:celeb 80 100``` (=> ```2```)
    - ```ZRANK myrate:celeb Olsen```  (ASC)
    - ```ZREVRANK myrate:celeb Olsen```  (DESC)
- Set opts
    - Samples 
        - ```ZADD mid_test 40 “English”```
        - ```ZADD mid_test 60 “Math”```
        - ```ZADD final_test 40 “English”```
        - ```ZADD final_test 60 “Math”```
        - ```ZADD final_test 80 “German”```
    - Syntax
        - ```SET_OPT_CMD 新集合 集合數目_此處取決於您需結合幾個 其他集合_多個```
        - ```ZRANGE 集合名 上標 下標 [是否帶上score]```
    - Examples
        - ```ZINTERSTORE mixed_point 2 mid_test final_test```
        - ```ZUNIONSTORE mixed_point 2 mid_test final_test```
    - Examples for *getting* elements
        - ```ZRANGE mixed_point 0 -1```
        - ```ZRANGE mixed_point 0 -1 WITH_SCORES```

### Aha !
- The **commands** are *case-insensitive* <small>( ```GET``` = ```get``` )</small>.
- Quotation marks (**optional**)
    - Only the stuff inside is important. 
        - ```SET grt:hello "wow"```
        - ```SET grt:dayfreq 3```  <small>( even using ```“3”```, it’s still int )</small>
- _

### Cleanup
- ```FLUSHDB```

### Just sayin’
- It’s ***fast***.
- It’s ***fast***, not just because it stores items in **RAM**.
- It definitely won’t fit all your needs ( the stuff making you feel *not so great* ).