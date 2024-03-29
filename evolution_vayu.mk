#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit some common Evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Feature Flags
TARGET_SUPPORTS_QUICK_TAP := true
IS_PHONE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

PRODUCT_NAME := evolution_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro
PRODUCT_MANUFACTURER := Xiaomi
CUSTOM_DEVICE := vayu

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Add-ons
# Device Settings
$(call inherit-product-if-exists, vendor/xiaomi/devicesettings/config.mk)
# Google Camera 
$(call inherit-product-if-exists, vendor/Gcam/config.mk)
