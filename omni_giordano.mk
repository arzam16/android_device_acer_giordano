# Inherit some common stuff.
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit device configuration
$(call inherit-product, device/acer/giordano/giordano.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := giordano
PRODUCT_NAME := omni_giordano
PRODUCT_BRAND := Acer
PRODUCT_MODEL := Iconia B1–A71
PRODUCT_MANUFACTURER := Acer
