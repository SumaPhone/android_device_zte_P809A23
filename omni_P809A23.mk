#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from P809A23 device
$(call inherit-product, device/zte/P809A23/device.mk)

PRODUCT_DEVICE := P809A23
PRODUCT_NAME := omni_P809A23
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTF32
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ZTF32_jp_kdi-user 5.1.1 LMY47V 20210828.163906 test-keys"

BUILD_FINGERPRINT := ZTE/ZTF32_jp_kdi/P809A23:5.1.1/LMY47V/20210828.163906:user/test-keys
