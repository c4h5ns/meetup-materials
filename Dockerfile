FROM node:22-alpine

WORKDIR /app

COPY package.json ./
# 外部依存ライブラリがある場合は以下を実行
# RUN npm ci

COPY . .

EXPOSE 8080
CMD ["node", "server.js"]
