# Deteksi AI & Plagiarisme Web

## Deskripsi
Aplikasi web ini memungkinkan pengguna untuk mengunggah file teks (PDF, DOCX) atau memasukkan teks secara langsung untuk:
- Mendeteksi kemungkinan plagiarisme dengan membandingkan kemiripan antar dokumen.
- Mendeteksi apakah teks dihasilkan oleh AI atau manusia menggunakan API Sapling.ai.

## Bahasa Pemrograman
- Python (Flask)

## Library/Framework yang Digunakan
- Flask: Web framework utama
- flask_caching: Untuk caching hasil
- requests: Untuk integrasi API eksternal (Sapling.ai)
- numpy: Perhitungan numerik (cosine similarity)
- scikit-learn (sklearn): TF-IDF vectorizer
- nltk: Pemrosesan bahasa alami (stopwords, stemming)
- python-docx: Ekstraksi teks dari file DOCX
- PyPDF2: Ekstraksi teks dari file PDF

## Cara Kerja Singkat
1. Pengguna mengunggah file atau memasukkan teks.
2. Sistem mengekstrak dan memproses teks.
3. Sistem menghitung kemiripan (plagiarisme) antar dokumen.
4. Sistem mengirim teks ke API Sapling.ai untuk mendeteksi apakah teks buatan AI atau manusia.
5. Hasil ditampilkan di web.

## Catatan
- Untuk menggunakan deteksi AI, Anda harus memiliki API key Sapling.ai dan mengaturnya pada environment variable `SAPLING_API_KEY`.
- Semua file yang diunggah disimpan di folder `uploads/`.