#! /bin/bash

printf "\t=========== Building eosio.contracts ===========\n\n"

RED='\033[0;31m'
NC='\033[0m'

CORES=`getconf _NPROCESSORS_ONLN`
mkdir -p build
pushd build &> /dev/null
cmake ../ -DCMAKE_MODULE_PATH=/opt/eosio/lib/cmake/haya -DCMAKE_LINKER=/usr/opt/eosio.cdt/1.6.1/bin/lld
make -j${CORES}
popd &> /dev/null
