#!/bin/bash

# 동기화할 로컬 및 원격 디렉토리 경로 설정
LOCAL_DIR="/Users/jgo/goinfre/"
REMOTE_DIR="jgopi:/media/jgopi/piSSD/Zotero"

rsync -avz --delete "$REMOTE_DIR" "$LOCAL_DIR"
