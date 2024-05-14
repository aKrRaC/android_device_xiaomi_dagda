#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from dagda device
$(call inherit-product, device/xiaomi/dagda/device.mk)

# Inherit from common RisingOSS configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Miui Camera for zeus
$(call inherit-product-if-exists, device/xiaomi/miuicamera-zeus/device.mk)
$(call inherit-product-if-exists, device/xiaomi/miuicamera-zeus/BoardConfig.mk)

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
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    RISING_CHIPSET="Snapdragon 8 Gen 1" \
    RISING_MAINTAINER="aKrRaC"

BUILD_FINGERPRINT := Xiaomi/zeus_global/zeus:14/UKQ1.230917.001/V816.0.4.0.ULBMIXM:user/release-keys

PRODUCT_SYSTEM_PROPERTIES += ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
# Enable blur support
TARGET_ENABLE_BLUR := true
# whether to ship aperture camera
PRODUCT_NO_CAMERA := false
# GMS build flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
# Whether to ship pixel launcher and set it as default launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := false
