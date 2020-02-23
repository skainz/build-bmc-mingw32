all: mk_chroot mk_install_bmc_src mk_install_boost mk_install_xerces

mk_chroot:
	echo "building chroot"
	./mk_chroot.sh && touch mk_chroot

	

mk_install_bmc_src:
	git clone https://github.com/mlang/bmc chroot/bmc && cd chroot/bmc&& git submodule update --init --recursive&& cd ../.. && touch mk_install_bmc_src


mk_install_boost:
	mkdir -p dl; mkdir -p chroot/src/; cd dl; wget "https://dl.bintray.com/boostorg/release/1.72.0/source/boost_1_72_0.tar.gz"
	cd chroot/src; tar xvzf ../../dl/boost_1_72_0.tar.gz && touch ../../mk_install_boost
		

mk_install_xerces:
	mkdir -p dl; mkdir -p chroot/src/; cd dl; wget "https://archive.apache.org/dist/xml/xerces-c/Xerces-C_3_0_1/sources/xerces-c-3.0.1.tar.gz"
	cd chroot/src; tar xvzf ../../dl/xerces-c-3.0.1.tar.gz
	chroot chroot  /scripts/build_xerces.sh
	touch mk_install_xerces	



clean:
	rm -rf chroot
	rm -rf dl
	rm -f mk_install*
	rm -f mk_chroot
	
