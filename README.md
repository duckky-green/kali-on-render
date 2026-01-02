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
1. Go to the [Render Dashboard]([![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](render.com/deploy).
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
