#!/bin/bash

DEST=${PWD}/install-libunwind
pushd llvm_build_final/projects/libunwind
  make install DESTDIR=${DEST}
popd
pushd ${DEST}/${PWD}/prefix
  cp -Rf * ${PREFIX}
popd