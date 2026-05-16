FROM node:24-alpine

RUN npm install -g pnpm@latest

WORKDIR /app

COPY package.json pnpm-lock.yaml pnpm-workspace.yaml* ./

RUN pnpm install

COPY . .

EXPOSE 4321

CMD ["pnpm", "run", "dev", "--", "--host", "0.0.0.0"]