FROM kalilinux/kali-rolling

# Install ttyd and essential terminal tools
RUN apt-get update && apt-get install -y \
    ttyd \
    kali-linux-headless \
    curl \
    git \
    && apt-get clean

# Render uses the PORT environment variable
EXPOSE 54321

# Start ttyd on your custom port, launching a bash shell
CMD ["ttyd", "-p", "54321", "bash"]
