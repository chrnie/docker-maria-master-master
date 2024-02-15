# test mysql master-master replication

## Start/Stop Environment

```bash
docker-compose -p marias-playground up -d

docker-compose -p marias-playground down -v
```

## Overview

  * 2 Nodes: mysql1, mysql2
  * 1 Database being replicated bi-directional

## HOWTO

  1) docker creates containers
  2) env/mysql/init-mysql.sh starts replication
  3) optional: test.sh shows replication status
  4) optional: add_data.sh for example table and entries
  5) optional: show_data.sh example table on both nodes

