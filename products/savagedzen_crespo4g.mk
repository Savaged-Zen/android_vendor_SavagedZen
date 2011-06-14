$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)
$(call inherit-product, vendor/savagedzen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := savagedzen_crespo4g
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo4g
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys" BUILD_NUMBER=121341

# Extra Crespo overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/savagedzen/overlay/crespo4g

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME = Crespo4g

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=SavagedZen(MOD)-$(BUILD_VERSION) \
    ro.modversion=SavagedZen(MOD)-$(BUILD_VERSION)

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing SavagedZen for your MyTouch 4G\nPlease visit us at www.savaged-zen.org\nFollow @SZGIT for the latest SavagedZen updates\n------------------------------------------------\n"

# Add the Torch app
PRODUCT_PACKAGES += Torch


#
# Copy crespo specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/savagedzen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
