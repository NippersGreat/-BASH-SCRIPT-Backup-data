#!/bin/bash

# Путь к директории, которую нужно скопировать
SOURCE_DIR="/path/to/source"

# Путь к директории, где будет сохранена резервная копия
BACKUP_DIR="/path/to/backup"

# Текущая дата и время
CURRENT_DATE=$(date +"%Y%m%d%H%M%S")

# Имя файла резервной копии
BACKUP_FILE="${BACKUP_DIR}/backup-${CURRENT_DATE}.tar.gz"

# Создание резервной копии
tar -czvf "$BACKUP_FILE" "$SOURCE_DIR"

# Проверка успешности выполнения команды
if [ $? -eq 0 ]; then
  echo "Резервная копия успешно создана: $BACKUP_FILE"
else
  echo "Ошибка при создании резервной копии"
fi