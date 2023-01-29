# what is systemd or /sbin/init

![Screenshot](diagram-boot-process.svg)

systemd is a system and service manager for linux operating systems.


It runs as first process (PID 1) on boot.

Let's check with the command below.

```
$ ps 1
```

```
    PID TTY      STAT   TIME COMMAND
      1 ?        Ss     0:01 /sbin/init
```

When we looked at the result in the command column it should be systemd but it isn't.

We can understand what this is.

```
$ file /sbin/init
```

We are able to see it is just a link to reach real systemd file.
```
/sbin/init: symbolic link to /lib/systemd/systemd
```


systemd is not invoked directly by the user. It starts during early booting process.

systemd start up faster than earlier init methods which are SysVinit and Upstart.

A technique behind of systemd provides to run multiple services simultaneously.


A systemctl command is a primary tool to manage systemd. 
If you would like to dive into detail use commands below.

```
man systemctl
```

```
systemctl status
```

Here is the source code.

https://github.com/systemd/systemd



