# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# User specific environment and startup programs

export CLICOLOR=1
export LSCOLORS=exgxhbhbcxDxdxcbbbecec
PS1='[\u@\h \W]\$ '
export PS4='$LINENO:${FUNCNAME[0]} '

export HISTFILESIZE=500000                         # The maximum number of lines contained in the history file. When this variable is assigned a value, the his-tory file is truncated, if necessary, by removing the oldest entries, to contain no more than that number of lines. The default value is 500. The history file  is also truncated to this size after writing it when an interactive shell exits.
export HISTSIZE=500000                             # The number of commands to remember in the command history. The default value is 500.
export HISTTIMEFORMAT="%F %T "
export HISTCONTROL=ignoredups                      # ignoredups 只能剔除连续的重复条目. 要清除整个命令历史中的重复条目, 可以将 HISTCONTROL 设置成 erasedup
export HISTIGNORE='history:history *:pwd:cd:cd *:ls:l:ll:ll *:lll:echo *:ifconfig:ipconfig:jps:jps *:exit:source *:;;:xattr *:mysql:mysql *:hive:beeline:supervisord:supervisorctl:supervisorctl *:docker:docker ps:docker ps *:docker images:docker rm *:docker rmi *:shellcheck:shellcheck *:shfmt:shfmt *' # A colon-separated list of patterns used to decide which command lines should be saved on the history list.Each pattern is anchored at the beginning  of the line and must match the complete line
shopt -s histappend
PROMPT_COMMAND='history -a'

#export GREP_OPTTIONS='--color=auto'

basedir=/cluster
datadir=/data

ADB_HOME=$basedir/platform-tools
export PATH=$PATH:$ADB_HOME

ALI_HOME=$basedir/ali
export PATH=$PATH:$ALI_HOME

ANT_HOME=$basedir/ant
export PATH=$PATH:$ANT_HOME/bin

APR_HOME=$basedir/apr
export PATH=$PATH:$APR_HOME/bin

ATLAS_HOME=$basedir/atlas
ATLAS2_HOME=$basedir/atlas2
export PATH=$PATH:$ATLAS_HOME/bin:$ATLAS_HOME/hook-bin

#AUTOCONF_HOME=$basedir/autoconf
#export PATH=$PATH:$AUTOCONF_HOME/bin

AUTOMAKE_HOME=$basedir/automake
export PATH=$PATH:$AUTOMAKE_HOME/bin

BAT_HOME=$basedir/bat
export PATH=$PATH:$BAT_HOME

CHRONOGRAF_HOME=$basedir/chronograf/usr
export PATH=$PATH:$CHRONOGRAF_HOME/bin

CMAKE_HOME=/usr/local/cmake-3.22.0
export PATH=$PATH:$CMAKE_HOME/bin

CTOP_HOME=$basedir/ctop
export PATH=$PATH:$CTOP_HOME

DOCKER_HOME=$basedir/docker
export PATH=$DOCKER_HOME:$PATH

DRUID_HOME=$basedir/druid
#export PATH=$PATH:$DRUID_HOME/bin

DUF_HOEM=$basedir/duf
export PATH=$PATH:$DUF_HOEM

ES_HOME=$basedir/elasticsearch
export PATH=$PATH:$ES_HOME/bin

ETCD_HOME=$basedir/etcd
export PATH=$PATH:$ETCD_HOME

EXA_HOME=$basedir/exa
export PATH=$PATH:$EXA_HOME/bin

FFMPEG_HOME=$basedir/ffmpeg
if [ "${PKG_CONFIG_PATH}" == "" ]; then
  export PKG_CONFIG_PATH=$FFMPEG_HOME/lib/pkgconfig
else
  export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$LIBEVENT_HOME/lib/pkgconfig
fi
export PATH=$PATH:$FFMPEG_HOME/bin

FLINK_HOME=$basedir/flink
export PATH=$PATH:$FLINK_HOME/bin

FLUME_HOME=$basedir/flume
export PATH=$PATH:$FLUME_HOME/bin

FRP_HOME=$basedir/frp
export PATH=$PATH:$FRP_HOME

FX_HOME=$basedir/fx
export PATH=$PATH:$FX_HOME

GO_HOME=$basedir/go-1.16
export GOPATH="$datadir"/go-1.16
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GO_HOME/bin:$GOBIN

GRADLE_HOME=$basedir/gradle
export PATH=$PATH:$GRADLE_HOME/bin

GRAFANA_HOME=$basedir/grafana
export PATH=$PATH:$GRAFANA_HOME/bin

export GVM_ROOT=$basedir/gvm
export PATH=$PATH:$GVM_ROOT/bin

