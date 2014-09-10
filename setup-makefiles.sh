#!/bin/sh

set -e

export DEVICE=ms013g
export VENDOR=samsung
./../../$VENDOR/msm8226-common/setup-makefiles.sh $@
