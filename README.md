# sh lib caculate cost time

## desc

caculate the time you cost

## feat

- support ns
- support start key
- support end key
- support mock

## apis

- [x] cost_get
- [x] cost_set
- [x] recordTime
- [x] caculateTime

```sh
cat src/index.sh | grep "function " | sed "s/function */- [x] /g"  | sed "s/() *{//g"
```

## how to use for poduction ?

```sh
# get the code

# run the index file
# ./index.sh

# or import to your sh file
# source /path/to/the/index file

# usage
recordTime "repalceContent"
sleep 61
caculateTime "repalceContent"

:<<output
repalceContent.start:2020-03-23 08:42:39
repalceContent.end:2020-03-23 08:43:40
repalceContent.cost:1m1s
output
```

## how to use for developer ?

```sh
# get the code

# run test
./test.sh
```

## author

yemiancheng <ymc.github@gmail.com>

## license

MIT
