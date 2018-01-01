function _transcode_build_conf() {
    [ -f "${TRANSCODE_CONF_PATH}/transcode.conf.template" ] && \
        envsubst < "${TRANSCODE_CONF_PATH}/transcode.conf.template" > "${TRANSCODE_CONF_PATH}/transcode.conf"

    [ -f "${TRANSCODE_CONF_PATH}/input.conf.template" ] && \
        envsubst < "${TRANSCODE_CONF_PATH}/input.conf.template" > "${TRANSCODE_CONF_PATH}/input.conf"

    if [ -n "$( find "${TRANSCODE_INPUTD_PATH}" -name "*.conf.template" )" ]; then
        local template
        for template in $( ls -A "${TRANSCODE_INPUTD_PATH}/*.conf.template" ); do
            envsubst < "${TRANSCODE_INPUTD_PATH}/${template}" > "${TRANSCODE_INPUTD_PATH}/${template%.template}"
        done
    fi

    [ -f "${TRANSCODE_CONF_PATH}/output.conf.template" ] && \
        envsubst < "${TRANSCODE_CONF_PATH}/output.conf.template" > "${TRANSCODE_CONF_PATH}/output.conf"

    if [ -n "$( find "${TRANSCODE_OUTPUTD_PATH}" -name "*.conf.template" )" ]; then
        local template
        for template in $( ls -A "${TRANSCODE_OUTPUTD_PATH}/*.conf.template" ); do
            envsubst < "${TRANSCODE_OUTPUTD_PATH}/${template}" > "${TRANSCODE_OUTPUTD_PATH}/${template%.template}"
        done
    fi
}

_transcode_build_conf
