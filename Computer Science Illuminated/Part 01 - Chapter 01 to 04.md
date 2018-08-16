| 作者 | 頁數 | 出版時間 | 
| --- | --- | --- | 
| Nell Dale & John Lewis | 682 | *2002* | 

--------- 

### Binary 
    
| what | detail | 
| :---: | :----- | 
| 0, 1 | Each storage unit is called a binary digit or ***bit*** for short. | 
| 1 Byte / 8 bits | Bits are grouped together into ***bytes*** (8 bits), | 
| 4 Bytes / 32 bits | and bytes are grouped together into units called ***words***. | 
    
### Huffman Encoding 
- 0x01 
    > ... use only a few bits to represent characters that appear often <br>and reserve longer bits strings for characters that don’t appear often, 
    > > the overall size of the document being represented is small.

- 0x02 
    > Since *Huffman* codes use the shortest bit strings for the most common characters, <br>we start with a table that lists the frequency of the characters we want to encode.
    > > Frequencies may come from counting chars in a particular document <br>or from counting chars in a sample of text from a particular content area.
    
    > And ..
    > > A frequency table may also come from <br>a general idea of how frequently letters occur in a particular lang such as English.
    
- 0x03
    > The way the structure is created <br>ensures that most frequently used characters get the shortest bit strings.
        
### MP3 
- MP3 is short for *MPEG-2, audio layer 3 file*.
- MP3 employs both lossy and lossless compression.
- roughtly procedures
    > First it analyze the frequency spread <br>and compares it to mathematical models of human psychoacoustics, 
    > > then it discards info that cannot be heard by humans.
    
    > Then 
    > > the bit stream is compressed using a form of *Huffman* encoding to achieve additional compression.
    
### Vector graphics 
- It’s another technique for representing images.
    > Instead of assigning colors to pixels as we do in raster graphics <small>( *jpeg*, *gif* etc.)</small> ,<br> a vector-graphics format describes an image in terms of lines and geometric shapes.
    
    > A vector graphic is a series of commands that describes a line’s direction, thickness, and color.
    
- However 😏
    > vector graphics is not good for representing *real-world* images. 
    > > It’s good for line art and cartoon-style drawings <small>( might be **old-fashioned** )</small>.
        
### Video Codecs 
- It employ two types of compression: *temporal* and *spatial*.
- ***Temporal compression*** looks for differences between consecutive frames.
    > A *keyframe* is chosen as the basis to compare the differences, and its entire image is stored.
    > > For consecutive images, only the changes <small>( called *delta frames* )</small> are stored.
    
- ***Spatial compression*** removes redundant information within a frame.
    > It often groups pixels into blocks <small>( rectangular areas )</small> that have the same color, 
    > > such as a portion of a clear blue sky.
    
    > Instead of storing each pixel, the color and the coordinates of the area are stored instead.
    > > This idea is similar to run-length encoding.
    > > > Detail: *Replacing a long series of a repeated character with a count of the repetition.* 
    > > > > such as: _AAAAA_ => _*A5_
