#!/bin/bash

set -e

echo "======================================"
echo " Despliegue automatico de infraestructura"
echo "======================================"

# Comprobaciones
command -v vagrant >/dev/null 2>&1 || {
  echo "Vagrant no esta instalado"
  exit 1
}

#command -v virtualbox >/dev/null 2>&1 || {
#  echo "VirtualBox no esta instalado"
#  exit 1
#}

echo "[+] Dependencias OK"

# Levantar infraestructura
echo "[+] Levantando VM..."
vagrant up --provision

# Info final
echo "======================================"
echo " Despliegue completado"
echo " Accede a: http://192.168.56.10"
echo "======================================"
