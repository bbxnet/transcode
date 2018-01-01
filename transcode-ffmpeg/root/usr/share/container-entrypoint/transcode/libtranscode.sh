[ -n "${_LIBTRANSCODE}" ] && return || readonly _LIBTRANSCODE=1

function transcode_cmd() {
    if [ -f "${TRANSCODE_CONF_PATH}/transcode.conf" ]; then
        cat "${TRANSCODE_CONF_PATH}/transcode.conf"
    fi

    if [ -f "${TRANSCODE_CONF_PATH}/input.conf" ]; then
        cat "${TRANSCODE_CONF_PATH}/input.conf"
    fi

    if [ -n "$( find "${TRANSCODE_INPUTD_PATH}" -name "*.conf" )" ]; then
        cat "${TRANSCODE_INPUTD_PATH}"/*.conf
    fi

    if [ -f "${TRANSCODE_CONF_PATH}/output.automap" ]; then
        "${TRANSCODE_CONF_PATH}/output.automap"
    fi

    if [ -f "${TRANSCODE_CONF_PATH}/output.conf" ]; then
        cat "${TRANSCODE_CONF_PATH}/output.conf"
    fi

    if [ -n "$( find "${TRANSCODE_OUTPUTD_PATH}" -name "*.conf" )" ]; then
        for output in $( ls -A "${TRANSCODE_OUTPUTD_PATH}"/*.conf ); do
            if [ -f "${TRANSCODE_OUTPUTD_PATH}/${output%.conf}.automap" ]; then
                "${TRANSCODE_OUTPUTD_PATH}/${output%.conf}.automap"
            fi

            cat "${TRANSCODE_OUTPUTD_PATH}/${output}"
        done
    fi
}
