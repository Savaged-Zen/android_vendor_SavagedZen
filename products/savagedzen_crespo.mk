# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/savagedzen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/savagedzen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := savagedzen_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys" BUILD_NUMBER=121341

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/savagedzen/overlay/crespo

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME = Crespo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=SavagedZen(MOD)-$(BUILD_VERSION) \
    ro.modversion=SavagedZen(MOD)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing SavagedZen for your Nexus S\nPlease visit us at www.savaged-zen.org\nFollow @SZGIT for the latest SavagedZen updates\n------------------------------------------------\n"


#
# Copy crespo specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/savagedzen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
