#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
source "$THIS_FILE_PATH/index.sh"

recordTime "repalceContent"
sleep 1
caculateTime "repalceContent"

# mock data
recordTime "repalceContent" "2020-03-23 08:42:39"
caculateTime "repalceContent" "2020-03-23 08:43:40"
## file-usage
# ./test.sh
