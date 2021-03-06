#!/bin/sh

declare -A time_data_dic
time_data_dic=()
function cost_get (){
  local s="start"
  local e="end"
  local n=
  local c="cost"
  local valStart=
  local valEnd=
  local keyEnd=
  local keyStart=
  local result=
  local start=
  local end=
  local keyCost=

  [ -n "$1" ] && n="$1"

  if [ "${n}" ]; then
    keyEnd="${n}.${e}"
    keyStart="${n}.${s}"
    keyCost="${n}.${c}"
  else
    keyEnd="${e}"
    keyStart="${s}"
    keyCost="${c}"
  fi

  valEnd=$(date +'%Y-%m-%d %H:%M:%S')
  [ -n "$2" ] && valEnd="${2}"

  time_data_dic+=([$keyEnd]=$val)
  #valStart=`date +'%Y-%m-%d %H:%M:%S'`
  valStart=${time_data_dic[$keyStart]}
  end=$(date +%s -d "${valEnd}")
  start=$(date +%s -d "${valStart}")
  #result=$(($end-$start))
  result=$(echo $(($end - $start)) | awk '{t=split("60 s 60 m 24 h 999 d",a);for(n=1;n<t;n+=2){if($1==0)break;s=$1%a[n]a[n+1]s;$1=int($1/a[n])}print s}')
  # ouput style01
  #echo "开始:$valStart"
  #echo "结束:$valEnd"
  #echo "耗时:${result}"
  # ouput style02
  echo "$keyStart:$valStart"
  echo "$keyEnd:$valEnd"
  echo "$keyCost:${result}"
}
function cost_set (){
  local s=
  local e=
  local val=
  local key=

  s="start"
  e="end"

  key="$s"
  [ -n "$1" ] && key="${1}.${s}"
  val=$(date +'%Y-%m-%d %H:%M:%S')
  [ -n "$2" ] && val="$2"

  time_data_dic+=([$key]=$val)
  #echo "$key:$val"
}


function recordTime() {
  cost_set "$1" "$2"
}
function caculateTime() {
  cost_get "$1" "$2"
}

# file-usage
# ./index.sh
# source ./index.sh
