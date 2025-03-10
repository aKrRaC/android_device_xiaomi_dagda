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

# Inherit from common EverestOS configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Miui Camera for zeus
$(call inherit-product-if-exists, device/xiaomi/miuicamera-zeus/device.mk)
$(call inherit-product-if-exists, device/xiaomi/miuicamera-zeus/BoardConfig.mk)

# Product details
PRODUCT_NAME := lineage_dagda
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
# EverestOS specific flags
#
# Build type
EVEREST_BUILD_TYPE := UNOFFICIAL
# Maintainer string
EVEREST_MAINTAINER := aKrRaC
# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080
# Blur support
TARGET_SUPPORTS_BLUR := true
# UDFPS support
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
# GApps support
WITH_GAPPS := true
# Launcher
TARGET_USES_BLUR_RECENT := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
