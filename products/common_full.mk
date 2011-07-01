# Inherit common SZ stuff
$(call inherit-product, vendor/savagedzen/products/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/AllAudio.mk

# Theme packages
include vendor/savagedzen/products/themes.mk

# Include extra dictionaries for LatinIME
PRODUCT_PACKAGE_OVERLAYS += vendor/savagedzen/overlay/dictionaries

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=BellPhone.ogg
