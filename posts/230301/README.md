# what kind of package managers does Linux need to install apps

A package manager that automates the process of installing,removing and upgrading computer programs for computer.


Different distributions use different packaging systems. Systems are incompatible and not used interchangeably.


Most distributions fall into one of two group of packaging;

- debian-style ( dpkg-deb)
- red-hat-style ( rpm )

There are some exceptions, like Arch and Gentoo, but most others use these two.

Package management systems usually consist of two types of managers.

- low level package manager

These take care of unpacking individual packages, running scripts, and mainly installing and removing package files.

- high level package manager

These perform the task of finding dependencies and downloading groups of packages from the vendor with all related dependencies.

| -             | Debian Style  | Red Hat Style  |
| ------------- | ------------- | ------------- |
| Low Level     | dpkg-deb      | rpm  |
| High Level    | apt-get , apt, aptitude  | yum, dnf, zypper  |





# Get more info about package manager


Debian 

```SHELL
man dpkg
```

```SHELL
dpkg - package manager for Debian
```


Red Hat

```SHELL
man rpm
```

```SHELL
 rpm - RPM Package Manager
```

# Install a package from downloaded a package file

You want to install one application.

Let's assume that the application is not available in main repo of your distribution.
That's why you have to download the application manually from the application website.

for example, I am going to use zoom application. 


- https://zoom.us/download?os=linux


- Debian

When we want to use dpkg, the system will only install the downloaded packages. Dpkg will not install dependencies. Most of packages need additional packages as dependencies. In this scenario, we will get an error message while we are trying to install a deb package.


```SHELL
wget https://zoom.us/client/5.13.11.1288/zoom_amd64.deb

```

```SHELL
zoom_amd64.deb
```

```SHELL
sudo dpkg -i zoom_amd64.deb
```

```SHELL
Selecting previously unselected package zoom.
(Reading database ... 25145 files and directories currently installed.)
Preparing to unpack zoom_amd64.deb ...
Unpacking zoom (5.13.11.1288) ...
dpkg: dependency problems prevent configuration of zoom:
 zoom depends on libxcb-keysyms1; however:
  Package libxcb-keysyms1 is not installed.
 zoom depends on libxcb-xinerama0; however:
  Package libxcb-xinerama0 is not installed.
 ver:
 ......
 ......
 ......
  Package desktop-file-utils is not installed.
 zoom depends on libgbm1; however:
  Package libgbm1 is not installed.
 zoom depends on libdrm2; however:
  Package libdrm2 is not installed.

dpkg: error processing package zoom (--install):
 dependency problems - leaving unconfigured
Processing triggers for mailcap (3.69) ...
Errors were encountered while processing:
 zoom

```

We have seen errors. I haven't written at all. If you want to see or reproduce errors, use the command below.

```SHELL
sudo dpkg --configure -a
```

You have to find all and install deb files which alredy depended.
After you can intall main deb. 

It's a frustrated process, I don't recommend this way to install apps on your machine.


Let's fix what we could't not do to install app
```SHELL
sudo apt --fix-broken install
```


You can use below command to install deb package and dependencies.

```SHELL
sudo apt install ./zoom_amd64.deb
```

And we have installed zoom.




- Red Hat


```SHELL
wget https://zoom.us/client/5.13.11.1288/zoom_x86_64.rpm

```

```SHELL
rpm -i zoom_x86_64.rpm
```

```SHELL
warning: zoom_x86_64.rpm: Header V4 RSA/SHA512 Signature, key ID dd79b481: NOKEY
error: Failed dependencies:
	ibus is needed by zoom-5.13.11.1288-1.x86_64
	ibus-m17n is needed by zoom-5.13.11.1288-1.x86_64
	libEGL.so.1()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libGL.so.1()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libX11.so.6()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libXcomposite.so.1()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libXfixes.so.3()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libXrender.so.1()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libXss.so.1()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libXtst.so.6()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libasound.so.2()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libdrm.so.2()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libgbm.so.1()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libpulse.so.0()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxcb-image.so.0()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxcb-keysyms.so.1()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxcb-randr.so.0()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxcb-shape.so.0()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxcb-shm.so.0()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxcb-xinerama.so.0()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxcb-xtest.so.0()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxkbcommon-x11.so.0()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	libxslt.so.1()(64bit) is needed by zoom-5.13.11.1288-1.x86_64
	mesa-dri-drivers is needed by zoom-5.13.11.1288-1.x86_64
	nss >= 3.22 is needed by zoom-5.13.11.1288-1.x86_64
```

Again, We have seen errors.   :)

I don't recommend this way to install apps on your machine.


# Installing a package from a repository


- Debian

```SHELL
sudo apt-get install gimp
```

- Red Hat

What is yum, dnf?

DNF  is  the next upcoming major version of YUM, a package manager for RPM-based Linux distributions.


```SHELL
yum search firefox
```


