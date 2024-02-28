#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_DEVICE := alioth
PRODUCT_NAME := omni_alioth
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_alioth-userdebug 13 TQ3A.230901.001 c0ca517a1a release-keys"

BUILD_FINGERPRINT := POCO/alioth_global/alioth:13/TKQ1.220829.002/V14.0.4.0.TKHMIXM:user/release-keys
