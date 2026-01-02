#!/bin/bash
export USER=root
export HOME=/root

# MANDATORY: Remove old VNC locks so it can start on :1
rm -rf /tmp/.X* /tmp/.unix*

# Start VNC server (Internal display :1)
vncserver :1 -geometry 1280x720 -depth 24 -SecurityTypes None

# Start noVNC proxy (Publicly accessible)
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5901 --listen 54321 --web /usr/share/novnc
