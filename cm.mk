## Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/config/common.mk)
$(call inherit-product, vendor/aokp/config/common_versions.mk)


# Inherit device configuration
$(call inherit-product, device/lge/mako/full_mako.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mako
PRODUCT_NAME := aokp_mako
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
