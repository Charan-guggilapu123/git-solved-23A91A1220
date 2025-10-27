# 🏗️ System Architecture — *DevOps Simulator*

## Overview
**DevOps Simulator** follows a modular **microservices architecture** designed for **high availability, scalability, and flexibility**.  
The system supports two major environments:  
- **Production** — optimized for reliability, security, and performance.  
- **Development** — optimized for experimentation, debugging, and fast iteration.

---

## 🧩 Components

### 1. Application Server
| Environment | Technology | Port | Scaling | Extra |
|--------------|-------------|------|----------|--------|
| **Production** | Node.js + Express | `8080` | Horizontal auto-scaling enabled | SSL/TLS enforced |
| **Development** | Node.js + Express (hot reload) | `3000` | Manual (single instance) | Debugger on port `9229` |

---

### 2. Database Layer
| Environment | Database | Configuration | Backup | Notes |
|--------------|-----------|----------------|----------|--------|
| **Production** | PostgreSQL 14 | Master–slave replication | Automated daily backups | Encrypted connections |
| **Development** | PostgreSQL 14 (local) | Single instance | Manual backups | Auto-seed with test data on startup |

---

### 3. Monitoring System
| Environment | Tool | Metrics | Alerts | Dashboard |
|--------------|------|----------|----------|-------------|
| **Production** | Prometheus + Grafana | CPU, Memory, Disk, Network | Email notifications for critical issues | Grafana monitoring |
| **Development** | Console logging + optional Prometheus | CPU, Memory, Disk, Network, Build time | Console warnings only | Experimental dashboard in progress |

---

### 4. Container Orchestration *(Development Only)*
- **Tool**: Docker Compose (local setup)
- **Services**: App, Database, Redis cache
- **Volume Mounts**: Live code directory for hot reload
- **Purpose**: Simulate distributed microservices locally

---

### 5. Authentication System *(Experimental — Dev Only)*
- **Method**: OAuth2 + JWT
- **Providers**: Google, GitHub
- **Session Storage**: Redis
- **Notes**: Enabled only in development for testing user flows

---

## 🚀 Deployment Strategy

| Environment | Method | Zero-Downtime | Rollback | Tooling |
|--------------|---------|----------------|-----------|----------|
| **Production** | Rolling updates | ✅ Yes | Automated on failure | Docker + Kubernetes |
| **Development** | Docker Compose (hot reload) | ❌ Not applicable | Git checkout to previous commit | Docker Compose CLI |

---

## 🔧 Development Workflow
1. Edit source code  
2. Hot reload triggers rebuild  
3. Run unit tests (`npm test`)  
4. Verify console logs  
5. Commit and push when stable  

---

## 🔒 Security

| Environment | Encryption | Credentials | Access Control |
|--------------|-------------|--------------|----------------|
| **Production** | SSL/TLS enabled | Encrypted secrets | Strict CORS, RBAC enforced |
| **Development** | SSL disabled | Plain text (local only) | CORS enabled for all origins, debug endpoints open |

---

## ⚗️ Experimental Features (Development Only)
⚠️ These features are currently under testing:
- Multi-cloud deployment simulation  
- AI-powered log anomaly detection  
- Auto-rollback triggered by anomaly detection  

---

✅ **Merged Successfully** — This version now documents both **Production** and **Development** environments without conflicts, preserving every detail from both branches.
