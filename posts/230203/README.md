# how to use the find program searching for files


A program that called find ; search for files in a directory hierarchy.

Open your terminal and enter the following command.

```SHELL
find
```

If no paths are given, the current directory is used.

If no expression is given, the default will be -print. It displays everything within the folder where we are.


There are a lot of expression types to use, which are Tests, Actions, Global Options, Positional Options and Operators.

I am going to show some expression from Tests.

- Show only directory in current directory

```SHELL
find -type d
```
- Show only files in current directory

```SHELL
find -type f
```






If you're interested in more detail enter the command below.

```SHELL
man find
```

