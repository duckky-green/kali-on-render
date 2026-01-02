FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive
ENV USER=root
ENV HOME=/root

RUN apt-get update && apt-get install -y \
    kali-desktop-xfce \
    novnc \
    tigervnc-standalone-server \
    && apt-get clean

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Render uses the PORT env var to route traffic
EXPOSE 54321
CMD ["/entrypoint.sh"]
