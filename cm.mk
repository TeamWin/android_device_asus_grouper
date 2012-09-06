# Release name
PRODUCT_RELEASE_NAME := grouper

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grouper
PRODUCT_NAME := cm_grouper
PRODUCT_BRAND := asus
PRODUCT_MODEL := grouper
PRODUCT_MANUFACTURER := asus