HCATA_HOME="$HIVE_HOME"/hcatalog
export PATH=$PATH:$HCATA_HOME/bin:$HCATA_HOME:sbin

HADOOP2_HOME=$basedir/hadoop
HADOOP3_HOME=$basedir/hadoop3

HBASE_HOME=$basedir/hbase
HBASE2_HOME=$basedir/hbase2
export PATH=$PATH:$HBASE_HOME/bin

HUDI_HOME=$basedir/hudi
# hive cli and hive server required
if [ "${HIVE_AUX_JARS_PATH}" == "" ]; then
  export HIVE_AUX_JARS_PATH=$HUDI_HOME/hudi-hadoop-mr-bundle-0.12.2.jar
else
  export HIVE_AUX_JARS_PATH=$HIVE_AUX_JARS_PATH:$HUDI_HOME/hudi-hadoop-mr-bundle-0.12.2.jar
fi

HIVE_HOME=$basedir/hive
HIVE3_HOME=$basedir/hive3

HTOP_HOME=$basedir/htop
export PATH=$PATH:$HTOP_HOME/bin

ICEBERG_HOME=$basedir/iceberg

INFLUXDB_HOME=$basedir/influxdb/usr
export PATH=$PATH:$INFLUXDB_HOME/bin

JMETER_HOME=$basedir/jmeter
# export PATH=$PATH:$JMETER_HOME/bin

JQ_HOME=$basedir/jq
export PATH=$PATH:$JQ_HOME

JVM_MON_HOME=$basedir/jvm-mon
export PATH=$PATH:$JVM_MON_HOME/bin

KAFKA_EXPORTER_HOME=$basedir/kafka_exporter
export PATH=$PATH:$KAFKA_EXPORTER_HOME

KAFKA_HOME=$basedir/kafka
KAFKA2_HOME=$basedir/kafka2
export PATH=$PATH:$KAFKA_HOME/bin

KIBANA_HOME=$basedir/kibana
export PATH=$PATH:$KIBANA_HOME/bin

KNOX_HOME=$basedir/knox
export PATH=$PATH:$KNOX_HOME/bin

K8S_HOME=$basedir/kubernetes
K8S_CLIENT_HOME=$K8S_HOME/client
export PATH=$PATH:$K8S_CLIENT_HOME/bin

KYLIN_HOME=$basedir/kylin
export PATH=$PATH:$KYLIN_HOME/bin

LIBICONV_HOME=$basedir/libiconv
export PATH=$PATH:$LIBICONV_HOME/bin

LIBEVENT_HOME=$basedir/libevent
if [ "${PKG_CONFIG_PATH}" == "" ]; then
  export PKG_CONFIG_PATH=$LIBEVENT_HOME/lib/pkgconfig
else
  export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$LIBEVENT_HOME/lib/pkgconfig
fi

#LIBTOOL_HOME=$basedir/libtool
#export PATH=$LIBTOOL_HOME/bin:$PATH

LIVY_HOME=$basedir/livy
export PATH=$PATH:$LIVY_HOME/bin

LRZSZ_HOME=$basedir/lrzsz
export PATH=$PATH:$LRZSZ_HOME/bin

M2_HOME=$basedir/maven
export PATH=$PATH:$M2_HOME/bin

MINICONDA=$basedir/miniconda2
#export PATH=$MINICONDA/bin:$PATH

MINICONDA3=$basedir/miniconda3
#export PATH=$PATH:$MINICONDA3/bin

MYSQL_HOME=$basedir/mysql
export PATH=$PATH:$MYSQL_HOME/bin:$MYSQL_HOME/support-files

MYSQLD_EXPORTER_HOME=$basedir/mysqld_exporter
export PATH=$PATH:$MYSQLD_EXPORTER_HOME

NASM_HOME=$basedir/nasm
export PATH=$PATH:$NASM_HOME/bin

NCDU_HOME=$basedir/ncdu
export PATH=$PATH:$NCDU_HOME/bin

NEXUS_HOME=$basedir/nexus
NEXUS_DATA_HOME=$datadir/nexus/storage
export PATH=$PATH:$NEXUS_HOME/bin

NG_HOME=$basedir/nginx
export PATH=$PATH:$NG_HOME/sbin

NIFI_HOME=$basedir/nifi
export PATH=$PATH:$NIFI_HOME/bin

NIFI_REGISTRY_HOME=$basedir/nifi-registry
export PATH=$PATH:$NIFI_REGISTRY_HOME/bin

NINJA_HOME=$basedir/ninja
export PATH=$PATH:$NINJA_HOME

