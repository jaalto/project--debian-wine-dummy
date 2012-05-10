all: depends
	equivs-build wine

depends:
	@if [ -x /usr/bin/equivs-build ]; then \
	    : ; \
	else \
	    echo "[ERROR] run: apt-get install equivs" >&2 ; \
	fi

clean:
	rm -f *.deb

.PHONY: all depends

# End of file
