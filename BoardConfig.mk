#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
include device/asus/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00H

# Display
TARGET_SCREEN_DENSITY := 320

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := X00H_defconfig

# Inherit from the proprietary version
include vendor/asus/X00H/BoardConfigVendor.mk
