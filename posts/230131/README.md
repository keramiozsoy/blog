# What is X window system


![Screenshot](diagram-boot-process.svg)


X Windows System is loaded almost final step in the boot process.

- https://x.org/wiki

The X windows System, called X or X11 for short.

X provides the basic framework for a graphical user interface environment.

X is a network based graphics windows system that was developed
at Massachusetts Institute of Technology.

X has got X client and X server model which means that application programs can connect with display programs.

Server and client don't need to run on same computer and X provides the base for the graphical user interface on operating system.

X client is just an app on your computer.

X server is responsible to draw windows graphics on the display screen
 and also responsible for managing your input devices.

It called X server because which can interact any 
monitor not only local monitor but also another monitors (display environment) on same network.

X server transfers your act from input devices which are a mouse, a keyboard, a touch screen, a pen etc.

There are key concepts

- X server  

- Window manager (i3 , openbox etc. )

- Desktop environment  ( Gnome, KDE, Cinnamon etc. )


X server creates windows.
Windows manager customizes how those look and they behave.
Last and top point is Desktop environement which gives you user experience.
It will help to click or use the bar to search something on your computer. 

Consequently,
These keys are work together to present user interface on computer.


X is so old software that's why here some news.

There is a replacement project which is called Wayland.

If you would like to know detail about it you are able to use below link.

- https://wayland.freedesktop.org


And last, A topic called Display Manager (xdm, lightdm.) is related to X. You can search for some summary information.

Display manager manages, display management , loads x server and graphical logins.



