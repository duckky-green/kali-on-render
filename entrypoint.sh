#!/bin/bash
# Define the USER for VNC (mandatory in 2026)
export USER=root
export HOME=/root

# 1. Start VNC server on port 5901 (Internal)
vncserver :1 -geometry 1280x720 -depth 24 -SecurityTypes None

# 2. Start noVNC proxy on Render's required port
# Corrected path for 2026: /usr/share/novnc/utils/novnc_proxy
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5901 --listen 54321
