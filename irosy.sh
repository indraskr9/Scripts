#!/bin/sh
. build/envsetup.sh
lunch dot_rosy-userdebug
mka bacon -j9
