LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),giordano)
	include $(call all-makefiles-under,$(LOCAL_PATH))
endif
