USE_CAMERA_STUB := true

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

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_USES_ADRENO_200 := true

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcm4329/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/proc/calibration iface_name=wlan"
BOARD_WLAN_DEVICE_REV            := bcm4329
WIFI_BAND                        := 802_11_ABG

# Audio 
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := false
BOARD_USES_AUDIO_LEGACY := true

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Define egl.cfg location
BOARD_EGL_CFG := device/htc/doubleshot/egl.cfg

COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_GRALLOC_BUFFERS

BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_GPS := true

BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x40400000
BOARD_PAGE_SIZE := 2048

#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := doubleshot
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

TARGET_BOOTLOADER_BOARD_NAME := doubleshot
TARGET_PREBUILT_KERNEL := device/htc/doubleshot/kernel
TARGET_PROVIDES_INIT_RC := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_NO_RADIOIMAGE := true

#TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

TARGET_RECOVERY_INITRC := device/htc/doubleshot/recovery/init.rc
BOARD_CUSTOM_GRAPHICS:= ../../../device/htc/doubleshot/recovery/graphics.c

###########################################
## This is all stuff not currently in ICS #
###########################################

## Previously used in gingerbread for graphics
#TARGET_USES_OVERLAY := true
#TARGET_HAVE_TSLIB := false
#BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true
#TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#TARGET_USES_SF_BYPASS := true
#TARGET_USES_C2D_COMPOSITION := true
#BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

## Previously used in gingerbread for camera
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_HAVE_HTC_FFC := true

## Previously used in gingerbread for qcom specific
#TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

## Previously used in gingerbread for GPS.
#BOARD_USES_GPSSHIM := false

## Previously used in gingerbread.  We don't have /sys/class/usb_composite/rndis
#BOARD_CUSTOM_USB_CONTROLLER := ../../device/htc/doubleshot/UsbController.cpp

## Previously used in gingerbread.  For RIL.
#BOARD_USE_NEW_LIBRIL_HTC := true
#TARGET_PROVIDES_LIBRIL := vendor/htc/doubleshot/proprietary/libril.so

## Previously used in gingerbread.  For storage mapping.
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
#BOARD_USES_MMCUTILS := true
#BOARD_HAS_NO_MISC_PARTITION := true

## Previously used in gingerbread.  Misc.
#BOARD_NEEDS_CUTILS_LOG := true

## We don't have HDMI in the kernel.  We do have TV Out ability though...
#TARGET_HAVE_HDMI_OUT := true