NODE_EXPORTER_HOME=$basedir/node_exporter
export PATH=$PATH:$NODE_EXPORTER_HOME

NODE_HOME=$basedir/node
export PATH=$PATH:$NODE_HOME/bin

NTFS3G_HOME=$basedir/ntfs-3g
export PATH=$PATH:$NTFS3G_HOME/bin

OOZIE_HOME=$basedir/oozie
export PATH=$OOZIE_HOME/bin:$PATH

OPENSSL_HOME=$basedir/openssl
#export LDFLAGS="-L$OPENSSL_HOME/lib"
#export CPPFLAGS="-L$OPENSSL_HOME/include/openssl"
export PATH=$OPENSSL_HOME/bin:$PATH

OZONE_HOME=$basedir/ozone
export PATH=$OZONE_HOME/bin:$PATH:$OZONE_HOME/sbin

PCRE_HOME=$basedir/pcre
export PATH=$PATH:$PCRE_HOME/bin

PG_HOME=$basedir/pgsql
export PATH=$PATH:$PG_HOME/bin

PGBOUNCER_HOME=$basedir/pgbouncer
export PATH=$PATH:$PGBOUNCER_HOME/bin

PHANTOMJS_HOME=$basedir/phantomjs-2.1.1
export PATH=$PATH:$PHANTOMJS_HOME/bin

PHOENIX_HOME=$basedir/phoenix
if [ "${HBASE_CLASSPATH}" == "" ]; then
  export HBASE_CLASSPATH=$PHOENIX_HOME/phoenix-server-hbase-1.3-4.16.1.jar
else
  export HBASE_CLASSPATH=$HBASE_CLASSPATH:$PHOENIX_HOME/phoenix-server-hbase-1.3-4.16.1.jar
fi
export PATH=$PATH:$PHOENIX_HOME/bin

PIPE_VIEWER_HOME=$basedir/pv
export PATH=$PATH:$PIPE_VIEWER_HOME/bin

#PKG_CONFIG_HOME=$basedir/pkg-config
#export PATH=$PATH:$PKG_CONFIG_HOME/bin

PRESTO_HOME=$basedir/presto
export PATH=$PATH:$PRESTO_HOME/bin

PROMETHEUS_HOME=$basedir/prometheus
export PATH=$PATH:$PROMETHEUS_HOME

PROTOC_HOME=$basedir/protoc
export PATH=$PATH:$PROTOC_HOME/bin

PUSHGATEWAY_HOME=$basedir/pushgateway
export PATH=$PATH:$PUSHGATEWAY_HOME

