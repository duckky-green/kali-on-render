#!/bin/bash
# 1. Set required USER environment variable for VNC
export USER=root

# 2. Start VNC server (display :1, port 5901)
# The -SecurityTypes None flag simplifies access for the browser GUI
vncserver :1 -geometry 1280x720 -depth 24 -SecurityTypes None

# 3. Start noVNC proxy (listening on Render's required port 8080)
# In 2026, Kali uses /usr/bin/novnc_proxy instead of launch.sh
/usr/bin/novnc_proxy --vnc localhost:5901 --listen 8080
