all: install

install: ant
	cd ./src; $(MAKE) install

installles: antles
	cd ./src; $(MAKE) install

installmtf: antmtf

config: FRC
	cd ./config; $(MAKE)

clean: 
	cd ./src; $(MAKE) clean

clientdir: 
	mkdir ./client
	mkdir ./client/include	

nodebug:
	$(MAKE) DEBUG=-O install

superclean: clean
	@rm -f bin/*
	@rm -f include/*
	@rm -f lib/*
	@rm -f javalib/*

rebuild: clean install

ant: FRC
	@ant

antles: FRC
	@ant les-jar

antmtf: FRC
	@ant mtf-jar

FRC:
