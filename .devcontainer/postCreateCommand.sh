#! /usr/bin/bash

ext_ur='https://github.com/league-infrastructure/league-vscode-ext/releases/download/v1.20250510.3/jtl-syllabus-v1.20250510.3.vsix'
ext_path=/vscode/extensionsCache/jtl-syllabus.vsix

curl -L -o "$ext_path" "$ext_ur"
if [ -f "$ext_path" ]; then
    echo "Installing JTL Syllabus extension..."
    code --install-extension "$ext_path"
else
    echo "Failed to download JTL Syllabus extension."
fi

pipx install jtl-syllabus