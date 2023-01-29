# what are the responsibilities of boot loader

![Screenshot](diagram-boot-process.svg)

A boot loader is a program responsible for loading the Linux kernel.
Static files of the boot loader in the /boot folder.

These files help to start the operating system. This is one of the most important folder. Removing anything from this directory 
or a file getting corrupted will result in
operating system crash after reboot.

Let's dive into general responsibilities of boot loader.

- Initializing the hardware

The boot loader is responsible  setting up the memory and CPU
and preparing envrionment for operating system.

- Loading the kernel

This step for the operating system  to take control of the computer
and start managing system resources.

- Starting the operating system

Once the kernel is loaded, then the boot loader
hands control over to it and the operating systm starts.

- Splash screen menu

If  multiple operating system are installed on teh same computer
the boot loader waits the user to select.

- Loading additional drivers

In some cases software is required for the operating system to function correctly

- Error handling

The boot loader report any errors that occur during the boot process,
hardware failures and so on.


Let's dive into more detail of /boot folder.


If you would like to see inside of folder, run below command on your terminal.

```
$ cd /boot
$ ls -al
```

```
drwxr-xr-x  3 root root     4096 Dec 19 20:28 .
drwxr-xr-x 19 root root     4096 Jan 27 20:29 ..
-rw-r--r--  1 root root       83 Dec 13 20:46 System.map-5.10.0-20-amd64
-rw-r--r--  1 root root   236452 Dec 13 20:46 config-5.10.0-20-amd64
drwxr-xr-x  5 root root     4096 Dec 19 20:28 grub
-rw-r--r--  1 root root 29658693 Dec 19 20:28 initrd.img-5.10.0-20-amd64
-rw-r--r--  1 root root  7008928 Dec 13 20:46 vmlinuz-5.10.0-20-amd64
```

These folder and files are related all about kernel. :)

- /grub this folder name tells us what kind of loader our system is using.

- vmlinuz-<installed kernel version> is your actual kernel binary files.

You can with below command what vmlinuz* is.

```
file vmlinuz-<installed kernel version>
```

- initrd.img-<installed version> is a small and temporary inital ram disk image to boot your system.

- config-<installed version> containes configs your kernel binary was compiled with.

- system.map-<installed version>

If you update your kernel you will see all versions of files here.


Actually, I put the command below which is shortcut of what we learned about it.


```
$ uname -a
```

```
Linux bullseye 5.10.0-21-amd64 #1 SMP Debian 5.10.162-1 (2023-01-21) x86_64 GNU/Linux
```

All about information still you're not ensure what boot loader that you're using your system.

Run below command 
```
echo $((`cat /proc/sys/kernel/bootloader_type`>>4))
```
Response in my system is

```
7
```

What is 7?

Go to linux kernel

```
https://github.com/torvalds/linux/tree/master/Documentation/x86/boot.rst
```

Open the folder and find the table as below which shows 
all possible bootloaders. 

Please look at the numbers :)

```
Assigned boot loader ids (hexadecimal):


0	LILO (0x00 reserved for pre-2.00 bootloader)
1	Loadlin
2	bootsect-loader (0x20, all other values reserved)
3	Syslinux
4	Etherboot/gPXE/iPXE
5	ELILO
7	GRUB
8	U-Boot
9	Xen
A	Gujin
B	Qemu
C	Arcturus Networks uCbootloader
D	kexec-tools
E	Extended (see ext_loader_type)
F	Special (0xFF = undefined)
10	Reserved
11	Minimal Linux Bootloader <http://sebastian-plotz.blogspot.de>
12	OVMF UEFI virtualization stack
13	barebox

```