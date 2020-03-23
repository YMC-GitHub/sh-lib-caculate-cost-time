# sh lib caculate cost time

## desc

like nodejs lib 'url'

## feat

- support ns
- support start key
- support end key
- support mock

## how to use for poduction?

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

## how to use for developer?

```sh
# get the code

# run test
./test.sh
```

## author

yemiancheng <ymc.github@gmail.com>

## license

MIT
