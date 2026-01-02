FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive
ENV USER=root

RUN apt-get update && apt-get install -y \
    kali-desktop-xfce \
    novnc \
    tigervnc-standalone-server \
    dbus-x11 \
    && apt-get clean

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 54321
CMD ["/entrypoint.sh"]
