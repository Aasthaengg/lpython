#!/bin/bash

set -e
set -x

lfortran_version=$1
dest=lfortran-$lfortran_version

mkdir $dest
cp -r src cmake examples CMakeLists.txt README.md LICENSE $dest
mkdir dist
tar czf dist/$dest.tar.gz $dest
