all: mk_chroot mk_install_cmake mk_install_mingw mk_install_git mk_install_bmc_src mk_install_boost

mk_chroot:
	echo "building chroot"
	./mk_chroot.sh && touch mk_chroot

mk_install_cmake:
	chroot chroot apt install -y cmake && touch mk_install_cmake

mk_install_mingw:
	chroot chroot apt install -y g++-mingw-w64 && touch mk_install_mingw


mk_install_git:
	chroot chroot apt install -y git && touch mk_install_git
	

mk_install_bmc_src:
	git clone https://github.com/mlang/bmc chroot/bmc && cd chroot/bmc&& git submodule update --init --recursive&& cd ../.. && touch mk_install_bmc_src


mk_install_boost:
	mkdir -p dl; mkdir -p chroot/src/; cd dl; wget "https://dl.bintray.com/boostorg/release/1.72.0/source/boost_1_72_0.tar.gz"
	cd chroot/src; tar xvzf ../../dl/boost_1_72_0.tar.gz && touch ../../mk_install_boost
		

clean:
	rm -rf chroot
	rm -rf dl
	rm -f mk_install*
	rm -f mk_chroot
	
