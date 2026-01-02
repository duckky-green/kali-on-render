FROM kalilinux/kali-rolling

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install lightweight XFCE desktop and noVNC components
RUN apt-get update && apt-get install -y \
    kali-desktop-xfce \
    novnc \
    tightvncserver \
    dbus-x11 \
    && apt-get clean

# Set VNC password (required for initial connection)
RUN mkdir -p ~/.vnc && echo "kali2026" | vncpasswd -f > ~/.vnc/passwd && chmod 600 ~/.vnc/passwd

# Start script: launches VNC server and the noVNC proxy
RUN echo '#!/bin/bash\n\
vncserver :1 -geometry 1280x720 -depth 24\n\
/usr/share/novnc/utils/launch.sh --vnc localhost:5901 --listen 8080' > /entrypoint.sh \
    && chmod +x /entrypoint.sh

# Expose the noVNC port
EXPOSE 54321

CMD ["/entrypoint.sh"]
