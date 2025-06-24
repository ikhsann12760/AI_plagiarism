#!/bin/bash

echo "========================================"
echo "Instalasi Library untuk Deteksi AI & Plagiarisme Web"
echo "========================================"
echo

# Memeriksa Python
echo "Memeriksa Python..."
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python3 tidak ditemukan! Silakan install Python3 terlebih dahulu."
    echo "Ubuntu/Debian: sudo apt-get install python3 python3-pip"
    echo "CentOS/RHEL: sudo yum install python3 python3-pip"
    echo "macOS: brew install python3"
    exit 1
fi

python3 --version

echo
echo "Mengupgrade pip..."
python3 -m pip install --upgrade pip

echo
echo "Menginstall requirements..."
pip3 install -r requirements.txt

echo
echo "Mendownload NLTK data..."
python3 -c "import nltk; nltk.download('punkt'); nltk.download('stopwords')"

echo
echo "========================================"
echo "Instalasi selesai!"
echo "========================================"
echo
echo "Untuk menjalankan aplikasi:"
echo "python3 app.py"
echo