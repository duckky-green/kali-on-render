#!/bin/bash
export USER=root
export HOME=/root
export DISPLAY=:1

# 1. Mandatory Cleanup for Render restarts
rm -rf /tmp/.X11-unix /tmp/.X1-lock

# 2. Initialize VNC with a basic password (kali2026) 
# Some versions of VNC crash if NO password is set even with -SecurityTypes None
mkdir -p ~/.vnc
echo "kali2026" | vncpasswd -f > ~/.vnc/passwd
chmod 600 ~/.vnc/passwd

# 3. Start VNC and force XFCE to launch
vncserver :1 -geometry 1280x720 -depth 24 -rfbauth ~/.vnc/passwd

# 4. Start noVNC proxy
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5901 --listen 54321 --web /usr/share/novnc
