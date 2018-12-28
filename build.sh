#!/bin/sh
export USE_CCACHE=1
export CCACHE_DIR=/home/dni/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 100G
. build/envsetup.sh
lunch dot_aio_otfp-userdebug
mka bacon -j32
