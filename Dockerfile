#menggunakan base image Node.js versi 14
FROM node:14 

#mengatur working directory di container /app
WORKDIR /app 

#menyalin source code ke working directory di container
COPY . . 

#mengatur agar aplikasi berjalan dalam production mode dan mengatur container item-db sebagai database host
ENV NODE_ENV=production 
ENV DB_HOST=item-db 

#menginstal dependencies kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build 

#ekspos port aplikasi 8080
EXPOSE 8080 

#command untuk menjalan server setelah container berjalan
CMD ["npm", "start"] 