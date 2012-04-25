#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/doubleshot/overlay

# GPS and Light
PRODUCT_PACKAGES += \
    gps.doubleshot \
    lights.doubleshot

# Torch
PRODUCT_PACKAGES += \
    Torch

## The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# Wifi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
	device/htc/doubleshot/prebuilt/init:root/init \
	device/htc/doubleshot/ramdisk/init.doubleshot.rc:root/init.doubleshot.rc \
    device/htc/doubleshot/ramdisk/init.doubleshot.usb.rc:root/init.doubleshot.usb.rc \
	device/htc/doubleshot/ramdisk/ueventd.doubleshot.rc:root/ueventd.doubleshot.rc

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/prebuilt/init:recovery/root/init \
    device/htc/doubleshot/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/doubleshot/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/doubleshot/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/doubleshot/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/doubleshot/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt

# Some misc configeration files
PRODUCT_COPY_FILES += \
	device/htc/doubleshot/vold.fstab:system/etc/vold.fstab

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
	device/htc/doubleshot/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/htc/doubleshot/keylayout/doubleshot-keypad.kl:system/usr/keylayout/doubleshot-keypad.kl \
	device/htc/doubleshot/keylayout/doubleshot-keypad-v0.kl:system/usr/keylayout/doubleshot-keypad-v0.kl \
	device/htc/doubleshot/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	device/htc/doubleshot/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/htc/doubleshot/keychars/doubleshot-keypad.kcm:system/usr/keychars/doubleshot-keypad.kcm \
	device/htc/doubleshot/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
	device/htc/doubleshot/keychars/doubleshot-keypad-v0.kcm.bin:system/usr/keychars/doubleshot-keypad-v0.kcm.bin \
	device/htc/doubleshot/keychars/doubleshot-keypad.kcm.bin:system/usr/keychars/doubleshot-keypad.kcm.bin \
	device/htc/doubleshot/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
	device/htc/doubleshot/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin

# Input device config
PRODUCT_COPY_FILES += \
	device/htc/doubleshot/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	device/htc/doubleshot/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# HTC BT Audio tune
PRODUCT_COPY_FILES += device/htc/doubleshot/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# QC thermald config
PRODUCT_COPY_FILES += device/htc/doubleshot/configs/thermald.conf:system/etc/thermald.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/doubleshot/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/doubleshot/dsp/AIC3254_REG_DualMic_XB.csv:system/etc/AIC3254_REG_DualMic_XB.csv \
    device/htc/doubleshot/dsp/AIC3254_REG_DualMic_XC.csv:system/etc/AIC3254_REG_DualMic_XC.csv \
    device/htc/doubleshot/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/doubleshot/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/doubleshot/dsp/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/htc/doubleshot/dsp/HP_Video.csv:system/etc/HP_Video.csv \
    device/htc/doubleshot/dsp/SPK_Combination.csv:system/etc/SPK_Combination.csv \
    device/htc/doubleshot/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/doubleshot/dsp/TPA2051_CFG_XB.csv:system/etc/TPA2051_CFG_XB.csv \
    device/htc/doubleshot/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/htc/doubleshot/dsp/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/doubleshot/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/doubleshot/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/doubleshot/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/doubleshot/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/doubleshot/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

## misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/htc/doubleshot/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
	device/htc/doubleshot/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/doubleshot/doubleshot-vendor.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/doubleshot/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/doubleshot/media_htcaudio.mk)

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)