RANGER_HOME=$basedir/ranger
RANGER2_HOME=$basedir/ranger2
# hbase required
if [ "${HBASE_CLASSPATH}" == "" ]; then
  export HBASE_CLASSPATH=$RANGER_HOME/plugins/hbase-plugin/lib/*
else
  export HBASE_CLASSPATH=$HBASE_CLASSPATH:$RANGER_HOME/plugins/hbase-plugin/lib/*
fi

REDIS_HOME=$basedir/redis
export PATH=$PATH:$REDIS_HOME/src

SBT_HOME=$basedir/sbt
export PATH=$PATH:$SBT_HOME/bin

SCALA_HOME=$basedir/scala
export PATH=$PATH:$SCALA_HOME/bin

SCHEMA_REGISTRY=$basedir/schema-registry
export PATH=$PATH:$SCHEMA_REGISTRY/bin

SED_HOME=$basedir/sed
export PATH=$SED_HOME/bin:$PATH

SHELLCHECK=$basedir/shellcheck
export PATH=$PATH:$SHELLCHECK

SHFMT=$basedir/shfmt
export PATH=$PATH:$SHFMT

SLIDER_HOME=$basedir/slider
export PATH=$PATH:$SLIDER_HOME/bin

SMARTMONTOOLS_HOME=$basedir/smartmontools
export PATH=$PATH:$SMARTMONTOOLS_HOME/sbin

SNDCPY_HOME=$basedir/sndcpy
export SNDCPY_APK=$SNDCPY_HOME/sndcpy.apk
export VLC=/Applications/VLC.app/Contents/MacOS/VLC
export PATH=$PATH:$SNDCPY_HOME

SOLR_HOME=$basedir/solr
export PATH=$PATH:$SOLR_HOME/bin

SOLR_EXPORTER_HOME=$SOLR_HOME/contrib/prometheus-exporter
export PATH=$PATH:$SOLR_EXPORTER_HOME/bin

# hive require
# export SPARK_HOME=$basedir/spark
# export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

SPARK2_HOME=$basedir/spark2
# nodemanager required
for f in $SPARK2_HOME/yarn/spark-*-yarn-shuffle.jar; do
  if [[ ! -f $f ]]; then
    continue
  fi
  if [ "${HADOOP_CLASSPATH}" == "" ]; then
    export HADOOP_CLASSPATH=$f
  else
    export HADOOP_CLASSPATH=${HADOOP_CLASSPATH}:$f
  fi
done
export PATH=$PATH:$SPARK2_HOME/bin:$SPARK2_HOME/sbin

SPARK3_HOME=$basedir/spark3

SQOOP_HOME=$basedir/sqoop
export PATH=$PATH:$SQOOP_HOME/bin

# SQOOP2_HOME=$basedir/sqoop2
# export PATH=$PATH:$SQOOP2_HOME/bin

STREAMX_HOME=$basedir/streamx

STRESS_HOME=$basedir/stress
export PATH=$PATH:$STRESS_HOME/bin

TEZ_HOME=$basedir/tez
# mr on tez and hive server required
if [ "${HADOOP_CLASSPATH}" == "" ]; then
  HADOOP_CLASSPATH="$TEZ_HOME/conf:$TEZ_HOME/*:$TEZ_HOME/lib/*"
else
  HADOOP_CLASSPATH="$HADOOP_CLASSPATH:$TEZ_HOME/conf:$TEZ_HOME/*:$TEZ_HOME/lib/*"
fi

TOMCAT_HOME=$basedir/tomcat

TREE_HOME=$basedir/tree
export PATH=$PATH:$TREE_HOME

WGET_HOME=$basedir/wget
export PATH=$PATH:$WGET_HOME/bin

WINE_HOME=$basedir/wine
export WINEPREFIX=/data/wine
export PATH=$PATH:$WINE_HOME/bin

WUZZ_HOME=$basedir/wuzz-0.5.0
export PATH=$PATH:$WUZZ_HOME

XQ_HOME=$basedir/xq
export PATH=$PATH:$XQ_HOME

YASM_HOME=$basedir/yasm
export PATH=$PATH:$YASM_HOME/bin

ZIG_HOME=$basedir/zig
export PATH=$PATH:$ZIG_HOME

ZK_HOME=$basedir/zookeeper
export PATH=$PATH:$ZK_HOME/bin

ZKREST_HOME==$basedir/zookeeper-rest
export ZKREST_PIDFILE=/tmp/zkrest.pid

#export PATH=$PATH:/Library/Developer/CommandLineTools/usr/bin

# ssh alias
alias 182='ssh root@47.97.90.182'
alias pn41='ssh root@pn41.wuzhenhua.cn'
alias k8s1='ssh -p 22022 root@k8s1'
alias k8s2='ssh -p 22022 root@k8s2'
alias k8s3='ssh -p 22022 root@k8s3'
alias node1='ssh root@node1'
alias node2='ssh root@node2'
alias node3='ssh root@node3'

#export JAVA_TOOL_OPTIONS="-Djava.io.tmpdir=/tmp -Dfile.encoding=UTF-8 -Djava.net.preferIPv4Stack=true"
# jdk alias
alias java7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
alias java9='export JAVA_HOME=$(/usr/libexec/java_home -v 9)'
alias java10='export JAVA_HOME=$(/usr/libexec/java_home -v 10)'
alias java11='export JAVA_HOME=/cluster/jdk/jdk-11.0.16.1.jdk/Contents/Home && export PATH=$JAVA_HOME/bin:$PATH'
java8
export PATH=$JAVA_HOME/bin:$PATH

alias jps='jps -l'

# atlas
alias start-atlas='supervisorctl start hbase: && supervisorctl start solr && supervisorctl start kafka && export HBASE_CONF_DIR=/cluster/conf && $ATLAS_HOME/bin/atlas_start.py'
alias start-atlas2='supervisorctl start hbase2: && supervisorctl start solr8 && supervisorctl start kafka2 && export HBASE_CONF_DIR=/cluster/conf/hbase2 && $ATLAS2_HOME/bin/atlas_start.py'
alias stop-atlas='$ATLAS_HOME/bin/atlas_stop.py'
alias stop-atlas2='$ATLAS2_HOME/bin/atlas_stop.py'

hadoop2() {
  alias hdfs='${HADOOP2_HOME}/bin/hdfs'
  alias yarn='${HADOOP2_HOME}/bin/yarn'
}

hadoop3() {
  alias hdfs='${HADOOP3_HOME}/bin/hdfs'
  alias yarn='${HADOOP3_HOME}/bin/yarn'
}

# hadoop2.x
alias restart-dfs='${HADOOP2_HOME}/sbin/stop-dfs.sh && ${HADOOP2_HOME}/sbin/start-dfs.sh'
alias restart-yarn='${HADOOP2_HOME}/sbin/stop-yarn.sh && ${HADOOP2_HOME}/sbin/start-yarn.sh'
alias start-historyserver='${HADOOP2_HOME}/sbin/mr-jobhistory-daemon.sh start historyserver'
alias stop-historyserver='${HADOOP2_HOME}/sbin/mr-jobhistory-daemon.sh stop historyserver'
alias restart-historyserver='stop-historyserver && start-historyserver'
alias start-timelineserver='${HADOOP2_HOME}/sbin/yarn-daemon.sh start timelineserver'
alias stop-timelineserver='${HADOOP2_HOME}/sbin/yarn-daemon.sh stop timelineserver'
alias restart-timelineserver='stop-timelineserver && start-timelineserver'
alias start-hadoop='${HADOOP2_HOME}/sbin/start-dfs.sh && start-yarn.sh && start-historyserver && start-timelineserver'
alias stop-hadoop='stop-timelineserver && stop-historyserver && ${HADOOP2_HOME}/sbin/stop-yarn.sh && ${HADOOP2_HOME}/sbin/stop-dfs.sh'
alias restart-hadoop='stop-hadoop && start-hadoop'
alias test-mapreduce='${HADOOP2_HOME}/bin/yarn jar ${HADOOP2_HOME}/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.6.0.jar wordcount'

# hadoop3.x
alias restart-dfs3='${HADOOP3_HOME}/sbin/stop-dfs.sh && ${HADOOP3_HOME}/sbin/start-dfs.sh'
alias restart-yarn3='${HADOOP3_HOME}/sbin/stop-yarn.sh && ${HADOOP3_HOME}/sbin/start-yarn.sh'
alias start-historyserver3='$HADOOP3_HOME/bin/mapred --daemon start historyserver'
alias stop-historyserver3='$HADOOP3_HOME/bin/mapred --daemon stop historyserver'
alias restart-historyserver3='stop-historyserver3 && start-historyserver3'
alias start-timelineserver3='$HADOOP3_HOME/bin/yarn --daemon start timelineserver'
alias stop-timelineserver3='$HADOOP3_HOME/bin/yarn --daemon stop timelineserver'
alias restart-timelineserver='stop-timelineserver3 && start-timelineserver3'
alias start-timelinereader3='$HADOOP3_HOME/bin/yarn --daemon start timelinereader'
alias stop-timelinereader3='$HADOOP3_HOME/bin/yarn --daemon stop timelinereader'
alias restart-timelinereader3='stop-timelinereader3 && start-timelinereader3'
alias start-hadoop3='$HADOOP3_HOME/sbin/start-dfs.sh && $HADOOP3_HOME/sbin/start-yarn.sh && $HADOOP3_HOME/sbin/start-historyserver && $HADOOP3_HOME/sbin/start-timelinereader'
alias stop-hadoop3='$HADOOP3_HOME/sbin/stop-timelinereader && $HADOOP3_HOME/sbin/stop-historyserver && $HADOOP3_HOME/sbin/stop-yarn.sh && $HADOOP3_HOME/sbin/stop-dfs.sh'

# hbase alias
alias start-hbase.sh='export HADOOP_HOME=${HADOOP2_HOME} && ${HBASE_HOME}/bin/start-hbase.sh'
alias restart-hbase='stop-hbase.sh && start-hbase.sh'
alias sqlline.py='sqlline.py localhost:hbase'
alias sqlline2.py='/cluster/phoenix-5.0.0/bin/sqlline.py localhost:/hbase2'

# hive alias
alias beeline='export HADOOP_HOME=${HADOOP2_HOME} && $HIVE_HOME/bin/beeline -u "jdbc:hive2://localhost:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2" -n xiaowu'
alias hive='export HADOOP_HOME=${HADOOP2_HOME} && export HADOOP_CLASSPATH="$TEZ_HOME/conf:$TEZ_HOME/*:$TEZ_HOME/lib/*" && HIVE_AUX_JARS_PATH=$ATLAS_HOME/hook/hive && ${HIVE_HOME}/bin/hive'
alias hiveserver2='export HADOOP_HOME=${HADOOP2_HOME} && export HADOOP_CLASSPATH="$TEZ_HOME/conf:$TEZ_HOME/*:$TEZ_HOME/lib/*" && HIVE_AUX_JARS_PATH=$ATLAS_HOME/hook/hive && $HIVE_HOME/bin/hiveserver2 >/dev/null 2>&1 &'
alias metastore='export HADOOP_HOME=${HADOOP2_HOME} && $HIVE_HOME/bin/hive --service metastore >/dev/null 2>&1 &'

alias hive3='export HADOOP_HOME=${HADOOP3_HOME} && export HADOOP_CLASSPATH="$basedir/tez-0.9.1/conf:$basedir/tez-0.9.1/*:$basedir/tez-0.9.1/lib/*" && ${HIVE3_HOME}/bin/hive'
alias beeline3='export HADOOP_HOME=${HADOOP3_HOME} && $HIVE3_HOME/bin/beeline -u "jdbc:hive2://localhost:2181/;serviceDiscoveryMode=zooKeeper;zooKeeperNamespace=hiveserver2" -n xiaowu'

# spark alias
alias start-spark='start-shuffle-service.sh && start-history-server.sh'
alias stop-spark='stop-history-server.sh && stop-shuffle-service.sh'
alias restart-spark='stop-spark && start-spark'

# flink alias
# no required export HADOOP_CLASSPATH, but required HADOOP_CONF_DIR. or export HADOOP_CLASSPATH
alias start-flink='HADOOP_CLASSPATH=$($HADOOP2_HOME/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && ${FLINK_HOME}/bin/historyserver.sh start'
alias stop-flink='${FLINK_HOME}/bin/historyserver.sh stop'
alias restart-flink='stop-flink && start-flink'
alias flink='export HADOOP_CLASSPATH=$($HADOOP2_HOME/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && export FLINK_CONF_DIR=/cluster/conf/flink && flink'
flink_major_version=1.13
flink_version=${flink_major_version}.0
flink_cdc_version=2.4.2
scala_binary_version=2.11
alias sql-client-jdbc.sh="export HADOOP_CLASSPATH=$(${HADOOP2_HOME}/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && ${FLINK_HOME}/bin/sql-client.sh \
  -e ${FLINK_HOME}/conf/sql-env.yaml \
  -i ${FLINK_HOME}/conf/init.sql \
  -j ${NEXUS_DATA_HOME}/central/org/apache/flink/flink-connector-jdbc_${scala_binary_version}/${flink_version}/flink-connector-jdbc_${scala_binary_version}-${flink_version}.jar \
  -j /data/nexus/storage/central/org/postgresql/postgresql/42.6.0/postgresql-*.jar \
  -j /usr/share/java/mysql-connector-java.jar"

alias sql-client-hive.sh="export HADOOP_CLASSPATH=$(${HADOOP2_HOME}/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && ${FLINK_HOME}/bin/sql-client.sh \
  -e ${FLINK_HOME}/conf/sql-env.yaml \
  -i ${FLINK_HOME}/conf/init.sql \
  -j ${NEXUS_DATA_HOME}/central/org/apache/flink/flink-connector-hive_${scala_binary_version}/${flink_version}/flink-connector-hive_${scala_binary_version}-${flink_version}.jar \
  -j ${HIVE_HOME}/lib/hive-exec-*.jar \
  -j ${HIVE_HOME}/lib/hive-metastore-*.jar \
  -j ${HIVE_HOME}/lib/libfb303-*.jar \
  -j ${HADOOP2_HOME}/share/hadoop/mapreduce/hadoop-mapreduce-client-core-*.jar"

alias sql-client-kafka.sh="export HADOOP_CLASSPATH=$(${HADOOP2_HOME}/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && ${FLINK_HOME}/bin/sql-client.sh \
  -i ${FLINK_HOME}/conf/init.sql \
  -j ${NEXUS_DATA_HOME}/central/org/apache/flink/flink-sql-connector-kafka_${scala_binary_version}/${flink_version}/flink-sql-connector-kafka_${scala_binary_version}-${flink_version}.jar"

alias sql-client-redis.sh="export HADOOP_CLASSPATH=$(${HADOOP2_HOME}/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && export FLINK_CONF_DIR=/cluster/conf && ${FLINK_HOME}/bin/sql-client.sh \
  -i ${FLINK_HOME}/conf/init.sql \
  -j ${NEXUS_DATA_HOME}/central/org/apache/bahir/flink-connector-redis_2.11/1.1.0/flink-connector-redis_2.11-1.1.0.jar \
  -j ${NEXUS_DATA_HOME}/central/org/apache/commons/commons-pool2/2.4.2/commons-pool2-2.4.2.jar \
  -j ${NEXUS_DATA_HOME}/central/redis/clients/jedis/2.9.0/jedis-2.9.0.jar"

alias sql-client-hudi.sh="export HADOOP_CLASSPATH=$(${HADOOP2_HOME}/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && ${FLINK_HOME}/bin/sql-client.sh \
  -i ${FLINK_HOME}/conf/init.sql \
  -j ${HUDI_HOME}/hudi-flink${flink_major_version}-bundle-*.jar \
  -j ${HADOOP2_HOME}/share/hadoop/mapreduce/hadoop-mapreduce-client-core-*.jar \
  -j ${HIVE_HOME}/lib/hive-exec-*.jar \
  -j ${HIVE_HOME}/lib/hive-metastore-*.jar \
  -j ${HIVE_HOME}/lib/libfb303-*.jar"

# alias sql-client.sh="export HADOOP_CLASSPATH=$(${HADOOP2_HOME}/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && export FLINK_CONF_DIR=/cluster/conf/flink && ${FLINK_HOME}/bin/sql-client.sh \
alias sql-client.sh="export HADOOP_CLASSPATH=$(${HADOOP2_HOME}/bin/hadoop classpath) && export HADOOP_CONF_DIR=/cluster/conf && ${FLINK_HOME}/bin/sql-client.sh \
  -e ${FLINK_HOME}/conf/sql-env.yaml \
  -i ${FLINK_HOME}/conf/init.sql \
  -j ${NEXUS_DATA_HOME}/central/org/apache/flink/flink-connector-jdbc_${scala_binary_version}/${flink_version}/flink-connector-jdbc_${scala_binary_version}-${flink_version}.jar \
  -j ${NEXUS_DATA_HOME}/central/org/postgresql/postgresql/42.6.0/postgresql-*.jar \
  -j /usr/share/java/mysql-connector-java-*.jar \
  -j ${NEXUS_DATA_HOME}/central/org/apache/flink/flink-connector-hive_${scala_binary_version}/${flink_version}/flink-connector-hive_${scala_binary_version}-${flink_version}.jar \
  -j ${HUDI_HOME}/hudi-flink${flink_major_version}-bundle-*.jar \
  -j ${HIVE_HOME}/lib/hive-exec-*.jar \
  -j ${HIVE_HOME}/lib/hive-metastore-*.jar \
  -j ${HIVE_HOME}/lib/libfb303-*.jar \
  -j ${HADOOP2_HOME}/share/hadoop/mapreduce/hadoop-mapreduce-client-core-*.jar \
  -j ${ICEBERG_HOME}/iceberg-flink-runtime-${flink_major_version}-*.jar \
  -j ${NEXUS_DATA_HOME}/central/com/ververica/flink-sql-connector-postgres-cdc/${flink_cdc_version}/flink-sql-connector-postgres-cdc-*.jar \
  -j ${NEXUS_DATA_HOME}/central/com/ververica/flink-sql-connector-mysql-cdc/${flink_cdc_version}/flink-sql-connector-mysql-cdc-*.jar \
  -j ${NEXUS_DATA_HOME}/central/org/apache/bahir/flink-connector-redis_2.11/1.1.0/flink-connector-redis_2.11-1.1.0.jar \
  -j ${NEXUS_DATA_HOME}/central/org/apache/commons/commons-pool2/2.4.2/commons-pool2-2.4.2.jar \
  -j ${NEXUS_DATA_HOME}/central/redis/clients/jedis/2.9.0/jedis-2.9.0.jar \
  -j ${NEXUS_DATA_HOME}/central/org/apache/flink/flink-sql-connector-kafka_${scala_binary_version}/${flink_version}/flink-sql-connector-kafka_${scala_binary_version}-${flink_version}.jar"

# streamx alias
alias start-streamx='export HADOOP_HOME=$basedir/hadoop && $STREAMX_HOME/bin/startup.sh'
alias stop-streamx='$STREAMX_HOME/bin/shutdown.sh'

# kafka alias
alias kafka-console-consumer.sh="export KAFKA_OPTS="-Djava.security.auth.login.config=/cluster/conf/kafka_client_jaas.conf" && kafka-console-consumer.sh \
  --bootstrap-server localhost:9092 \
  --consumer.config $KAFKA_HOME/config/consumer.properties \
  --topic test"
alias kafka-console-producer.sh="export KAFKA_OPTS="-Djava.security.auth.login.config=/cluster/conf/kafka_client_jaas.conf" && kafka-console-producer.sh \
  --broker-list localhost:9092 \
  --producer.config $KAFKA_HOME/config/producer.properties \
  --topic test"
alias kafka-server-start.sh='export KAFKA_OPTS="-Djava.security.auth.login.config=$KAFKA_HOME/config/kafka_server_jaas.conf" && export CLASSPATH=$KAFKA_HOME/config && kafka-server-start.sh -daemon $KAFKA_HOME/config/server.properties'
alias kafka-topics.sh='export KAFKA_OPTS="-Djava.security.auth.login.config=$KAFKA_HOME/config/kafka_server_jaas.conf" && kafka-topics.sh --zookeeper localhost/kafka'
alias connect-standalone.sh='export KAFKA_OPTS="-Djava.security.auth.login.config=/cluster/conf/kafka_client_jaas.conf" && connect-standalone.sh'
alias connect-distributed.sh='export KAFKA_OPTS="-Djava.security.auth.login.config=/cluster/conf/kafka_client_jaas.conf" && connect-distributed.sh'

# druid alias
alias start-cluster-master-no-zk-server='start-cluster-master-no-zk-server >/dev/null 2>&1 &'
alias start-cluster-data-server='start-cluster-data-server >/dev/null 2>&1 &'
alias start-cluster-query-server='start-cluster-query-server >/dev/null 2>&1 &'

# ranger
alias ranger-admin='$RANGER_HOME/admin/ews/ranger-admin-services.sh'
alias ranger-usersync='$RANGER_HOME/usersync/ranger-usersync-services.sh'
alias start-ranger='supervisorctl start solr && ranger-admin start && ranger-usersync start'
alias stop-ranger='ranger-usersync stop && ranger-admin stop'
alias restart-ranger='stop-ranger && start-ranger'

# ranger2.x
alias start-ranger2='supervisorctl start solr8 && $RANGER2_HOME/admin/ews/ranger-admin-services.sh start && $RANGER2_HOME/usersync/ranger-usersync-services.sh start'
alias stop-ranger2='$RANGER2_HOME/usersync/ranger-usersync-services.sh stop && $RANGER2_HOME/admin/ews/ranger-admin-services.sh stop'
alias restart-ranger2='stop-ranger2 && start-ranger2'

# knox
alias start-knox='ldap.sh start && gateway.sh start'
alias stop-knox='gateway.sh stop && ldap.sh stop'
alias restart-knox='stop-knox && start-knox'

# slider
alias slider='export HADOOP_CONF_DIR=/cluster/conf && ${SLIDER_HOME}/bin/slider'

# monitor alias
alias chronograf='chronograf -b $datadir/chronograf/chronograf-v1.db >/dev/null 2>&1 &'
alias grafana-server='grafana-server -homepath $GRAFANA_HOME >/dev/null 2>&1 &'
alias influxd='influxd -config=$basedir/influxdb/etc/influxdb/influxdb.conf >/dev/null 2>&1 &'
alias kafka_exporter='kafka_exporter --kafka.server=localhost:9092 --sasl.enabled --sasl.username="kafka" --sasl.password="kafka" >/dev/null 2>&1 &'
alias mysqld_exporter='mysqld_exporter --config.my-cnf=$MYSQLD_EXPORTER_HOME/my.cnf >/dev/null 2>&1 &'
alias node_exporter='node_exporter >/dev/null 2>&1 &'
alias prometheus='prometheus --config.file=$PROMETHEUS_HOME/prometheus.yml --storage.tsdb.path=$datadir/prometheus --web.enable-lifecycle --web.enable-admin-api >/dev/null 2>&1 &'
alias pushgateway='pushgateway >/dev/null 2>&1 &'

# supervisor
alias supervisord='cd $basedir/supervisor && supervisord'
alias supervisorctl='supervisorctl -uadmin -padmin'

# shfmt
alias shfmt='shfmt -d -i 2'

# k8s
alias k='kubectl'

alias psql='psql -p 6432 -U postgres'

# test
alias test-ssh='ssh -p 5999 xiaowu@xueyingying.cn'
alias test-etcd='etcdctl endpoint status --endpoints=mac-mini:2379,k8s1:2379,k8s2:2379 --cacert=/data/ca/ca.crt --cert=/data/ca/k8s/apiserver-etcd-client.crt --key=/data/ca/k8s/apiserver-etcd-client.key -w table'

# misc
alias altool='/Applications/Xcode.app/Contents/Applications/Application\ Loader.app/Contents/Frameworks/ITunesSoftwareService.framework/Versions/A/Support/altool'
# alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias barman='barman -c /cluster/barman/barman.conf'
alias jmeter='jmeter -j /tmp/jmeter.log'
alias ncdu='ncdu -e -r --color dark'
alias tree='tree -a'
alias exa='exa -l -a'
alias smartctl='smartctl -a disk0'
alias parquet="${HADOOP2_HOME}/bin/hadoop jar ${basedir}/parquet/parquet-cli-runtime.jar org.apache.parquet.cli.Main --dollar-zero parquet"
alias wget="${WGET_HOME}/bin/wget --no-check-certificate"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export LANG=en_US.UTF-8
