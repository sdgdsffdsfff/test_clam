#! /bin/sh

# 以离线方式测试H5
# 在当前目录下执行./make.sh
# 将离线包文件打包传到ios工程的Resource.bundle里

# 需要更改的地方：
# 1. ios工程根路径
# 2. zip包的md5值：md5的参数参照ios工程中对每个H5类目的定义，路径在ios工程的Anaheim/Script/Logic/H5CacheList.lua， 比如这里 md5('h5-visa') = 9a6db8d1075423f3e6df5f6b7d1dbeb1
cd build_offline
zip 71d5a6ed207069d5660114d87225673b.zip ./* -x make.sh -r -P 12345678
mv 71d5a6ed207069d5660114d87225673b.zip ~/gitlab/alitrip-ios/Workspace/Resource.bundle/
echo "zip包构建完成"
