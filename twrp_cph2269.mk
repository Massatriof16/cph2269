#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP/Omni stuff (Depende sa gamit mong manifest)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device makefile
$(call inherit-product, device/oppo/cph2269/device.mk)

PRODUCT_DEVICE := cph2269
PRODUCT_NAME := twrp_cph2269
PRODUCT_BRAND := oppo
PRODUCT_MODEL := CPH2269
PRODUCT_MANUFACTURER := oppo

