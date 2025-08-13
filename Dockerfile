FROM node:20-alpine
RUN apk add --no-cache libc6-compat
RUN npm install -g pnpm

WORKDIR /app

COPY . .

RUN pnpm i

#Devops 2 de sildim

CMD ["pnpm", "seller-portal:dev"]
