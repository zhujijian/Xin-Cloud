#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20231130.sql ./mysql/db
cp ../sql/ry_config_20231204.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../xin-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy xin-gateway "
cp ../xin-gateway/target/xin-gateway.jar ./xin/gateway/jar

echo "begin copy xin-auth "
cp ../xin-auth/target/xin-auth.jar ./xin/auth/jar

echo "begin copy xin-visual "
cp ../xin-visual/xin-monitor/target/xin-visual-monitor.jar  ./xin/visual/monitor/jar

echo "begin copy xin-modules-system "
cp ../xin-modules/xin-system/target/xin-modules-system.jar ./xin/modules/system/jar

echo "begin copy xin-modules-file "
cp ../xin-modules/xin-file/target/xin-modules-file.jar ./xin/modules/file/jar

echo "begin copy xin-modules-job "
cp ../xin-modules/xin-job/target/xin-modules-job.jar ./xin/modules/job/jar

echo "begin copy xin-modules-gen "
cp ../xin-modules/xin-gen/target/xin-modules-gen.jar ./xin/modules/gen/jar

