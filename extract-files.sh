#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

MANUFACTURER=htc
DEVICE=doubleshot

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/bin/akmd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/awb_camera ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/bma150_usr ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/btld ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/cam_ins_spmo ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/charging ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hdmid ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/htc_ebdlogd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/htcbatt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/ipd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/ip ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/load-modem.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/logcat2 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/lsc_camera ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/mpdecision ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/netsharing ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/ser2net ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/sound8x60 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/thermald ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/snd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/snd8k ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/usbnet ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/xbin/wireless_modem ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/agps_rm ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/vpimg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudioalsa.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libacdbloader.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libacdbmapper.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudcal.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libC2D2.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_imx105_default_video.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_imx105_preview.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_imx105_zsl.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_mt9d015_default_video.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_mt9d015_default_zsl.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_mt9d015_preview.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_ov8830_default_video.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_ov8830_preview.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_ov8830_zsl.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_s5k3h1gx_default_video.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_s5k3h1gx_preview.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_s5k3h2yx_default_video.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_s5k3h2yx_hfr.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_s5k3h2yx_preview.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_s5k3h2yx_zsl.so  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudcalwb.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdll.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libganril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libhtc_ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libidl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libkineto.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOpenVG.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboverlay.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libposteffect.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/librilswitch.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwebkitaccel.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/lights.msm8660.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.doubleshot.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#### From Sensation 4.0.1 leak
adb pull /system/lib/egl/eglsubAndroid.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/$MANUFACTURER/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libacdbloader.so:obj/lib/libacdbloader.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libacdbmapper.so:obj/lib/libacdbmapper.so

# All the blobs necessary for doubleshot
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/agps_rm:/system/etc/agps_rm \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/awb_camera:/system/bin/awb_camera \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bma150_usr:/system/bin/bma150_usr \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/btld:/system/bin/btld \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/cam_ins_spmo:/system/bin/cam_ins_spmo \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/charging:/system/bin/charging \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/htc_ebdlogd:/system/bin/htc_ebdlogd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/htcbatt:/system/bin/htcbatt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hdmid:/system/bin/hdmid \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ipd:/system/bin/ipd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ip:/system/bin/ip \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/logcat2:/system/bin/logcat2 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lsc_camera:/system/bin/lsc_camera \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/netmgrd:/system/bin/netmgrd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/netsharing:/system/bin/netsharing \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rmt_storage:/system/bin/rmt_storage \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ser2net:/system/bin/ser2net \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sound8x60:/system/bin/sound8x60 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/load-modem.sh:/system/bin/load-modem.sh \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/mpdecision:/system/bin/mpdecision \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/thermald:/system/bin/thermald \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/snd:/system/bin/snd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/snd8k:/system/bin/snd8k \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/qmuxd:/system/bin/qmuxd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/usbnet:/system/bin/usbnet \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wireless_modem:/system/bin/wireless_modem \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/agps_rm:/system/etc/agps_rm \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudcal.so:/system/lib/libaudcal.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libacdbloader.so:/system/lib/libacdbloader.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libacdbmapper.so:/system/lib/libchromatix_s5k3h2yx_zsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libC2D2.so:/system/lib/libC2D2.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_imx105_default_video.so:/system/lib/libchromatix_imx105_default_video.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_imx105_preview.so:/system/lib/libchromatix_imx105_preview.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_imx105_zsl.so:/system/lib/libchromatix_imx105_zsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_mt9d015_default_video.so:/system/lib/libchromatix_mt9d015_default_video.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_mt9d015_default_zsl.so:/system/lib/libchromatix_mt9d015_default_zsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_mt9d015_preview.so:/system/lib/libchromatix_mt9d015_preview.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_ov8830_default_video.so:/system/lib/libchromatix_ov8830_default_video.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_ov8830_preview.so:/system/lib/libchromatix_ov8830_preview.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_ov8830_zsl.so:/system/lib/libchromatix_ov8830_zsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_s5k3h1gx_default_video.so:/system/lib/libchromatix_s5k3h1gx_default_video.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_s5k3h1gx_preview.so:/system/lib/libchromatix_s5k3h1gx_preview.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_s5k3h2yx_default_video.so:/system/lib/libchromatix_s5k3h2yx_default_video.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_s5k3h2yx_hfr.so:/system/lib/libchromatix_s5k3h2yx_hfr.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_s5k3h2yx_preview.so:/system/lib/libchromatix_s5k3h2yx_preview.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_s5k3h2yx_zsl.so:/system/lib/libchromatix_s5k3h2yx_zsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudcalwb.so:/system/lib/libchromatix_s5k3h2yx_zsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdiag.so:/system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdll.so:/system/lib/libdll.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsutils.so:/system/lib/libdsutils.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libidl.so:/system/lib/libidl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/librilswitch.so:/system/lib/librilswitch.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwebkitaccel.so:/system/lib/libwebkitaccel.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libganril.so:/system/lib/libganril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libkineto.so:/system/lib/libkineto.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboverlay.so:/system/lib/liboverlay.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libposteffect.so:/system/lib/libposteffect.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOpenVG.so:/system/lib/libOpenVG.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqdp.so:/system/lib/libqdp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lights.msm8660.so:/system/lib/hw/lights.msm8660.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.doubleshot.so:/system/lib/hw/sensors.doubleshot.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/vpimg:/system/etc/vpimg
EOF

./setup-makefiles.sh
