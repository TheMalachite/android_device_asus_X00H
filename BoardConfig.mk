#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
TARGET_USES_CACHE_AS_VENDOR := true

# Inherit from msm8937-common
include device/asus/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00H

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := X00H,ASUS_X00HD

# Build
BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 320

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := X00H_defconfig

# VNDK
BOARD_VNDK_RUNTIME_DISABLE := true

# Inherit from the proprietary version
include vendor/asus/X00H/BoardConfigVendor.mk
