$(call inherit-product, device/htc/inc/inc.mk)
$(call inherit-product, vendor/savagedzen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := savagedzen_inc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Incredible
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRI40 PRODUCT_NAME=inc BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.2/FRF91/264707:user/release-keys PRODUCT_BRAND=verizon_wwe TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="3.26.605.1 CL264707 release-keys" PRODUCT_MODEL=ADR6300 PRODUCT_MANUFACTURER=HTC
PRODUCT_PROPERTY_OVERRIDES += ro.product.version=3.26.605.1


# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Inc

BUILD_VERSION_MAIN := RC3

#BUILD_VERSION := $(BUILD_VERSION_MAIN)-$(PRODUCT_CODENAME)
BUILD_VERSION := $(BUILD_VERSION_MAIN)-$(PRODUCT_CODENAME)-Rendition-$(shell date +%m%d%Y)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=SavagedZen(MOD)-$(BUILD_VERSION) \
    ro.modversion=SavagedZen(MOD)-$(BUILD_VERSION) \

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing SavagedZen for your Droid Incredible\nFollow @SZGIT for the latest SavagedZen updates\nGet the latest rom at mirror.savaged-zen.com\n------------------------------------------------\n"

# Extra inc overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/savagedzen/overlay/inc

# Copy hdpi specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/savagedzen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
