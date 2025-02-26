.PHONY: build

run: .build
	hoblang build-exe main.hob .build/eloong --linker /usr/bin/gcc --link m --link raylib --run

.build:
	mkdir .build
