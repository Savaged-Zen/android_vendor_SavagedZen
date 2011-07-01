# Inherit AOSP device configuration for generic target
$(call inherit-product, build/target/product/full.mk)

# Inherit some common savaged-zen stuff.
$(call inherit-product, vendor/savagedzen/products/common_full.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := savagedzen_generic
PRODUCT_BRAND := savagedzen
PRODUCT_DEVICE := generic
PRODUCT_MODEL := Savaged-Zen
PRODUCT_MANUFACTURER := Savaged-Zen

#
# Move dalvik cache to data partition where there is more room to solve startup problems
#
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.dexopt-data-only=1

# Generic modversion
ro.modversion=SavagedZen(MOD)-$(BUILD_VERSION)
