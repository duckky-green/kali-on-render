markdown
# 🐉 Kali-on-Render (v2026)

[![Deploy to Render](render.com)](https://render.com)
![Kali Linux](img.shields.io)
![Docker](img.shields.io)
![Status](img.shields.io)

A lightweight, high-performance **Kali Linux** deployment optimized for **Render.com**. Access a fully functional XFCE desktop environment directly through your web browser via noVNC.

---

## ✨ Features
*   🖥️ **Web GUI:** Access via browser—no local VNC client or SSH required.
*   🪶 **Lightweight:** Based on the official Kali-rolling image with the XFCE desktop.
*   🚀 **Fast Deployment:** Ready to use in under 5 minutes.
*   🛡️ **Secure:** Password-protected VNC session.

---

## 🚀 Quick Start

### 1. Repository Setup
1. Fork this repository to your GitHub account.
2. Ensure your `Dockerfile` is in the root directory.

### 2. Deploy to Render
1. Go to the [Render Dashboard](dashboard.render.com).
2. Select **New +** > **Web Service**.
3. Connect your forked repository.
4. Set **Runtime** to `Docker`.
5. Click **Create Web Service**.

### 3. Accessing the Console
Once the build is complete:
1. Open your Render URL: `your-app-name.onrender.com`
2. Click **Connect**.
3. Enter Password: `kali2026` (Change this in your Dockerfile for security!).

---

## 🛠️ Configuration
Use code with caution.

Setting	Value
Port	8080
OS	Kali Linux (Rolling)
Desktop	XFCE4
Default User	root

## ⚠️ Important Considerations

### [!WARNING]
Ephemeral Storage: Render's file system is temporary. Files will be deleted when the service restarts. To save work, attach a Render Disk.

### [!TIP]
Performance: For a smoother GUI experience, use at least the Starter instance (2GB RAM). The Free tier (512MB) may experience lag or crashes during heavy tool usage.

## 📜 License
This project is for educational and authorized security testing purposes only. Please adhere to the Kali Linux Professional Code of Conduct.
