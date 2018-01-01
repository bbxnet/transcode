#!/bin/bash

function select_transcode_gpu() {
    local id="$1"; shift

    if [ -f "${TRANSCODE_INSTANCED_PATH}/${id}/gpu.lock" ]; then
        cat "${TRANSCODE_INSTANCED_PATH}/${id}/gpu.lock"
        return
    fi

    echo "any"
}
