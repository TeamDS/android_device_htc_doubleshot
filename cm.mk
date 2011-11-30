# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_RELEASE_NAME := Doubleshot

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/htc/doubleshot/device_doubleshot.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_doubleshot BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT="tmous/htc_doubleshot/doubleshot:2.3.7/GWK74:user/release-keys" PRIVATE_BUILD_DESC="doubleshot-user 2.3.7 GWK74 release-keys"

PRODUCT_NAME := cm_doubleshot
PRODUCT_RELEASE_NAME := Doubleshot
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cm/config/common_versions.mk
PRODUCT_DEVICE := doubleshot
