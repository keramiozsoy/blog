# how to use the find program searching for files


A program that called find ; search for files in a directory hierarchy.



We have a folder called find-examples, which contains the files or directories listed below.


```SHELL

find-examples
│
├── blue.txt
├── yellow.txt
├── directory1
│	 ├── one.txt
│	 ├── three.txt
│	 └── two.txt
├── directory2
│	 ├── AAA.txt
│	 └── BBB.txt
├── directory3

3 directories, 7 files
```


Open your terminal and enter the following command.

```SHELL
find
```


If no paths are given, the current directory is used.

If no expression is given, the default will be -print. It displays everything within the folder where we are.

```SHELL
.
./directory3
./directory2
./directory2/AAA.txt
./directory2/BBB.txt
./directory1
./directory1/one.txt
./directory1/three.txt
./directory1/two.txt
./yellow.txt
./blue.txt

```


There are a lot of expression types to use, which are Tests, Actions, Global Options, Positional Options and Operators.

## Let's look at expression of Tests.

- Show only directory in directory

```SHELL
find -type d
```


```SHELL
.
./directory3
./directory2
./directory1
```

 
- Show all files in directories.

```SHELL
find -type f
```

```SHELL
./directory2/AAA.txt
./directory2/BBB.txt
./directory1/one.txt
./directory1/three.txt
./directory1/two.txt
./yellow.txt
./blue.txt
```

- Show exact matches with the file name.

```SHELL
find -type f -name BBB.txt
```

or

```SHELL
find . -name BBB.txt
```

Output is same like below

```SHELL
./directory2/BBB.txt
```

- Show exact matches with the file extension

```SHELL

find . -name "*.txt"

```

```SHELL
./directory2/AAA.txt 
./directory2/BBB.txt
./directory1/one.txt
./directory1/three.txt
./directory1/two.txt
./yellow.txt
./blue.txt
```


## Let's look at expression of Actions.


We would like to do something with the result after execution.


Find files extension .txt and text result to output.txt


```SHELL
find -type f -name '*.txt' -exec ls > output.txt {} \;
```

- After -exec give any command like normal bash
- The string '{}' is replaced by the current file name being processed everywhere it occurs in the arguments to the command ( look at the man find command, section in -exec command; )
-  All following arguments to find are taken to be arguments to the command until an argument consisting of ';' is encountered.


whole command will work like

```SHELL
ls ./directory2/AAA.txt > output.txt
ls ./directory2/BBB.txt > output.txt
.
.
.
ls ./blue.txt > output.txt
```

```SHELL
cat output.txt
```

Result. 

```SHELL
./output.txt
./directory2/AAA.txt
./directory2/BBB.txt
./directory1/one.txt
./directory1/three.txt
./directory1/two.txt
./yellow.txt
./blue.txt
```


The output.txt file is the result. Because the find command looks for files ending .txt.




## Let's look at expression of Global Options.


Global options take effect even for tests which occur earlier on the command line.


We would like to loot at first level of directory.

Example uses maxdepth option.

```SHELL
find -maxdepth 1  -type f -name '*.txt'
```

With level 1 , We are not interested in inside of directories. Becase new folder means new level.

```SHELL
./output.txt
./yellow.txt
./blue.txt
```


Except these information, if you're interested in more detail enter the command below on your terminal

```SHELL
man find
```



