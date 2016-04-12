help:
	@echo "How to call this makefile"
	@echo "make"

all: 2015-05-05-raspbian-wheezy.zip.sha1 2015-05-05-raspbian-wheezy.zip
	sha1sum -c 2015-05-05-raspbian-wheezy.zip.sha1


2015-05-05-raspbian-wheezy.zip.sha1:
	echo -n "2015-05-05-raspbian-wheezy.zip  cb799af077930ff7cbcfaa251b4c6e25b11483de" > $@

2015-05-05-raspbian-wheezy.zip:
	wget https://downloads.raspberrypi.org/raspbian/images/raspbian-2015-05-07/2015-05-05-raspbian-wheezy.zip

clean:
	rm -f 2015-05-05-raspbian-wheezy.zip
	rm -f 2015-05-05-raspbian-wheezy.zip.sha1

.PHONY: clean help all
