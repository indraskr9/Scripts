#!/bin/sh
export USE_CCACHE=1
export CCACHE_DIR=/home/dni/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 100G
. build/envsetup.sh
lunch dot_aio_otfp-userdebug
export KBUILD_BUILD_USER=Indraskr
export KBUILD_BUILD_HOST=indraskr
mka bacon -j32
