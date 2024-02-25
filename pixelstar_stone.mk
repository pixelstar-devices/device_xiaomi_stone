#
# Copyright (C) 2024 The Pixelstar Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Pixelstar stuff.
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

PIXELSTAR_BUILD_TYPE := official

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

# Device props
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
TARGET_DEBLOAT := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Charging Animation
TARGET_USE_PIXEL_CHARGER := true

# Use Prebuilt Kernel
PREBUILT_KERNEL := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixelstar_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := holi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="moonstone-user 13 TKQ1.221114.001 V14.0.5.0.TMPMIXM release-keys"

BUILD_FINGERPRINT := POCO/moonstone_p_global/moonstone:13/TKQ1.221114.001/V14.0.5.0.TMPMIXM:user/release-keys
