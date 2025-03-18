FROM node:14

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin semua source code ke dalam container
COPY . .

# Menentukan environment variable
ENV NODE_ENV=production \
    DB_HOST=item-db

# Menginstal dependencies dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port yang digunakan aplikasi
EXPOSE 8080

# Menjalankan aplikasi saat container diluncurkan
CMD ["npm", "start"]