#!/bin/bash
ST_SRC=".."

cp -i config.h $ST_SRC
cp -i st.desktop $ST_SRC

pushd $ST_SRC
for i in ~1/*.patch; do
	patch -Nsr - < $i
done
popd
