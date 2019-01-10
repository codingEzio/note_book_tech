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
    - ```ZADD myrate:celeb Olsen 95 Cameron 85 Swift 10```
- Rank 
    - ```ZCOUNT myrate:celeb 80 100``` (=> ```2```)
    - ```ZRANK myrate:celeb Olsen```  (ASC)
    - ```ZREVRANK myrate:celeb Olsen```  (DESC)

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
- It definitely will not fit all your needs ( the stuff making you feel *not so great* ).