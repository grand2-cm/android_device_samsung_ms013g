#!/bin/sh

set -e

export VENDOR=samsung
export DEVICE=ms013g
./../../$VENDOR/msm8226-common/extract-files.sh $@
