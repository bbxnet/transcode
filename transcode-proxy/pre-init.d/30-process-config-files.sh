envsubst '$NGINX_WORKER_CONNECTIONS' \
    < "${NGINX_CONF_PATH}/nginx.conf.template" \
    > "${NGINX_CONF_PATH}/nginx.conf"

envsubst '$NGINX_RESOLVER_ADDRESS' \
    < "${NGINX_CONFD_PATH}/resolver.conf.template" \
    > "${NGINX_CONFD_PATH}/40-resolver.conf"
