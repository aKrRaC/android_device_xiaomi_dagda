#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dagda device
$(call inherit-product, device/xiaomi/dagda/device.mk)

# Inherit from common Blaze configuration
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Miui Camera for zeus
$(call inherit-product-if-exists, device/xiaomi/miuicamera-zeus/device.mk)
$(call inherit-product-if-exists, device/xiaomi/miuicamera-zeus/BoardConfig.mk)

# Product details
PRODUCT_NAME := blaze_dagda
PRODUCT_DEVICE := dagda
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201122G

PRODUCT_SYSTEM_NAME := zeus_global
PRODUCT_SYSTEM_DEVICE := zeus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="zeus_global-user 14 UKQ1.230917.001 V816.0.4.0.ULBMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/zeus_global/zeus:14/UKQ1.230917.001/V816.0.4.0.ULBMIXM:user/release-keys

PRODUCT_SYSTEM_PROPERTIES += ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#
# Blaze specific flags
#
# Build type
BLAZE_BUILD_TYPE := UNOFFICIAL
# Maintainer string
BLAZE_MAINTAINER := aKrRaC
# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080
# Pixel Charger
TARGET_USE_PIXEL_CHARGER := true
# Face unlock support
TARGET_FACE_UNLOCK_SUPPORTED := true
# Blur support
TARGET_SUPPORTS_BLUR := true
# Quick tap support
TARGET_SUPPORTS_QUICK_TAP := true
# UDFPS support
TARGET_UDFPS_ANIMATIONS := true
# GApps support
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true
# Pixel Launcher
TARGET_INCLUDE_PIXEL_LAUNCHER := true
