$(call inherit-product, device/htc/glacier/glacier.mk)
$(call inherit-product, vendor/savagedzen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/savagedzen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := savagedzen_glacier
PRODUCT_BRAND := tmobile
PRODUCT_DEVICE := glacier
PRODUCT_MODEL := HTC Glacier
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_glacier BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=tmobile/htc_glacier/glacier/glacier:2.2.1/FRG83/277036:user/release-keys PRIVATE_BUILD_DESC="1.17.531.2 CL277036 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME = Glacier

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.romversion=SavagedZen(MOD)-$(BUILD_VERSION) \
    ro.modversion=SavagedZen(MOD)-$(BUILD_VERSION) 

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing SavagedZen for your MyTouch 4G\nPlease visit us at www.savaged-zen.org\nFollow @SZGIT for the latest SavagedZen updates\n------------------------------------------------\n"

# Extra glacier overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/savagedzen/overlay/glacier

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Copy hdpi specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/savagedzen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
