# what are the stands for  sdtin, stdout and stderr streams


These files are mainly communication channels to get input to redirect output.

Here is the example; 

While you're texting keyboard(input), you're getting text on screen(output).

These communication channels help move data from input to output. It acts like a pipeline.



Let's look at where they are.

Open your terminal 

```SHELL

cd /dev

ls -al

```

```SHELL

lrwxrwxrwx  1 root root          01 Feb 18 15:48 stderr -> /proc/self/fd/2
lrwxrwxrwx  1 root root          01 Feb 18 15:48 stdin -> /proc/self/fd/0
lrwxrwxrwx  1 root root          01 Feb 18 15:48 stdout -> /proc/self/fd/1

```

You looked at the output of the terminal; these are not physically located here. They are symbolic link files. 

Let's go to "/proc/self/fd" path.

```SHELL

cd /proc/self/fd

ls -al

```

```SHELL
lrwx------ 1 root root 64 Feb 18 15:50 0 -> /dev/pts/0
lrwx------ 1 root root 64 Feb 18 15:50 1 -> /dev/pts/0
lrwx------ 1 root root 64 Feb 18 15:50 2 -> /dev/pts/0
```

We have got 3 different commands but, We didn't understand why all number redirected to 0.

Let's split the problem into small pieces.

```

First, 

I need to learn what is the /dev/pts directory.

Second,

What does 0 stand for?

```


This directory includes pseudo-terminals, whereas a TTY is physical terminal.

https://en.wikipedia.org/wiki/Teleprinter

A TTY, teleprinter, or teletype is an electronic hardware device that can be used to send and receive typed messages through communication channels in both point-to-point or point-to-multipoint configurations.

When devices like the keyboard and mouse are directly connected to the computer through serial ports, the connection is called TTY.

There is a really good command that below.

```SHELL
man tty
````

```SHELL
tty - print the file name of the terminal connected to standard input
```

Let's use the command.

```SHELL
tty
```

```SHELL
/dev/pts/0
```

It means that there is one opened terminal window which is called number "0". And When you send data as input you will get information as ouput on "0" pseudo terminal.


Every unique terminal window is related to a Linux pts file in the "/dev/pts/" system.


Let's open another terminal window. And use the same command again to learn number of pseudo terminal.


```SHELL
tty
```

```SHELL
/dev/pts/1
```
 

Use the following commands again to see what they are.

Let's go to "/proc/self/fd" path.

```SHELL

cd /proc/self/fd

ls -al

```

```SHELL
lrwx------ 1 root root 64 Feb 19 16:32 0 -> /dev/pts/1
lrwx------ 1 root root 64 Feb 19 16:32 1 -> /dev/pts/1
lrwx------ 1 root root 64 Feb 19 16:32 2 -> /dev/pts/1
```
 
And boom :)

As a result, each pseudo terminal uses different number.

Actually, when we click to open your terminal app, it is not real computer terminal. It is a terminal emulator. But I am not going to dive into this topic.


Now we can continue our main topic.


```SHELL

Name	Symbolic Name	Value	Example   Operand

standard_input	stdin	0		keyboard   <  or 0<
standard_output	stdout	1		terminal   >  or 1>
standard_error	stderr	2		text file  		 2>

```


- stdin


Create empty file that named test.txt

```SHELL
touch test.txt
```

Let's redirect input(stdin) to file. "echo" command helps to text on terminal. 
The terminal will redirect information with (>)greated than.

```SHELL
echo 'firstline' > test.txt
```

or 


```SHELL
echo 'firstline' 1> test.txt
```


Let't look into out file.

```SHELL
cat test.txt
```

```SHELL
firstline
```


- stdout

We have looked at the file. But there are same commands.

```SHELL
cat test.txt
```

```SHELL
cat < test.txt
```

```SHELL
cat 0< test.txt
```

Three of them have got same result.

```SHELL
firstline
```



- stderr

Let's imagine we have written command on terminal. It occurs error message.

This is true command which creates a directory.

```SHELL
mkdir my-directory
``

We will type wrong command. We will get error.

```SHELL
mkdirrrrrr my-directory
```

```SHELL
-bash: mkdirrrrrr: command not found
```

We're able to redirect result out of terminal.

```SHELL
mkdirrrrrr my-directory  2> test.txt
```

```SHELL
cat test.txt
```
```SHELL
-bash: mkdirrrrrr: command not 
```


If we don't want to write anywhere. There is a special file in linux.

```SHELL
man null
``` 

```SHELL
Data written to the /dev/null and /dev/zero special files is discarded.
``` 

We will not see result. 

```SHELL
mkdirrrrrr my-directory  2> /dev/null
```


Okay, everything is clear, and we can combine all of operands together. 

:)
