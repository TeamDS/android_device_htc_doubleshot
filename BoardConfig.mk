USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/htc/doubleshot/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/htc/doubleshot/include 

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := doubleshot
TARGET_HAVE_HDMI_OUT := true
TARGET_USES_OVERLAY := true
TARGET_NO_RADIOIMAGE := true
TARGET_HAVE_TSLIB := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_CUSTOM_USB_CONTROLLER := ../../device/htc/doubleshot/UsbController.cpp


# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

# Audio 
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := false

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Define egl.cfg location
BOARD_EGL_CFG := device/htc/doubleshot/egl.cfg

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_HAVE_HTC_FFC := true

BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
BOARD_USES_ADRENO_200 := true

BOARD_USES_SF_BYPASS := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_USES_OVERLAY := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_C2D_COMPOSITION := true

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

TARGET_BOOTLOADER_BOARD_NAME := doubleshot

BOARD_USE_NEW_LIBRIL_HTC := true

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x40400000
BOARD_PAGE_SIZE := 2048

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := doubleshot
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_USES_GPSSHIM := false


# Define Prebuilt kernel locations
TARGET_PREBUILT_KERNEL := device/htc/doubleshot/kernel

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


TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

TARGET_RECOVERY_INITRC := device/htc/doubleshot/recovery/init.rc
BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/doubleshot/recovery/graphics.c

BOARD_NEEDS_CUTILS_LOG := true
