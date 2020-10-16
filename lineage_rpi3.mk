
# Note: the following lines need to stay at the beginning so that it can
# take priority  and override the rules it inherit from other mk files
# see copy file rules in core/Makefile

PRODUCT_COPY_FILES += \
    device/brobwind/rpi3/boot/kernel-v4.14/vmlinuz-4.14.61-v8+:kernel

PRODUCT_COPY_FILES += \
    device/brobwind/rpi3/mkshrc:system/etc/mkshrc \
    device/brobwind/rpi3/vndk/ld.config.28.txt:system/etc/ld.config.28.txt

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
