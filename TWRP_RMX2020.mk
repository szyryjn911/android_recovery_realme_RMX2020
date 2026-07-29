#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RMX2020 device
$(call inherit-product, device/realme/RMX2020/device.mk)

PRODUCT_DEVICE := RMX2020
PRODUCT_NAME := TWRP_RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2020
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX2020-user 11 RP1A.200720.011 1607914664672 release-keys"

BUILD_FINGERPRINT := realme/RMX2020/RMX2020:11/RP1A.200720.011/1607914664672:user/release-keys

TW_DEVICE_VERSION := For RealmeUI 2.0 Base
PRODUCT_SHIPPING_API_LEVEL := 29

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery
