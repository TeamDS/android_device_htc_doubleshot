$(call inherit-product, device/htc/doubleshot/device_doubleshot.mk)

PRODUCT_RELEASE_NAME := Doubleshot

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_doubleshot BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT="tmous/htc_doubleshot/doubleshot:2.3.4/GRJ22/100058:user/release-keys" PRIVATE_BUILD_DESC="1.45.531.1 CL100058 release-keys"

PRODUCT_NAME := cm_doubleshot
PRODUCT_DEVICE := doubleshot
