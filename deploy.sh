#!/bin/bash

set -e

echo "======================================"
echo " Despliegue automatico de infraestructura"
echo "======================================"

# Levantar infraestructura
echo "[+] Levantando VM..."
vagrant up --provision

# Info final
echo "======================================"
echo " Despliegue completado"
echo " Accede a: http://192.168.56.10"
echo "======================================"
