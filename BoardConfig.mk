#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/ms013g

# Assert
TARGET_OTA_ASSERT_DEVICE := ms013g

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
TARGET_KERNEL_CONFIG := VARIANT_DEFCONFIG=msm8226-sec_ms013g_eur_defconfig msm8226-sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig 

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_msm8226.c

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1866465280
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5555010560

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.qcom

# inherit from the proprietary version
-include vendor/samsung/ms013g/BoardConfigVendor.mk
