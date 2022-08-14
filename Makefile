DEB := opentrickler-bootstrap.deb

PYSRC := projects/trickler/peripheral/trickler \
	projects/trickler/peripheral/opentrickler_config.ini

all: $(DEB)

$(DEB): dist
	dpkg-deb -b dist $@

dist: dist/code/opentrickler

dist/code/opentrickler: $(PYSRC)
	mkdir -p $@
	cp -a $^ $@

clean:
	rm -f $(DEB)

.PHONY: all dist clean
