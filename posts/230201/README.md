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

We have got 3 different commands but, I didn't understand why all number redirected to 0.

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

Actually, When we click to open your terminal app, it is not real computer terminal. It is a terminal emulator. But I am not going to dive into this topic.



Now we can continue our main topic.


```SHELL

Name	Symbolic Name	Value	Example

standard_input	stdin	0		keyboard
standard_output	stdout	1		terminal
standard_error	stderr	2		text file

```










