## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)
 
# Release name
PRODUCT_RELEASE_NAME := CROSS_LTE
 
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/TCT/CROSS_LTE/CROSS_LTE.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CROSS_LTE
PRODUCT_NAME := cm_CROSS_LTE
PRODUCT_BRAND := TCL
PRODUCT_MODEL := TCL P728M
PRODUCT_MANUFACTURER := TCL
