all:
	mkdir -p build
	cd build && cmake -DCMAKE_INSTALL_PREFIX="" ../ && $(MAKE) DESTDIR=../ install

clean:
	@echo cleaning
	(cd build && $(MAKE) clean) || :
	rm -rf ./build ./bin
