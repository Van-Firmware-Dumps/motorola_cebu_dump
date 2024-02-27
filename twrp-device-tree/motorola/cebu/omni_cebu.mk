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

# Inherit from cebu device
$(call inherit-product, device/motorola/cebu/device.mk)

PRODUCT_DEVICE := cebu
PRODUCT_NAME := omni_cebu
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(9) power
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cebu_retail-user 11 RZCS31.Q2-57-12-14 3d8395 release-keys"

BUILD_FINGERPRINT := motorola/cebu_retail/cebu:11/RZCS31.Q2-57-12-14/3d8395:user/release-keys
