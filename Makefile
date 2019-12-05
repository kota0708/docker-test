PROJECT = wordpress

# コンテナを起動
.PHONY: start
start:
	docker-compose up -d

# コンテナを起動 (コンソールにデバックを表示させる)
.PHONY: build
build:
	docker-compose up -d --build

# ログを表示
.PHONY: logs
logs:
	docker-compose logs

# 開発終了
.PHONY: kill
kill:
	docker-compose kill

# コンテナの状態を表示
.PHONY: ps
ps:
	docker-compose ps

# 全てのコンテナの状態を表示
.PHONY: ps-all
ps-all:
	docker ps -a

# mysqlのコンテナの中に入る
.PHONY: on-python
on-python:
	docker exec -it python-container bash

# nodeのコンテナの中に入る
.PHONY: on-nuxt
on-nuxt:
	docker exec -i -t nuxt-container sh

# コンテナ、イメージを削除
.PHONY: clean
clean:
	@if [ "$(image)" != "" ] ; then \
			docker rmi -f $(image); \
	fi
	@if [ "$(contener)" != "" ] ; then \
			docker rm -f $(contener); \
	fi

# コンテナをリスタート
.PHONY: restart
restart: kill start
