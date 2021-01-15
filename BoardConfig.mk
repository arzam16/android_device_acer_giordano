# Platform
TARGET_BOARD_PLATFORM := mt8317
TARGET_BOOTLOADER_BOARD_NAME := giordano

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a9

# Bootloader
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_CUSTOM_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS := --base 0x10000000 --pagesize 2048 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --mtk 1
BOARD_CUSTOM_BOOTIMG_MK := device/acer/giordano/bootimg.mk
BOARD_CUSTOM_MKBOOTIMG := mtkbootimg
TARGET_PREBUILT_KERNEL := device/acer/giordano/prebuilt/kernel

# Partition sizes are based on the scatter file of RV05RC05 firmware
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_FLASH_BLOCK_SIZE := 131072

# Memory
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_SUPPRESS_SECURE_ERASE := true

# fstab
TARGET_RECOVERY_FSTAB := device/acer/giordano/recovery/recovery.fstab

# Size optimizations
TW_EXCLUDE_SUPERSU := true
TW_NO_EXFAT := true
BOARD_NEEDS_LZMA_MINIGZIP := true

# Brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 104
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness

# Graphics
TARGET_RECOVERY_PIXEL_FORMAT := "ARGB_8888"
TW_THEME := landscape_mdpi
TW_INCLUDE_FB2PNG := true

# Thermal
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone0/temp

# USB connectivity
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file
TW_HAS_MTP := true
TW_MTP_DEVICE := /dev/mtp_usb

# Device ID
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# Credit
TW_DEVICE_VERSION := by arzamas-16
