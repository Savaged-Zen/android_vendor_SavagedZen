# Inherit AOSP device configuration for liberty.
$(call inherit-product, device/htc/liberty/liberty.mk)
$(call inherit-product, vendor/savagedzen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/savagedzen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := savagedzen_liberty
PRODUCT_BRAND := htc
PRODUCT_DEVICE := liberty
PRODUCT_MODEL := Liberty
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_liberty BUILD_ID=GRI40 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/passion/passion:2.3.3/GRI40/102588:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.3 GRI40 102588 release-keys"

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing SavagedZen(MOD)\nPlease visit us at \nwww.Savaged-Zen.org \nFollow @SZGIT for the latest SavagedZen updates\nGet the latest rom at mirror.savaged-zen.net\n------------------------------------------------\n"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/savagedzen/prelink-linux-arm-msm722x.map

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Liberty

BUILD_VERSION_MAIN := RC4

#BUILD_VERSION := $(BUILD_VERSION_MAIN)-$(PRODUCT_CODENAME)
BUILD_VERSION := $(BUILD_VERSION_MAIN)-$(PRODUCT_CODENAME)-Rendition-$(shell date +%m%d%Y)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=SavagedZen(MOD)-$(BUILD_VERSION) \
    ro.modversion=SavagedZen(MOD)-$(BUILD_VERSION) \

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Broadcom FM radio
$(call inherit-product, vendor/savagedzen/products/bcm_fm_radio.mk)

# Copy liberty specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/savagedzen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
