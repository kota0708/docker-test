# docker-mock

docker のモックです。

## docker ver

v 19.03.5

## 開発開始

```bash
$ make start
```

### node(nuxt) url

[http://localhost:8080](http://localhost:8080)

### python url

[http://localhost](http://localhost)

## 開発終了

```bash
$ make kill
```

## ログを確認

```bash
$ make logs
```

## コンテナのステータスを確認

```bash
$ make ps
```

## Structure

```sh
.
├── nginx               # nginxの設定一式 + ログ
├── node                # nodeの環境(nuxt)
├── python              # python環境 + 設定一式
├── docker-compose.yaml # docker設定
└── Makefile            # コマンドファイル
```

![docker構造](https://github.com/kota0708/docker-test/construction.jpg)
