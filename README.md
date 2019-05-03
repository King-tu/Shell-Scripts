# Shell-Scripts
Collections of Shell Scripts.
</br>
Shell脚本编程。
</br>

yum install -y gcc gcc-c++ boost boost-devel cmake make cmake3
yum install glog glog-devel kyotocabinet kyotocabinet-devel marisa-devel yaml-cpp yaml-cpp-devel gtest gtest-devel libnotify zlib zlib-devel gflags gflags-devel leveldb leveldb-devel libnotify-devel ibus-devel
cd /usr/src

# install opencc
curl -L https://github.com/BYVoid/OpenCC/archive/ver.1.0.5.tar.gz | tar zx
cd OpenCC-ver.1.0.5/
make
make install
ln -s /usr/lib/libopencc.so /usr/lib64/libopencc.so

cd /usr/src
git clone --recursive https://github.com/rime/ibus-rime.git

cd /usr/src/ibus-rime
./install.sh

# checkout master & pull
cd /usr/src/ibus-rime/plum/
git checkout master
git pull origin master

cd /usr/src/ibus-rime
# skip submodule init
sed -i 's/git submodule update --init/#git submodule update --init/g' ./install.sh
./install.sh
