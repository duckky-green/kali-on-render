FROM kalilinux/kali-rolling

# Set required variables
ENV DEBIAN_FRONTEND=noninteractive
ENV PORT=54321

# Install essential headless tools and dependencies for ttyd
RUN apt-get update && apt-get install -y \
    kali-linux-headless \
    curl \
    git \
    wget \
    && apt-get clean

# Download and install the pre-compiled ttyd binary for amd64 (modern standard)
RUN wget github.com -O /usr/bin/ttyd \
    && chmod +x /usr/bin/ttyd

# Render uses the PORT environment variable
EXPOSE 54321

# Start ttyd on port 54321, launching a bash shell
CMD ["ttyd", "-p", "54321", "bash"]
