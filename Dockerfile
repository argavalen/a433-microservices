# Menggunakan gambar Node.js Alpine sebagai builder
FROM node:14.21-alpine as builder

# Mengatur direktori kerja dalam kontainer
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Menyalin semua file aplikasi ke direktori kerja
COPY . .

# Menggunakan npm ci untuk menginstal dependensi aplikasi
RUN npm ci

# Mengekspos port 3001 untuk akses ke aplikasi
EXPOSE 3001

# Perintah yang akan dijalankan ketika kontainer berjalan
CMD [ "node", "index.js" ]