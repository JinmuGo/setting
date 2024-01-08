#!/bin/bash

# 동기화할 로컬 및 원격 디렉토리 경로 설정
LOCAL_DIR="/Users/jgo/goinfre/Zotero"
REMOTE_DIR="jgopi:/media/jgopi/piSSD"

# 무한 루프
while true; do
    # rsync 명령 실행
    echo "Sync completed at $(date)" >> $LOCAL_DIR/log/logfile.log
    rsync -avz --delete "$LOCAL_DIR" "$REMOTE_DIR"

    # 로그 파일에 기록 (선택 사항)

    # 1시간 대기 (3600초)
    sleep 3600
done
