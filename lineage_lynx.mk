#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := lynx
DEVICE_PATH := device/google/lynx
VENDOR_PATH := vendor/google/lynx
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/gs201/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7a
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Ship Basic Call Recorder
TARGET_PREBUILT_BCR := true

# Addons
TARGET_HAS_UDFPS := true

# Gms 
WITH_GMS := true

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Ship LawnChair 
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Ship Google Camera
TARGET_PREBUILT_GOOGLE_CAMERA := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

RISING_MAINTAINER=EliteDarkKaiser

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lynx-user 15 AP4A.250105.002 12701944 release-keys" \
    BuildFingerprint=google/lynx/lynx:15/AP4A.250105.002/12701944:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
