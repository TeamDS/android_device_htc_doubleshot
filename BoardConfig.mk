# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/doubleshot/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := doubleshot

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x40400000
BOARD_PAGE_SIZE := 2048

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := doubleshot

# cat /proc/emmc
# dev:        size     erasesize name
# mmcblk0p31: 000ffa00 00000200 "misc"
# mmcblk0p21: 00fffc00 00000200 "recovery"
# mmcblk0p20: 01000000 00000200 "boot"
# mmcblk0p22: 31fffc00 00000200 "system"
# mmcblk0p24: 077fde00 00000200 "cache"
# mmcblk0p23: 4aabc400 00000200 "userdata"
# mmcblk0p27: 01400000 00000200 "devlog"
# mmcblk0p29: 00040000 00000200 "pdata"
# mmcblk0p17: 02800000 00000200 "radio"
# mmcblk0p19: 01000000 00000200 "adsp"
# mmcblk0p18: 007ffa00 00000200 "radio_config"
# mmcblk0p25: 00400000 00000200 "modem_st1"
# mmcblk0p26: 00400000 00000200 "modem_st2"

TARGET_NO_RADIOIMAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/doubleshot/recovery/graphics.c
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

TARGET_PREBUILT_KERNEL := device/htc/doubleshot/prebuilt/kernel

TARGET_RECOVERY_INITRC := device/htc/doubleshot/recovery/init.rc
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
