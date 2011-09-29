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

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_COPY_FILES += \
    device/htc/doubleshot/init.rc:root/init.rc \
    device/htc/doubleshot/init.doubleshot.rc:root/init.doubleshot.rc \
    device/htc/doubleshot/ueventd.doubleshot.rc:root/ueventd.doubleshot.rc

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/doubleshot/doubleshot-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

DEVICE_PACKAGE_OVERLAYS += device/htc/doubleshot/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    librs_jni \
    gralloc.msm8660 \
    copybit.msm8660 \
    overlay.default \
    lights.msm8660 \
    liboverlay \

    # libOmxCore \
    # libOmxVenc \
    # libOmxVdec \

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/doubleshot/keychars/doubleshot-keypad-v0.kcm.bin:system/usr/keychars/doubleshot-keypad-v0.kcm.bin \
    device/htc/doubleshot/keychars/doubleshot-keypad.kcm.bin:system/usr/keychars/doubleshot-keypad.kcm.bin \
    device/htc/doubleshot/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/doubleshot/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/doubleshot/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/doubleshot/keylayout/BT_HID.kl:system/usr/keylayout/BT_HID.kl \
    device/htc/doubleshot/keylayout/doubleshot-keypad-v0.kl:system/usr/keylayout/doubleshot-keypad-v0.kl \
    device/htc/doubleshot/keylayout/doubleshot-keypad.kl:system/usr/keylayout/doubleshot-keypad.kl \
    device/htc/doubleshot/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/doubleshot/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/doubleshot/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/firmware/BCM4329B1_002.002.023.0589.0632.hcd:system/etc/firmware/BCM4329B1_002.002.023.0589.0632.hcd \
    device/htc/doubleshot/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/htc/doubleshot/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin \
    device/htc/doubleshot/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/htc/doubleshot/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/doubleshot/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw
    
# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/doubleshot/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/doubleshot/dsp/AIC3254_REG_DualMic_XB.csv:system/etc/AIC3254_REG_DualMic_XB.csv \
    device/htc/doubleshot/dsp/AIC3254_REG_DualMic_XC.csv:system/etc/AIC3254_REG_DualMic_XC.csv \
    device/htc/doubleshot/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/doubleshot/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
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
    device/htc/doubleshot/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/doubleshot/prebuilt/snd:system/bin/snd \
    device/htc/doubleshot/prebuilt/snd8k:system/bin/snd8k

# Wifi Module
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/modules/bcm4329.ko:system/lib/modules/bcm4329.ko

# Wifi Calling
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/prebuilt/MS-HTCDP-KNT20-02-A0-GB.apk:/system/app/MS-HTCDP-KNT20-02-A0-GB.apk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# device uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_COPY_FILES += \
    device/htc/doubleshot/vold.fstab:system/etc/vold.fstab


$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# media config xml file
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/media_profiles.xml:system/etc/media_profiles.xml

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/doubleshot/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# media profiles and capabilities spec
$(call inherit-product, device/htc/doubleshot/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/doubleshot/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_NAME := HTC Doubleshot
PRODUCT_DEVICE := doubleshot
PRODUCT_MODEL := myTouch_4G_Slide
PRODUCT_MANUFACTURER := HTC
