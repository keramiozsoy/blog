# what are the standard wildcards or globbing patterns


There are special characters that help to find file in our computer.

Wildcard patterns are not regular expressions; wildcards work on filenames.


If you would like to dive in, just run the command below.

```SHELL
man 7 glob
```


These are standart wildcards.

```
? (question mark)

* (asterisk)

[ ] (square brackets)

{ } (curly brackets)

[!] (exclusion)

\ (backslash)
```


Here are the prepared files to test.


```SHELL
test.txt
test2.txt
abc.txt
random.txt
generated.word
tractor.txt
test-color.txt
```


## ? (question mark) (not between brackets) matches any single character.

To search for files using the ? wildcard, change unknown character with ?.

? mean only one character.


```SHELL

ls ?bc.txt

```

```SHELL
abc.txt
```


```SHELL

ls te?t.txt

```

```SHELL
test.txt
```

```SHELL

ls te?t?.txt

```

```SHELL
test2.txt
```



## * (asterisk) (not between brackets) matches any string, including the empty string.

To search for files using the * wildcard, replace whole string with one * .

Wildcard ( * )  means one or more characters.


```SHELL

ls *.word

```

It only returns files which have extension "word".
Wildcard ( * )   doesn't care how many characters there are in a single filename.

```SHELL
test2.word
```


## [ ] (square brackets) matches any character in the set of characters.


To search for files useing the [ ]  wildcard, put characters in the square brackets what you want. 


```SHELL

ls t[aer]*.txt

```

 - name of text should start 't'  
 - and second character should include 'a' or 'e' or 'r' 
 - and it doesn't matter how many characters 
 - and it should end with '.txt' extension


```SHELL
 test2.txt  
 test.txt  
 tractor.txt
```

Another example

```SHELL
ls t[a-z]*.txt
```

Same as before but  [a-z] means from a to z any character as letter.


```SHELL
 test2.txt  
 test.txt  
 tractor.txt
 test-color.txt
```


## { } (curly brackets) matches wildcard or exact name of file


It will help multiple situation to search at the same time.

```SHELL
ls {*.txt,*.word}
```

It includes file with extension  txt or word.

```SHELL
test.txt
test2.txt
abc.txt
random.txt
generated.word
tractor.txt
test-color.txt
```


## [!] (exclusion) matches not include

The right side of "!" can contain anything you do not want to include.

```SHELL

ls [!t]*.txt

```


- The letter "t" cannot be the first character.
- After "t" can anything 
- Extension should be ".txt"


```SHELL
abc.txt  
generated.word  
random.txt
```


## \ (backslash) matches special character.

For example, we have file names with (?).

Here is out example files

```SHELL
aaa1.txt 
aaa2.txt 
aaa?.txt
```


I would like to seach file which includes on name ? character.

```SHELL
ls aaa?.txt
```

Here is the another problem. ? means also only one letter. This was not my target.

```SHELL
aaa1.txt
aaa2.txt
'aaa?.txt'
```


Here is the solution with backslash ( \ )

```SHELL
ls aaa\?.txt
```

It returns only one file.

```SHELL
'aaa?.txt'
```

We can combine all the alternatives we can imagine. :)