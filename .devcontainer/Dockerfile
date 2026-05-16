FROM node:24-alpine

RUN apk add --no-cache git openssh-client curl

RUN npm install -g pnpm@latest

WORKDIR /app

COPY package.json pnpm-lock.yaml pnpm-workspace.yaml* ./

RUN pnpm install

COPY . .

EXPOSE 4321
