# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := doubleshot



# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/doubleshot/device_doubleshot.mk)

# Device naming
PRODUCT_DEVICE := doubleshot
PRODUCT_NAME := cm_doubleshot
PRODUCT_BRAND := htc
PRODUCT_MODEL := myTouch_4G_Slide
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_doubleshot BUILD_FINGERPRINT=tmous/htc_doubleshot/doubleshot:4.0.3/IML74K/275847.101:user/release-keys PRIVATE_BUILD_DESC="3.25.401.101 CL275847 release-keys" BUILD_NUMBER=275847
