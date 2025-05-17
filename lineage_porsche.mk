#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from porsche device
$(call inherit-product, device/realme/porsche/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_porsche
PRODUCT_DEVICE := porsche
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX3312

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Axion Flags
AXION_MAINTAINER := Mister_X

# Processor name (use "_" for spaces)
AXION_PROCESSOR := Snapdragon_888

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 50,8,2

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 16

# BCR
TARGET_PREBUILT_BCR := true

# Core groups
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6
AXION_CPU_PRIME_CORE := 7

# Task assignments
AXION_CPU_BG := 0,1
AXION_CPU_FG := 2,3,4
AXION_CPU_LIMIT_BG := 0

# Wether to enable debugging for adb logcat purposes
AXION_DEBUGGING_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint="realme/RMX3312/RE58B2L1:14/UKQ1.230924.001/S.1a33387-2-4:user/release-keys" \
    BuildDesc="RMX3312-user 14 UKQ1.230924.001 S.1a33387-2-4 release-keys" \
    DeviceName=RMX3312 \
    DeviceProduct=RE58B2L1 \
    SystemDevice=RE58B2L1 \
    SystemName=RMX3312
