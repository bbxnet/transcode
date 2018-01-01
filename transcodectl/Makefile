.PHONY: install
install:
	install --group=0 --mode=0644 --owner=0 contrib/bash_completion.d/transcodectl /etc/bash_completion.d/transcodectl
	install --directory --group=0 --mode=0755 --owner=0 /etc/transcode
	install --directory --group=0 --mode=0755 --owner=0 /etc/transcode/template
	install --directory --group=0 --mode=0755 --owner=0 /etc/transcode/template/udp-to-hls
	install --group=0 --mode=0755 --owner=0 template/udp-to-hls/build /etc/transcode/template/udp-to-hls/build
	install --group=0 --mode=0755 --owner=0 template/udp-to-hls/configure /etc/transcode/template/udp-to-hls/configure
	install --group=0 --mode=0644 --owner=0 template/udp-to-hls/output.automap.template /etc/transcode/template/udp-to-hls/output.automap.template
	install --group=0 --mode=0755 --owner=0 template/udp-to-hls/rekey /etc/transcode/template/udp-to-hls/rekey
	install --group=0 --mode=0755 --owner=0 transcodectl /usr/bin/transcodectl
