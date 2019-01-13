### Foreword 
- Pages before 35 migrating needed.

### NOTE for progress
- I haven't fully understand how these works 🙃
    1. [ ] slicing for ```array```
    2. [ ] access for ```list```
- These are things that need to be done after I've got network acess ..
    - [ ] Get the *CRAN Package* : ```nutshell``` <small>( along with the book )</small>

### NOTE for pitfall
- Do not add *unnecessary* commas in vector, e.g. ```c(1, 2,)``` .
- ```\``` in Python equals the ```+``` at the next line start.

### These notes are gen_ed from after Page35
- Returned value with a ```[1] THE_RESULT``` 
    - It's a ***vector***, any number you entered is **interpreted as an vector**.
    - It's like ```[0, 0]``` for a matrix (I'm just guessing)
- Check the source code of a function by simply its name, e.g. ```f``` 
- Combine vals into an ***vector*** by ```c(ELEM, [ELEM, OTHER_ARGS])```
    - ```range``` alike
        - ```c(0:5)```
        - ```c(0:3, 4:5)```
        - ```c(0, 1, 2, 3, 4, 5)```
    - opt - same size 
        - ```c(1, 2, 3, 4) * 2```
        - ```c(1, 2, 3, 4) + c(1, 2, 3, 4)```
    - opt - not the same size
        - ```c(1, 2) + 1```  <small>( => ```2, 3``` )</small>
        - ```c(1, 2) * 0.5```  <small>( => ```0.5, 1``` )</small>
        - ```c(1, 2, 3, 4) * c(0, 1)```  <small>( => ```0, 2, 0, 4``` )</small>
        - ```c(1, 2, 3, 4) * c(0, 1, 2)```  <small>( => ```0, 2, 6, 0``` )</small> ---- not fully match

### More 
- Func call 
    1. ```log(10)```
    2. ```log(10, exp(1))```
    3. ```log(x=10, base=exp(1))```
- Operator
    - ```2 ^ 10 == 2 ** 10```
    - ```FALSE != TRUE```
    - ```a_var <- c(1, 2)```
- Slice
    - \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
    - ```b <- c(10, 20, 30)``` 
    - \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
    - ```b[1]       == c(10)```
    - ```b[1:2]     == c(10, 20)```
    - ```b[c(1, 2)] == c(10, 20)```
    - \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
    - ```b[b <= 20] == c(10, 20)```
    - ```b[b <= 20] == c(10, 20)```
    - ```c(b <= 20) == c(TRUE, TRUE, FALSE)```
    - \-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
- Assignment
    - The symbols!
        - ```<-, ->``` might be more clear & ?intuitive
        - Yet the ```=``` is much more **universal** (both for *code* & *human*)
    - Three ways
        1. ```x  =  10```
        2. ```y  <- 10```
        3. ```10 ->  z```
    - Create functions
        - ```f <- function(x=0, y=0) { c(x+100, y+100) }```
            - ```f()         == c(100, 100)```
            - ```f(0,     0) == c(100, 100)```
            - ```f(x=0, y=0) == c(100, 100)```

### **Data Structures** :: vector
- What is ```array```
    - *A multidimensional vector*.
    - *A vector that is associated with a ```dim```ension attribute*.
- ```array```'s internal
    - *Stored the same way internally as vector*.
    - Only the ways of **display** & **access** varied. 
- What does ```array``` like
    - Simple one
        - ```v1 = array (     c(1, 2, 3), dim=c(1, 3))``` 
        - ```v2 = matrix(data=c(1, 2, 3), nrow=1, ncol=3)```
    - A bit complex one 
        - ```array(c(1:18), dim=c(3, 3, 2))```
        - I haven't sort it out, yet.

### More about *vector*
- What is **dataframes**
    - Spreadsheet alike (aka *rows*, *cols*, stuff like that)
- ```example = data.frame(X, Y, Z)```
    - Params
        - ```namelist <- c("Alice", "Bob", "Cobe")```
        - ```mid_test <- c(65, 80, 80)```
        - ```fin_test <- c(90, 95, 100)```
    - Access
        - ```example$namelist```
        - ```example$namelist == "alice"``` 
        - ```example$namelist [example$namelist == "alice"]```

### **Data Structures** :: list
- My thoughts (havn't verified yet!)
    - Kinda like a combination of ```list``` & ```dict```  <small>(from the side of Python)</small>.
    - _
- ```elm = list(name="alex", age=40)```
    - ```elm$name == "alex"```
    - ```elm$age  == 40```

### Type 
- Datatype
    - ```"character"  == class("ha")```
    - ```"function"   == class(c   )```
    - ```"numeric"    == class(1000)```
    - ```"logical"    == class(TRUE)```
    - ```"matrix"     == class(matrix(c(1, 2, 3), 1, 3))```
    - ```"array"      == class(array(c(1, 2, 3), c(3)))```
    - ```"data.frame" == class(data.frame(X, Y, Z))```
- Datatype casting
    - ```"2019-01-01" == as.Date("2018-01-01") + 365```

### Models & Formulas
- Ah, I don't actually understand those *formulas* kind of stuff ...
    - Phew~
    - I'm still gonna put some notes here anyway :P
- We'll look at *the relationship between speed & stopping distance*.
    1. ```cars.lm <- lm(formula=dist~speed, data=cars)```
        - ```.lm         # It's just assignment```
        - ```lm(..)      # Function for statistical stuff```
        - ```dist~speed  # Formula-specific syntax```
        - ```cars        # Built-in dataset```
    2. ```summary(cars.lm)```
        - I felt like I'm in love (with *R*, of course).
    3. The one-line version
        - ```summary(lm(formula=dist~speed, data=cars))```

### Graphics <small>( 47th ~ 51st page )</small>
- THIS PART REQUIRES **NETWORK ACCESS**.

### Getting help
- Normal way
    - ```?1```, ```help(list)```
    - ``` ?`+` ``` <small>( operators only )</small>
- Not-that-normal way
    -  ```example(plot)```
- Search it
    - ```??plot```, ```help.search("plot")```
- Hmm?
    - ```library(help="base")``` <small>( Kinda like **Read the Docs**. Ah, *weird* perspective! )</small>
    - ```vignette(all=TRUE)```