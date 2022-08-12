opentrickler-bootstrap.deb:
	dpkg-deb --build dist $@

clean:
	rm -f opentrickler-bootstrap.deb
