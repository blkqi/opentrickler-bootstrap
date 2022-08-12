DEB := opentrickler-bootstrap.deb

$(DEB): dist-init
	dpkg-deb -b dist $@

PYSRC := projects/trickler/peripheral/trickler \
	projects/trickler/peripheral/server.sh \
	projects/trickler/peripheral/bluetooth.sh \
	projects/trickler/peripheral/leds.sh \
	projects/trickler/peripheral/opentrickler_config.ini

dist-init: $(PYSRC)
	mkdir -p dist/code/opentrickler/
	cp -a $^ dist/code/opentrickler/

clean:
	rm -f opentrickler-bootstrap.deb

.PHONY: dist-init clean
