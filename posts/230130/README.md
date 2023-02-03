# Let's look into linux filesystem hierarchy 

At the linux, '/' (root directory ) is parent point of all files. 

There are many folders that use for different purpose under root directory.



![Screenshot](diagram.svg)



## /bin/ folder

The /bin directory contains useful commands for everyone which is system admin and normal users.

- ls 
- pwd 
- cat
- top
- etc... 

## /boot/ folder

This directory contains static files for the boot process. kernel etc.

- System.map
- initrd.img
- vmlinuz
- config
- etc... 

-rw-r--r--  1 root root   236452 Dec 13 20:46 config-5.10.0-20-amd64
drwxr-xr-x  5 root root     4096 Dec 19 20:28 grub
-rw-r--r--  1 root root 29658693 Dec 19 20:28 initrd.img-5.10.0-20-amd64
-rw-r--r--  1 root root  7008928 Dec 13 20:46 vmlinuz-5.10.0-20-amd64

## /dev/ folder

This directory is location of device files.

Most of the file types are FIFO special file (a channel of communication between the two processes) which can be opened by multiple processes for reading or writing. When data exchanging there isn't content on file :)

- sda ( connected SCSI devices - hard drives HDD, scanners, printers ...)
- /disk directory has answers of about sda devices ( by-id, by-partuuid, by-path, by-uuuid) 


## /etc/ folder


This directory contains all system related configuration files.

### /etc/X11 

Ui config files here.

### /etc/alternatives 

This directory is a system for determine their determining default commands.

There is not actual code here, only links.


Let's check with the example sysmlink chaing

```SHELL
$ ls -l /usr/bin/editor

lrwxrwxrwx 1 root root 24 Dec 19 20:27 /usr/bin/editor -> /etc/alternatives/editor
```

```SHELL
$ ls -l /etc/alternatives/editor

lrwxrwxrwx 1 root root 9 Dec 19 20:27 /etc/alternatives/editor -> /bin/nano
```

Default editor is nano. Are there alternatives for nano?


update-alternatives - maintain symbolic links determining default commands


```SHELL
$ update-alternatives --list editor

/bin/nano
/usr/bin/vim.tiny
```


```SHELL
$ sudo update-alternatives --config editor

There are 2 choices for the alternative editor (providing /usr/bin/editor).

  Selection    Path               Priority   Status
------------------------------------------------------------
* 0            /bin/nano           40        auto mode
  1            /bin/nano           40        manual mode
  2            /usr/bin/vim.tiny   15        manual mode

Press <enter> to keep the current choice[*], or type selection number: 2

update-alternatives: using /usr/bin/vim.tiny to provide /usr/bin/editor (editor) in manual mode

```

Let's check again

```SHELL
$ ls -l /usr/bin/editor
lrwxrwxrwx 1 root root 24 Dec 19 20:27 /usr/bin/editor -> /etc/alternatives/editor
```

```SHELL
$ ls -l /etc/alternatives/editor
lrwxrwxrwx 1 root root 17 Feb  3 21:04 /etc/alternatives/editor -> /usr/bin/vim.tiny
```


```SHELL
$ editor YOUR_RANDOM_FILE.txt
```

Default editor is vim.tiny :)




### /etc/crontab

'cron' configuration file. This file is for the cron table to setup the automatic running of system routines


### /etc/apt/source.list


Contains a list of apt-sources from which packages may be installed via APT.

```SHELL
deb https://deb.debian.org/debian bullseye main
deb-src https://deb.debian.org/debian bullseye main
deb https://security.debian.org/debian-security bullseye-security main
deb-src https://security.debian.org/debian-security bullseye-security main
deb https://deb.debian.org/debian bullseye-updates main
deb-src https://deb.debian.org/debian bullseye-updates main
deb https://deb.debian.org/debian bullseye-backports main
deb-src https://deb.debian.org/debian bullseye-backports main

deb https://nginx.org/packages/mainline/debian bullseye nginx
deb-src https://nginx.org/packages/mainline/debian bullseye nginx
```



## /home/ folder

## /lib/ folder

## /media/ folder

## /mnt/ folder

## /opt/ folder

## /proc/ folder

## /root/ folder

## /sbin/ folder

## /srv/ folder

## /tmp/ folder

## /usr/ folder

## /var/ folder

