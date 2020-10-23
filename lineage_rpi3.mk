TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 720

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# $(call inherit-product, device/brobwind/rpi3/mini_common.mk)
$(call inherit-product, device/brobwind/rpi3/rpi3.mk)

PRODUCT_DEVICE := rpi3
PRODUCT_NAME := lineage_rpi3
PRODUCT_BRAND := Raspberry
PRODUCT_MODEL := Raspberry Pi 3 TV
PRODUCT_MANUFACTURER := Raspberry
PRODUCT_RELEASE_NAME := Raspberry Pi 3 TV

PRODUCT_LOCALES := en_US
