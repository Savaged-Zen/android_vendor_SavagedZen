$(call inherit-product, vendor/savagedzen/products/buildversion.mk)


# Generic SavagedZen product
ROM_NAME := SavagedZenMOD
PRODUCT_NAME := savagedzen
PRODUCT_BRAND := savagedzen
PRODUCT_DEVICE := generic


PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=BellPhone.ogg


# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# SavagedZen specific product packages
PRODUCT_PACKAGES += \
    SZParts \
    SZWallpapers \
    SZStats \
    FileManager \
    Launcher2 \
    Terminal

# Extra tools in SavagedZen
PRODUCT_PACKAGES += \
    openvpn

# Copy over the SZ Text to the device
PRODUCT_COPY_FILES += \
      vendor/savagedzen/CHANGELOG.mkdn:system/etc/CHANGELOG-SZ.txt \
      vendor/savagedzen/CREDITS.mkdn:system/etc/CREDITS-SZ.txt

# T-Mobile theme engine
include vendor/savagedzen/products/themes_common.mk

# Theme packages
include vendor/savagedzen/products/themes.mk

# Copy over the BASH for VDD profiles to the device
PRODUCT_COPY_FILES += \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/800SZ.sh:system/etc/vdd_profiles/800SZ.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/825SZ.sh:system/etc/vdd_profiles/825SZ.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/850SZ.sh:system/etc/vdd_profiles/850SZ.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/875SZ.sh:system/etc/vdd_profiles/875SZ.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/900SZ.sh:system/etc/vdd_profiles/900SZ.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/925SZ.sh:system/etc/vdd_profiles/925SZ.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/950SZ.sh:system/etc/vdd_profiles/950SZ.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/975SZ.sh:system/etc/vdd_profiles/975SZ.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/800SVS.sh:system/etc/vdd_profiles/800SVS.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/825SVS.sh:system/etc/vdd_profiles/825SVS.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/850SVS.sh:system/etc/vdd_profiles/850SVS.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/875SVS.sh:system/etc/vdd_profiles/875SVS.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/900SVS.sh:system/etc/vdd_profiles/900SVS.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/925SVS.sh:system/etc/vdd_profiles/925SVS.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/950SVS.sh:system/etc/vdd_profiles/950SVS.sh \
      vendor/savagedzen/prebuilt/common/etc/vdd_profiles/975SVS.sh:system/etc/vdd_profiles/975SVS.sh



# Common SavagedZen overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/savagedzen/overlay/common

# Bring in some audio files
#include frameworks/base/data/sounds/AudioPackage4.mk
#include frameworks/base/data/sounds/AudioPackage5.mk

PRODUCT_COPY_FILES += \
    vendor/savagedzen/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/savagedzen/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/savagedzen/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/savagedzen/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/savagedzen/prebuilt/common/etc/profile:system/etc/profile \
    vendor/savagedzen/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/savagedzen/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/savagedzen/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/savagedzen/prebuilt/common/etc/init.d/04modules:system/etc/init.d/04modules \
    vendor/savagedzen/prebuilt/common/etc/init.d/20userinit:system/etc/init.d/20userinit \
    vendor/savagedzen/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/savagedzen/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/savagedzen/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/savagedzen/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/savagedzen/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/savagedzen/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/savagedzen/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/savagedzen/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh



#Temporarily use this prebuilt Superuser.apk
PRODUCT_COPY_FILES += \
    vendor/savagedzen/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

