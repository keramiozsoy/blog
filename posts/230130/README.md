# Let's look into linux filesystem hierarchy 

At the linux, '/' (root directory ) is parent point of all files. 

There are many directories that use for different purpose under root directory.



![Screenshot](diagram.svg)



## /bin/

The /bin directory contains useful commands for everyone which is system admin and normal users.

- ls 
- pwd 
- cat
- top
- etc... 

## /boot/

This directory contains static files for the boot process. kernel etc.

- System.map
- config
- grub
- initrd.img
- vmlinuz


```SHELL
-rw-r--r--  1 root root       83 Dec 13 20:46 System.map-5.10.0-20-amd64
-rw-r--r--  1 root root   236452 Dec 13 20:46 config-5.10.0-20-amd64
drwxr-xr-x  5 root root     4096 Dec 19 20:28 grub
-rw-r--r--  1 root root 29658693 Dec 19 20:28 initrd.img-5.10.0-20-amd64
-rw-r--r--  1 root root  7008928 Dec 13 20:46 vmlinuz-5.10.0-20-amd64
```

## /dev/

This directory is location of device files.

Most of the file types are FIFO special file (a channel of communication between the two processes) which can be opened by multiple processes for reading or writing. When data exchanging there isn't content on file :)

- sda ( connected SCSI devices - hard drives HDD, scanners, printers ...)


```SHELL
$ file /dev/sda
```
```SHELL
sda: block special (8/0)
```


What does block special mean?

A block special is a file type on linux. Block special files is a interface 
of real block devices. The block device performs data input and output operations
in units of blocks.

Let's check block devices that are conected our system.

First option is 

```SHELL
$ lsblk
```
```SHELL
NAME   MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
sda      8:0    0  20G  0 disk
`-sda1   8:1    0  20G  0 part /
```


Second option is 

```SHELL
sudo fdisk  -l
```
```SHELL
Disk /dev/sda: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: VBOX HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x1175070d

Device     Boot Start      End  Sectors Size Id Type
/dev/sda1  *     2048 41943039 41940992  20G 83 Linux
```



- /disk directory has answers of about sda devices ( by-id, by-partuuid, by-path, by-uuuid) 


## /etc/


This directory contains all system related configuration files.

### /etc/X11 

Ui config files here.

### /etc/alternatives 

This directory is a system for determine their determining default commands.

There is not actual code here, only links.


Let's check with the example sysmlink chaing

```SHELL
$ ls -l /usr/bin/editor
```
```SHELL
lrwxrwxrwx 1 root root 24 Dec 19 20:27 /usr/bin/editor -> /etc/alternatives/editor
```

```SHELL
$ ls -l /etc/alternatives/editor
```
```SHELL
lrwxrwxrwx 1 root root 9 Dec 19 20:27 /etc/alternatives/editor -> /bin/nano
```

Default editor is nano. Are there alternatives for nano?


update-alternatives - maintain symbolic links determining default commands


```SHELL
$ update-alternatives --list editor

```
```SHELL
/bin/nano
/usr/bin/vim.tiny
```


```SHELL
$ sudo update-alternatives --config editor

```
```SHELL
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
```
```SHELL
lrwxrwxrwx 1 root root 24 Dec 19 20:27 /usr/bin/editor -> /etc/alternatives/editor
```

```SHELL
$ ls -l /etc/alternatives/editor
```
```SHELL
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
$ cat /etc/apt/source.list
```

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



## /home/

This is all about users related files which has documents, videos, pictures, music etc.

If you would like to see your related folder use command below.

```SHELL
echo $HOME
```
```SHELL
/home/YOUR_USER_NAME
```
## /lib/

Libraries are collection of resources used by the computer.

There are files which have extensions

 - .so 

Several programs can use the same SO file. 

I mean, shared library file that used automatically by other programs via Linux's dynamic link loader.

You can look what it is dynamic linker/loader command below.

```SHELL
 $ man ld.so
```
 
 - 

## /media/


Aim of media directory is mounting point for removable medias.

- cdrom 
- usb drive
- etc.

## /mnt/

This is mount point for a temporarily mounted filesystem as need.

## /opt/

Optinal application software packages.

This directory is reserved for all the software and add-on packages that are not part of 
the default installation.

Standalone applications live in that directory that are usually seperate from your package manager dpkg, rpm etc.

Untrusted software have to install manually here. :)

- Virtualbox guest edititon

## /proc/

 The proc filesystem is a pseudo-filesystem which provides an interface to kernel data structures.

 It is virtual filesystem :)

 In this place we can say that is the mirror of kernel information while system is running.

 ```SHELL
 man proc
 ```


Every process will have a directory here which contains all kinds all kinds of information on that process.

Use command below and get the PID

```SHELL
$ top 
```
```SHELL
 1 root      20   0   98056   9908   7716 S   0.0   2.0   0:01.71 systemd
```

Details of this process can be obtained by looking at the associated files in the directory for this process.

```SHELL
$ cd /proc/1
```


There are a lot of files that explain situations what you need.


```SHELL
$ ls -al
```

If your're interested in details of a process ID 1.

```SHELL
$ cat status
```
```SHELL
Name: systemd
Umask:  0000
State:  S (sleeping)
Tgid: 1
Ngid: 0
Pid:  1
PPid: 0
TracerPid:  0
Uid:  0 0 0 0
Gid:  0 0 0 0
FDSize: 128
Groups:
.
.
```


You can look any running process here.


When you closed process, directory is cleaned in proc folder.


## /root/

It is a root users home directory not for normal users.


```SHELL
cd /root/
```
```SHELL
-bash: cd: /root/: Permission denied
```

You should get permission.

```SHELL
sudo su 
```
```SHELL
cd /root
```

In this folder you can access whenever you want even another user home diretories.

## /sbin/

These are system binaries that a system administrator would use.

Normal user cannot use some of these command even if can see :)

It should be admin to use.


## /srv/

This is the service directory where service data is stored.

If you run a server web or FTP server you would store the files
that will be accessed by the external users here.

It allows better security and you to easily mount this folder
from another har drive.


## /tmp/

Temporary files can store here.

It is recommended that files and directories located in /tmp be deleted whenever the system is booted. This is good idea :)

## /usr/

This is the user application space where application will be installed by users.

## /var/

Var is a variable directory.

There are administrative and logging files.

