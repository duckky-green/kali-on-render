#!/bin/bash
export USER=root

# 1. Start VNC on its internal default port (5901)
vncserver :1 -geometry 1280x720 -depth 24 -SecurityTypes None

# 2. Start noVNC proxy and map it to your custom port 54321
# This is what the browser actually connects to.
/usr/bin/novnc_proxy --vnc localhost:5901 --listen 54321
