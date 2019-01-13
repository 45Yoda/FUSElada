 

setup: 
	sudo apt-get install mailutils
	sudo apt-get install postfix
	tar xf fuse-3.4.1.tar.xz
	cp passthrough.c fuse-3.4.1/example/
	mkdir fuse-3.4.1/build
	cd fuse-3.4.1/build/ && meson ..

compile:
	cd fuse-3.4.1/build/ && ninja
	firefox https://mail.google.com/mail/
	cd fuse-3.4.1/example/ &
	gcc -Wall passthrough.c `pkg-config fuse3 --cflags --libs` -o passthrough
	sudo ./passthrough -o allow_other /home/stifler55/Desktop/teste2/

acess:
	cat fuse-3.4.1/build/example/passthrough@exe/passthrough

clean:
	rm -rf fuse-3.4.1 passthrough
