#!/bin/bash
set -x

module="lm_seatel"
main_module="list_management_module"


tar -xzvf ${module}_1.0.0.tar.gz >>${module}_1.0.0_untar_log.txt

# mkdir -p ${APP_HOME}/${main_module}/${module}_module/
mkdir -p ${APP_HOME}/${main_module}/${module}/

mv ${module}_1.0.0/${module}_1.0.0.jar ${RELEASE_HOME}/binary/

mv ${module}_1.0.0/start.sh ${APP_HOME}/${main_module}/${module}/
mv ${module}_1.0.0/stop.sh  ${APP_HOME}/${main_module}/${module}/
mv ${module}_1.0.0/application.properties  ${APP_HOME}/${main_module}/${module}/

cd ${APP_HOME}/${main_module}/${module}/

ln -sf ${RELEASE_HOME}/binary/${module}_1.0.0.jar ${module}.jar

ln -sf ${RELEASE_HOME}/global_config/log4j2.xml log4j2.xml
chmod +x *.sh

mkdir -p ${LOG_HOME}/${main_module}/${module}/



mkdir -p ${DATA_HOME}/cdr_input/seatel/st_hlr
mkdir -p ${DATA_HOME}/cdr_input/seatel/st_sim_change
mkdir -p ${DATA_HOME}/cdr_input/seatel/st_purged_msisdn

mkdir -p ${DATA_HOME}/lm_seatel/add
mkdir -p ${DATA_HOME}/lm_seatel/del
mkdir -p ${DATA_HOME}/lm_seatel/common
mkdir -p ${DATA_HOME}/lm_seatel/error
mkdir -p ${DATA_HOME}/lm_seatel/processed

