
# Note: the following lines need to stay at the beginning so that it can
# take priority  and override the rules it inherit from other mk files
# see copy file rules in core/Makefile

PRODUCT_COPY_FILES += \
    device/brobwind/rpi3/boot/kernel-v4.14/vmlinuz-4.14.61-v8+:kernel

PRODUCT_COPY_FILES += \
    device/brobwind/rpi3/mkshrc:system/etc/mkshrc \
    device/brobwind/rpi3/vndk/ld.config.28.txt:system/etc/ld.config.28.txt

USE_OEM_TV_APP := true

# Inherit base TV
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit common Android Go 512M.
$(call inherit-product, build/target/product/go_defaults_512.mk)

# Inherit device specific
$(call inherit-product, device/brobwind/rpi3/device.mk)

PRODUCT_NAME := rpi3
PRODUCT_DEVICE := rpi3
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := brobwind
PRODUCT_MODEL := RPI 3 Android TV

PRODUCT_AAPT_PREF_CONFIG := tvdpi
PRODUCT_CHARACTERISTICS := tv
PRODUCT_LOCALES := en_US zh_CN zh_HK zh_TW

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_SHIPPING_API_LEVEL := 28

DEVICE_PACKAGE_OVERLAYS +:= \
    device/brobwind/rpi3/overlay 

PRODUCT_PACKAGES += \
    TvSampleLeanbackLauncher \
    Chrome \
    RPiTool \
    RpLauncher 

# It takes too much GPU memory
PRODUCT_COPY_FILES += \
    device/brobwind/rpi3/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.isa.arm.variant=cortex-a53 \
    debug.hwui.use_partial_updates=0 \
    ro.frp.pst=/dev/block/platform/soc/3f202000.mmc/by-name/frp \
    ro.sf.lcd_density=160 \
    ro.opengles.version=131072 \

