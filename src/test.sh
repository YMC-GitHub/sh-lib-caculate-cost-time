#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
THIS_FILE_NAME=$(basename $0)

source "$THIS_FILE_PATH/index.sh"

echo "feat:support ns"
recordTime "stack.cost" "2020-03-23 08:42:39"
caculateTime "stack.cost" "2020-03-23 08:43:40"
echo "feat:support mock data"
recordTime "test.feat.mock.data.cost" "2020-03-23 08:42:39"
caculateTime "test.feat.mock.data.cost" "2020-03-23 08:43:40"
echo "api:cost_set/get style"
cost_set "test.api.cost_set" "2020-03-23 08:42:39"
cost_get "test.api.cost_set" "2020-03-23 08:43:40"
echo "api:recordTime/caculateTime style"
recordTime "test.api.cost_set" "2020-03-23 08:42:39"
caculateTime "test.api.cost_set" "2020-03-23 08:43:40"

min=1 && max=10 && t=$[$RANDOM%($max-$min+1)+$min]
echo "random data:sleep second $t"
recordTime "test.random.data"
sleep "$t"
caculateTime "test.random.data"

## file-usage
# src/test.sh
