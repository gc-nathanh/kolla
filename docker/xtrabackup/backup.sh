#!/usr/bin/env bash
BACKUP_DIR=/backup/

xtrabackup --backup --target-dir=$BACKUP_DIR
xtrabackup --prepare --target-dir=$BACKUP_DIR
xtrabackup --print-param --prepare --target-dir=$BACKUP_DIR
