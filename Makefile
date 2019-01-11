 

setup: 
	sudo apt-get install mailutils
	sudo apt-get install postfix
	tar xf fuse-3.4.1.tar.xz
	cp hello.c fuse-3.4.1/example/
	mkdir fuse-3.4.1/build
	cd fuse-3.4.1/build/
	meson ..

compile:
	cd fuse-3.4.1/build/
	ninja
	firefox https://mail.google.com/mail/ &
	./example/hello -f example/hello@exe/

run: 
	cd fuse-3.4.1/build/
	ninja
	firefox https://mail.google.com/mail/ &
	./example/hello -f example/hello@exe/

acess:
	cat fuse-3.4.1/build/example/hello@exe/hello

clean:
	rm -rf fuse-3.4.1
