.PHONY: build link

# too bad but it is example)
HOBLANG=../hoblang/.build/hoblang
LINKER=gcc

link: build
	$(LINKER) .build/eloong.o -L../libs -lraylib -lc -lm -ldl -o .build/eloong

build: .build
	$(HOBLANG) compile main.hob .build/eloong.o

.build:
	mkdir .build
