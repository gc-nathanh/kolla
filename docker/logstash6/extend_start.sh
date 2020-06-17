#!/bin/bash

LOGSTASH_LOG_DIR="/var/log/kolla/logstash"

if [[ ! -d "${LOGSTASH_LOG_DIR}" ]]; then
    mkdir -p "${LOGSTASH_LOG_DIR}"
fi
if [[ $(stat -c %U:%G "${LOGSTASH_LOG_DIR}") != "logstash:kolla" ]]; then
    chown logstash:kolla "${LOGSTASH_LOG_DIR}"
fi
