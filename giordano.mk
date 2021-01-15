LOCAL_PATH := device/acer/giordano

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/recovery/recovery.fstab:root/recovery.fstab \
$(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.adb.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
persist.sys.usb.config=mtp,adb

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := giordano
