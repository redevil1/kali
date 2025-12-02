<div align="center">

# 🐉 Kali Linux SSH Docker

[![Docker](https://img.shields.io/badge/Docker-Ready-blue?logo=docker)](https://ghcr.io/redevil1/kali)
[![License](https://img.shields.io/badge/License-Unlicense-green)](LICENSE)
[![Kali Linux](https://img.shields.io/badge/Kali-Rolling-557C94?logo=kalilinux&logoColor=white)](https://www.kali.org/)

**A lightweight Docker image providing Kali Linux with SSH access enabled out of the box.**

[Quick Start](#-quick-start) •
[Features](#-features) •
[Usage](#-usage) •
[Configuration](#-configuration) •
[Security](#-security-considerations)

</div>

---

## 📋 Table of Contents

- [Features](#-features)
- [Prerequisites](#-prerequisites)
- [Quick Start](#-quick-start)
- [Usage](#-usage)
- [Configuration](#-configuration)
- [Security Considerations](#-security-considerations)
- [Contributing](#-contributing)
- [License](#-license)

---

## ✨ Features

- 🔄 Based on **Kali Linux Rolling** (always up-to-date)
- 🔐 SSH server pre-configured and ready to use
- 📦 Includes essential tools: `tmux`, `nano`
- 🚀 Lightweight and fast startup
- 🔁 Auto-built every 15 days for latest updates

---

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- [Docker](https://docs.docker.com/get-docker/) (version 20.10 or higher recommended)

---

## 🚀 Quick Start

```bash
# Pull and run the container
docker run -d -p 2222:22 --name kali-ssh ghcr.io/redevil1/kali:main

# Connect via SSH
ssh root@localhost -p 2222
```

> **Default Credentials:**
> - Username: `root`
> - Password: `root`

---

## 📖 Usage

### Running the Container

```bash
# Basic run (detached mode, port 2222)
docker run -d -p 2222:22 --name kali-ssh ghcr.io/redevil1/kali:main

# Run with custom port (e.g., 22222)
docker run -d -p 22222:22 --name kali-ssh ghcr.io/redevil1/kali:main

# Run with persistent storage
docker run -d -p 2222:22 -v kali-data:/root --name kali-ssh ghcr.io/redevil1/kali:main
```

### Connecting via SSH

```bash
# Connect from the same machine
ssh root@localhost -p 2222

# Connect from another machine (replace YOUR_DOCKER_HOST_IP with your Docker host IP)
ssh root@YOUR_DOCKER_HOST_IP -p 2222
```

### Container Management

```bash
# Stop the container
docker stop kali-ssh

# Start an existing container
docker start kali-ssh

# Remove the container
docker rm kali-ssh

# View container logs
docker logs kali-ssh
```

---

## ⚙️ Configuration

### Included Packages

| Package | Description |
|---------|-------------|
| `openssh-server` | SSH server for remote access |
| `tmux` | Terminal multiplexer |
| `nano` | Text editor |

### Port Mapping

| Container Port | Description |
|---------------|-------------|
| `22` | SSH Server |

---

## 🔒 Security Considerations

> ⚠️ **Warning:** This image is configured for convenience and testing purposes.

**For production use, please consider:**

1. **Change the default password immediately:**
   ```bash
   # After connecting via SSH
   passwd
   ```

2. **Use SSH key authentication instead of password:**
   ```bash
   # On your local machine
   ssh-copy-id -p 2222 root@localhost
   ```

3. **Run on a private network** or behind a firewall

4. **Do not expose port 22 directly to the internet** without additional security measures

---

## 🤝 Contributing

Contributions are welcome! Feel free to:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This project is released into the public domain under the [Unlicense](LICENSE).

---

<div align="center">

**[⬆ Back to Top](#-kali-linux-ssh-docker)**

Made with ❤️ for the security community

</div>