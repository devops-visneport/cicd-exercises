FROM node:20-alpine
RUN apk add --no-cache libc6-compat
RUN npm install -g pnpm

WORKDIR /app

COPY . .
#Devops2 den ekleme yapıyorum,önceki branche geçme alıştırması
RUN pnpm i

EXPOSE 3000

CMD ["pnpm", "seller-portal:dev"]
