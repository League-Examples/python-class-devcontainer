#!/bin/bash

ext_url='https://github.com/league-infrastructure/league-vscode-ext/releases/download/v1.20250530.2/jtl-syllabus-v1.20250530.2.vsix'
ext_path=/vscode/extensionsCache/jtl-syllabus.vsix

# Download the extension
curl -L -o "$ext_path" "$ext_url"
if [ -f "$ext_path" ]; then
    echo "Downloaded JTL Syllabus extension to $ext_path"

else
    echo "Failed to download JTL Syllabus extension."
fi

# Install the Python package regardless
pipx install jtl-syllabus