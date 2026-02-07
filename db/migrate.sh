#!/bin/sh
set -e

echo "Running database migrations..."

for f in /migrations/*.sql; do
  echo "Running $f"
  psql -h "$DB_HOST" -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f "$f"
done

echo "Migrations complete."
