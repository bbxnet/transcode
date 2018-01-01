if [ -f "${TRANSCODE_CONF_PATH}/gpu.lock" ]; then
    TRANSCODE_GPU="$( cat "${TRANSCODE_CONF_PATH}/gpu.lock" )"
fi

export TRANSCODE_GPU="${TRANSCODE_GPU:-any}"
