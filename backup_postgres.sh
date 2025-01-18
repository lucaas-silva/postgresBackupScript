#!/bin/bash

CONTAINER_NAME="039069e02d0f"
DB_USER="postgres"
DB_NAME="postgres"
BACKUP_DIR="/home/luxas/backups/recinto"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).sql"

mkdir -p "$BACKUP_DIR"

docker exec "$CONTAINER_NAME" pg_dump -U "$DB_USER" "$DB_NAME" > "$BACKUP_FILE"

echo "Backup criado: $BACKUP_FILE"

# chmod +x backup_postgres.sh
# 0 3 * * * /caminho/para/backup_postgres.sh
