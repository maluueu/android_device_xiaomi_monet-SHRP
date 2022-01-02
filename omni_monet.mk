DEVICE_PATH := device/xiaomi/monet

$(call inherit-product, device/xiaomi/monet/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := monet
PRODUCT_NAME := omni_monet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10 Lite 5G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := Xiaomi Mi 10 Lite 5G

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
