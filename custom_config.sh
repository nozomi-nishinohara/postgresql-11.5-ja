#!/bin/bash
sed -i "s/^.*max_prepared_transactions\s*=\s*\(.*\)$/max_prepared_transactions = 1000/" "$PGDATA"/postgresql.conf
sed -i "s/^.*max_connections\s*=\s*\(.*\)$/max_connections = 1000/" "$PGDATA"/postgresql.conf