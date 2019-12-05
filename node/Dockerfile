# イメージの指定
FROM node:10.16.0-alpine

WORKDIR /app

COPY . /app

# コマンド実行
# linux 最新化,gitのインストール、npm最新化、vue-cli インストール　をしている。
RUN apk update && \
  apk add git && \
  npm install -g npm && \
  npm install -g vue-cli

ENV HOST 0.0.0.0
EXPOSE 3000

CMD ["sh", "-c", "yarn install && yarn dev"]

