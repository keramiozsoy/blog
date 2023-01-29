# What is an initial RAM disk initrd or initial RAM File System initramfs

![Screenshot](diagram-boot-process.svg)

A initrd which stands for initial ram disk.

https://github.com/torvalds/linux/blob/master/Documentation/admin-guide/initrd.rst

A initramfs which stands for initial RAM File System.

https://github.com/torvalds/linux/blob/master/Documentation/filesystems/ramfs-rootfs-initramfs.rst


initrd is for Linux kernels 2.4 and lower and
initramfs is a Linux 2.6 and above.


Initrd is deprecated and is replaced by initramfs.


If your system has initrd when you texted below command, you will get detail of your initrd 

```
file /boot/initrd.img-<installed image version>
```

Kernel 2.6 is expecting the initrd file to be a (compressed) cpio archive, to be uncompressed in a ramdisk, known as initramfs.


Both initrd and initramfs refer two different methods
for same goal which is perform all actions need to mount the proper root filesystem. These are helping for the boot process to continue.

In this process, after the root(real) filesystem has been found, it is checked for errors and mounted.


If mounted section is successful, the init program on the root filesystem /sbin/init is executed. The initramfs is cleared from RAM because we will not use later on.


/sbin/init handles the mounting process jump to final step
which is text-mode login prompts.

