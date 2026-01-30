# Vagrant + Ansible + Docker: Infraestructura Automatizada

## 📌 Objetivo del proyecto

Este proyecto tiene como objetivo demostrar cómo desplegar **infraestructura reproducible** de forma automatizada utilizando herramientas habituales en entornos de **sistemas, DevOps e infraestructura**.

El mini-proyecto permite levantar una **máquina virtual Linux** usando **Vagrant**, provisionarla automáticamente con **Ansible** y desplegar un **servicio web containerizado con Docker** accesible desde el host.

El foco no está en la complejidad del servicio, sino en:

* Automatización
* Reproducibilidad
* Separación entre infraestructura y configuración
* Buenas prácticas de sistemas

---

## 🛠️ Tecnologías utilizadas

* **Vagrant** – Creación y gestión de la máquina virtual
* **VirtualBox** – Hipervisor
* **Ansible (ansible_local)** – Provisionado y configuración
* **Ubuntu Server** – Sistema operativo de la VM
* **Docker & Docker Compose** – Contenerización del servicio
* **UFW** – Firewall básico
* **Bash** – Script de despliegue

---

## 🧱 Arquitectura del proyecto

* Host (Windows / Linux / macOS)
* Máquina Virtual Ubuntu
* Docker ejecutando un contenedor **Nginx**
* Red privada con IP fija

```
Host
 └── Vagrant
      └── VM Ubuntu (192.168.56.10)
           ├── Docker
           │    └── Nginx (puerto 80)
           └── Firewall (UFW)
```

---

## 📂 Estructura del proyecto

```
vagrant-ansible-docker-infra/
├── deploy.sh
├── Vagrantfile
├── ansible/
│   ├── playbook.yml
│   ├── inventory
│   ├── group_vars/
│   │   └── all.yml
│   └── roles/
│       ├── common/
│       ├── docker/
│       ├── firewall/
│       └── web/
└── README.md
```

---

## 🚀 Pasos para desplegar el proyecto

### 1️⃣ Requisitos previos

* Vagrant
* VirtualBox
* Bash (Linux, macOS, WSL o Git Bash en Windows)

---

### 2️⃣ Clonar el repositorio

```bash
git clone https://github.com/oscar-olveiraa/vagrant-ansible-infrastructure
cd vagrant-ansible-infrastructure
```

---

### 3️⃣ Ejecutar el despliegue automático

```bash
chmod +x deploy.sh
./deploy.sh
```

Este script:

* Levanta la máquina virtual
* Ejecuta Ansible dentro de la VM
* Instala Docker
* Configura firewall
* Despliega el servicio web

---

### 4️⃣ Acceder al servicio

Una vez completado el despliegue:

👉 **[http://192.168.56.10](http://192.168.56.10)**

---

## 🔎 Qué hace Ansible en este proyecto

El provisionado se divide en roles claros:

* **common**

  * Actualización del sistema
  * Instalación de paquetes básicos
  * Configuración de zona horaria

* **docker**

  * Instalación y habilitación de Docker
  * Configuración de permisos de usuario

* **firewall**

  * Instalación y activación de UFW
  * Reglas para SSH y HTTP

* **web**

  * Despliegue de Nginx usando Docker Compose
  * Publicación del servicio en el puerto 80

---

## ✅ Resultados

Al finalizar el despliegue:

* La VM está completamente configurada
* Docker se encuentra operativo
* El firewall está activo
* El contenedor web está levantado
* El servicio es accesible desde el host

---

## 🧠 Conclusiones

Este proyecto demuestra:

* Uso real de **infraestructura como código**
* Automatización completa desde cero
* Separación entre infraestructura, configuración y servicios

---

## 🔮 Posibles mejoras futuras

* Monitorización (Prometheus + Grafana)
* Despliegue multi-VM para la creación de redundancia

---


