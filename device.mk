$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Assert
TARGET_OTA_ASSERT_DEVICE := jellypro,Jelly-Pro

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen Density
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Power
# PRODUCT_PACKAGES += \
#     power.mt6737t

# Dalvik heap configurations
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Common stuff
$(call inherit-product, device/mediatek/mt6737-common/mt6737.mk)

# Vendor
$(call inherit-product, vendor/unihertz/jellypro/jellypro-vendor.mk)

