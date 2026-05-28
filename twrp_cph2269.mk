#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP/Omni stuff (Depende sa gamit mong manifest)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device makefile
$(call inherit-product, device/OPPO/cph2269/device.mk)

PRODUCT_DEVICE := cph2269
PRODUCT_NAME := twrp_cph2269
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2269
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-OPPO

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user 11 RP1A.200720.011 1732492258139 release-keys"

BUILD_FINGERPRINT := OPPO/CPH2269T2/OP4F97:11/RP1A.200720.011/1732492258139:user/release-keys

