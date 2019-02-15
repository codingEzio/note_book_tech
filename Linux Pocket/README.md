### Note
- I mainly want a **quick review for my current Linux knowledge**.
- My environment for this
    - Software: [Zsh](https://www.zsh.org/) + [oh-my-zsh](https://ohmyz.sh/)
    - System: [macOS High Sierra](https://en.wikipedia.org/wiki/MacOS_High_Sierra) + [Linux Lite](https://www.linuxliteos.com/download.php)
- Notice
    - Some commands <small>( & params )</small> might *NOT* be available on *macOS*!!
- For some commands
    - those might take too much time will be **skipped**
    - those are too irrelevant to my daily uses will be **skipped** as well


### Miscellaneous 
- Double dashes
    - ```wc -- -WEIRD_FILENAME```
- Searching doc
    - ```man -k YOUR_KEYWORD```
- How many consoles being opened right now
    - ```who | wc -l```
- Is it ?build-in *OR* a feature provided by *shell*
    - ```type cd```
    - ```type who```
    - ```type node``` <small>( well.. )</small>
- Wildcard / Expansion
    - ```ls -ld Do*```
    - ```ls -ld Deskto?```
    - ```ls -ld Deskt[iou]p```
    - ```ls -ld Deskto[^ovwxyz]```
    - ```echo -ld Do{cument, wnload}s``` <small>( beyond *filename* )</small>
- Scope
    - ```export GREETING="Hello Shell"```
    - ```       GREETING="Hello Shell"```
- Redirection
    
    ```bash
    # Overwrite | Append
    echo "hello" > test_file.txt
    echo "hello" >> test_file.txt
    
    # O|A, error included
    echo "hello" &> test_file.txt
    echo "hello" &>> test_file.txt
    
    # O|A, error being seperated
    echo "hello" > output_file 2> error_file
    echo "hello" >> output_file 2>> error_file
    ```
    
- Combination

    ```bash
    COMMAND-1 ;  COMMAND-2 ;  COMMAND-3  # Just run
    COMMAND-1 && COMMAND-2 && COMMAND-3  # Stop if anyone fails
    COMMAND-1 || COMMAND-2 || COMMAND-3  # Stop if anyone succeeds
    ```
    
- Quote
    
    ```bash
    echo 'My  $HOME is' "$HOME"
    echo "My \$HOME is   $HOME"
    echo "Files under current dir:\n\n `ls -Al $(pwd)`"
    ```
    
- Most-common cmds

    ```bash
    # [ Listing files ] 
    ls -F    # decorate certain file(type)names ( e.g. '@' for symlink )
    ls -R    # list its contents recursively
    ls -d    # list the directory itself 
    
    # [ Moving files ] 
    mv -f FILE/DIR DEST_DIR    # overwrite
    
    # [ Creating dirs ]
    mkdir -p      NEW_FOLDER/x/y/z    # hmm
    mkdir -m 0777 NEW_FOLDER          # huh?
    
    # [ Viewing text ]
    less -m    # display percentage
    less -N    # display line numbers
    less -s    # squeeze "useless" blank lines as one
    less -S    # disable "wrapping" ( ya need `shift` in this case )
    
    # [ Inside `less` ] 
    #     <            beginning
    #     >            end
    #     :p           prev file
    #     :n           next file 
    #     SPACE        one more line
    
    # [ Take a peek :: head, tail ] 
    head FILE-1 FILE-2
    tail FILE-1 FILE-2    # it supports multiple files 
    
    head -c N_BYTES       # e.g.  4 => abcd
    head -c N_BYTES       # e.g.  4 => 中
    tail -c N_BYTES       # same as `head` but reversed
    
    tail -f FILE          # keep the file open, display newly added lines
    
    [ Locating stuff ] 
    type  who type which    # faster
    which who type which
    ```
    
- Permissions

    ```bash
    chown USER FILES    # who HAVE this file
    chmod      FILES    # what does ANYONE could DO with this file
    ```

### Short but elegant <small>( new perspective )</small>
- Here you are 
    
    ```bash
    vimtutor                    # You definitely know what it is ..
    
    file -b FILENAME            # type only, no filenames included
    file -i FILENAME            # MIME type ( ASCII text -> regular file )
    file -f FILENAME            # batch-get types ( filenames in that file )
    
    stat -x FILENAME            # checking basic attrs of a file
    
    wc   -L FILENAME            # locating longest line ( => len in bytes )
        
    md5sum FILE-1
    md5sum FILE-1 FILE-2 >> MY_SUM
    md5sum          --check MY_SUM
        
    readlink /my-symlink        # e.g. /Volumes/Fusion/my-real-folder
    
    basename /x/y/z.txt         # => z.txt
    basename /x/y/z             # => z
    basename /x/y/z.txt .txt    # => z
    
    dirname /x/y/z
    
    mkdir tm1 tm2 tm3 && echo "tm1\ntm2\ntm3" >> dir_namelist
    cat dir_namelist | xargs ls -Al    # a VERY VERY brief intro, sorry..
    
    nl     FILENAME    # view text with line numbers
    nl -b a, t    # numbering all lines | non-blank lines only
    nl -v N       # numbering starts with N
    nl -i N       # incremental amount of line number
    nl -n rz      # number fmts ( ln: ____1 rn: 1____ rz: 00001 )
    nl -w N       # width of the line numbers      ( 5: 00001   ) 
    nl -s S       # insert str between N::HERE::#  ( h: 00001h# )
    ```

### Those I havn't try it out yet
- *Killing*
    - Using ```ctrl + C``` may cause program **won't be able** to clean itself **properly**.
    - While you're drowning into the *inresponsive* state
        1. Press ```ctrl + J``` to get a *shell prompt*
        2. then type the shell command ```reset```
        3. then press ```ctrl + J``` again
    
### Those I rarely use
- *History*

    ```bash
    history -c    # del history
    
    !!            # re-run prev cmd
    !$            # == last param of the prev cmd 
    !*            # == all params of the prev cmd 
    ```

- *Viewing files*

    ```bash
    strings BINARY_FILE    # text that's embedded in a binary file
    od             FILE    # view data in Octal
    xxd            FILE    # view data in Hexadecimal
    ```
    
- *Default perm mode*
    
    ```bash
    umask 
    umask -S 
    
    umask 0022    # FULL / R|E  / R|E
    umask 0002    # FULL / FULL / R|E
    umask 0077    # FULL / NOPE / NOPE
    ```
    
- *Paste*
    
    ```bash
    echo "1\n2\n3" >> number
    echo "a\nb\nc" >> letter
    
    # 1    a
    # 2    b
    # 3    c
    paste    number letter
    
    # 1    2    3
    # a    b    c
    paste -s number letter
    ```