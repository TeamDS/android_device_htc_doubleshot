# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := doubleshot

TARGET_BOOTANIMATION_NAME := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/doubleshot/device_doubleshot.mk)

# Device naming
PRODUCT_DEVICE := doubleshot
PRODUCT_NAME := cm_doubleshot
PRODUCT_BRAND := htc
PRODUCT_MODEL := MyTouch 4G Slide
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_doubleshot BUILD_FINGERPRINT=tmous/htc_doubleshot/doubleshot:4.0.3/IML74K/356011.14:user/release-keys PRIVATE_BUILD_DESC="3.32.531.14 CL356011 release-keys" BUILD_NUMBER=356011
