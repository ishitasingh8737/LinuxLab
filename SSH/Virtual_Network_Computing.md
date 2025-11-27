## Virtual Network Computing
In this task I successfully configured and accessed a full remote desktop session over a secure SSH
tunnel using VNC. On the remote Ubuntu machine, the VNC server was started using vncserver :1,
which initialized the graphical desktop session on port 5901.

On my local system, I created a secure SSH port forwarding tunnel with:

-     **ssh -L 5901:localhost:5901 user@remote-ip**

This forwarded the remote VNC port to my local machine without exposing it on the network. After the
tunnel was established, I opened a VNC client and connected to localhost:5901.
The remote Ubuntu desktop loaded successfully, and I was able to interact with the system interface,
confirming proper keyboard and GUI functionality. This demonstrates secure full-desktop remote access
by combining SSH encryption with VNC graphical remote control.

#### Final output:
![alttext](<./Screenshot 2025-11-27 070516.png>)

#### Intermediate Steps

![alttext](<./Screenshot 2025-11-27 070559.png>)
![alttext](<./Screenshot 2025-11-27 070614.png>)
