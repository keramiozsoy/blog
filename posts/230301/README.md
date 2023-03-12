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



