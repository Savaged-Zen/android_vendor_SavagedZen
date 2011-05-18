#PRODUCT_MAKEFILES := \
#    $(LOCAL_DIR)/savagedzen_inc.mk \
#    $(LOCAL_DIR)/savagedzen_supersonic.mk \
#    $(LOCAL_DIR)/savagedzen_glacier.mk

#Temporary work around... * cocide
ifeq ($(TARGET_PRODUCT),savagedzen_supersonic)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_supersonic.mk
else ifeq ($(TARGET_PRODUCT),savagedzen_inc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_inc.mk
else ifeq ($(TARGET_PRODUCT),savagedzen_glacier)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_glacier.mk
else ifeq ($(TARGET_PRODUCT),savagedzen_liberty)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/savagedzen_liberty.mk
endif
