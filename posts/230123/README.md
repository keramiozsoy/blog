# what are the responsibilities of boot loader


Static files of the boot-loader in the /boot folder.
These files help to start computer. This is one of the most
important folder. Removing anything from this directory 
or a file getting corrupted will result in OS crash after reboot.


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


If you would like to see inside of folder run below command on your terminal.

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

These folder and files are all about kernel. :)


vmlinuz-<kernel version> is your actual kernel binary.

initrd.img-<kernel version>	is a small and temporary filesystem to boot your system.

config-<kernel version> containes configs your kernel binary was compiled with.

system.map-<kernel version>





