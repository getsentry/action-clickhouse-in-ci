#!/bin/sh

docker run -d -e CLICKHOUSE_SKIP_USER_SETUP=1 -p 8123:8123 -p 9000:9000 --name clickhouse-test --ulimit nofile=262144:262144 --rm clickhouse
