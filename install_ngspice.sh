sudo dnf update
#yum

sudo dnf install -y gcc-c++ make readline-devel zlib-devel bison flex
#yum
#sudo dnf install -y gcc-c++ libX11-devel libXaw-devel readline-devel libtool automake autoconf gawk tcl-devel tk-devel graphviz-devel xsltproc python3-devel

git clone https://github.com/ngspice/ngspice.git
#wget https://sourceforge.net/projects/ngspice/files/
#tar -xvzf ngspice-41.tar.gz
#cd ngspice-41

cd ngspice
./autogen.sh
./configure
#./configure --enable-xspice --enable-cider --enable-openmp

make
sudo make install
make clean
ngspice --version
