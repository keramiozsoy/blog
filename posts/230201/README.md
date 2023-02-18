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

I didn't understand why all number redirected to 0.

