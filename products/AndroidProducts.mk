#PRODUCT_MAKEFILES := \
#    $(LOCAL_DIR)/evervolv_inc.mk \
#    $(LOCAL_DIR)/evervolv_supersonic.mk \
#    $(LOCAL_DIR)/evervolv_heroc.mk \
#    $(LOCAL_DIR)/evervolv_glacier.mk

#Temporary work around... * cocide
ifeq ($(TARGET_PRODUCT),savagedzen_supersonic)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_supersonic.mk
else ifeq ($(TARGET_PRODUCT),savagedzen_inc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_inc.mk
#else ifeq ($(TARGET_PRODUCT),savagedzen_speedy)
#  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_speedy.mk
#else ifeq ($(TARGET_PRODUCT),savagedzen_vision)
#  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_vision.mk
#else ifeq ($(TARGET_PRODUCT),savagedzen_heroc)
#  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_heroc.mk
else ifeq ($(TARGET_PRODUCT),savagedzen_glacier)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_glacier.mk
#else ifeq ($(TARGET_PRODUCT),savagedzen_passion)
#  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_passion.mk
#else ifeq ($(TARGET_PRODUCT),savagedzen_harmony)
#  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_harmony.mk
endif
