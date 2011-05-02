$(call inherit-product, device/htc/supersonic/supersonic.mk)
$(call inherit-product, vendor/savagedzen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := savagedzen_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRJ22 PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic/supersonic:2.2/FRF91/294884:user/release-keys PRIVATE_BUILD_DESC="3.70.651.1 CL294884 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Evo4G

BUILD_VERSION_MAIN := RC4

#BUILD_VERSION := $(BUILD_VERSION_MAIN)-$(PRODUCT_CODENAME)
BUILD_VERSION := $(BUILD_VERSION_MAIN)-$(PRODUCT_CODENAME)-Rendition-$(shell date +%m%d%Y)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=SavagedZen(MOD)-$(BUILD_VERSION) \
    ro.modversion=SavagedZen(MOD)-$(BUILD_VERSION) \

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing SavagedZen(MOD)\nPlease visit us at \nwww.Savaged-Zen.org \nFollow @SZGIT for the latest SavagedZen updates\nGet the latest rom at mirror.savaged-zen.net\n------------------------------------------------\n"

# Extra Supersonic overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/savagedzen/overlay/supersonic

# Add the Torch app
PRODUCT_PACKAGES += Torch


# Copy hdpi specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
   vendor/savagedzen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
