#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X00H device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := X00H
PRODUCT_MANUFACTURER := asus
PRODUCT_NAME := lineage_X00H
PRODUCT_MODEL := X00HD_4

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR_PRODUCT_NAME := X00HD_4

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8937_64-user 9 PKQ1.181203.001 16.0200.1907.18-20190817 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := asus/WW_Phone/ASUS_X00HD_4:9/PKQ1.181203.001/16.0200.1907.18-20190817:user/release-keys
