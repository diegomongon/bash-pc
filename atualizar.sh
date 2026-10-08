#!/bin/bash

echo "--- 📦 Iniciando atualizações do APT (Sistema e Debs) ---"
sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y

echo ""
echo "--- 🧹 Limpando pacotes desnecessários do APT ---"
sudo apt autoremove -y && sudo apt autoclean

echo ""
echo "--- 📦 Iniciando atualizações do Flatpak (Apps) ---"
flatpak update -y
flatpak uninstall --unused -y

echo ""
echo "--- 💻 Verificando atualizações de Firmware (Hardware) ---"

fwupdmgr get-updates -y
sudo fwupdmgr update -y

echo ""
echo "✅ Sistema, Apps e Firmware verificados!"
echo "💡 Nota: Se houve atualização de firmware, reinicie o computador para aplicar."
