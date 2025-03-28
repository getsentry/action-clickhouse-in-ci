#!/bin/sh

docker run -d -e CLICKHOUSE_SKIP_USER_SETUP=1 -p 8123:8123 -p 9000:9000 --name clickhouse-test --ulimit nofile=262144:262144 --rm clickhouse

sleep 10

echo "--- Containers ---"
docker ps

echo "--- ClickHouse Details ---"
docker exec clickhouse-test clickhouse-client --query "SELECT * FROM system.build_options"
