#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pine device
$(call inherit-product, device/xiaomi/pine/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pine
PRODUCT_NAME := lineage_pine
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Some build flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_PIXEL_CHARGER := true
IS_PHONE := true

# Shipping with core GApps
$(call inherit-product-if-exists, vendor/gapps/core/config.mk)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pine-user 10 QKQ1.191014.001 V12.5.1.0.QCMCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/pine/pine:10/QKQ1.191014.001/V12.5.1.0.QCMCNXM:user/release-keys"
