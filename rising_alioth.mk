#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Rising stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

# Misc
WITH_GMS := true
TARGET_ENABLE_PIXEL_FEATURES := true
RISING_MAINTAINER := Abrar
RISING_CHIPSET := Snapdragon870
RISING_STORAGE := 128GB
RISING_RAM := 6GB
RISING_BATTERY := 4520mAh
RISING_DISPLAY := 1080x2400

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := rising_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/alioth_global/alioth:12/SKQ1.211006.001/V13.0.6.0.SKHMIXM:user/release-keys
