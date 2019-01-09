### Foreword
- The version I’m reading is the [chinese version](http://wiki.jikexueyuan.com/project/the-little-redis-book/basics.html).

-------

### Getting started
1. ```brew install redis && redis-server```
2. ```redis-cli```
3. ```set user:alex “Hi, this is Alex”``` (example for later use)

### Concept
- It got *DBs*, switch by ```SELECT N```.
- Keys’ crucial, values are **not** (only query by key). 
- Persistence :: MemToDisk :: Snapshot
    - Freq :: ModifiedItems
        - ```~9 items | 9000 seconds```
        - ```1000+ items | 60 seconds```

### Get those props!
- ```strlen <key>```
- ```append <key> <value>```
- ```getrange <key> <start> <end>```

### Cleanup
- ```flushdb```

### Just sayin’
- The **commands** are *case-insensitive*. ```GET```, ```get``` are the same.
- It’s ***fast***.
- It’s ***fast***, not just because it stores items in **RAM**.
- It definitely will not fit all your needs ( the stuff making you feel *not so great* ).