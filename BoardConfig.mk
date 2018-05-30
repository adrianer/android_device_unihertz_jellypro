# mt6737 platform boardconfig
DEVICE_PATH := device/unihertz/jellypro

# TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := mt6737t
TARGET_BOOTLOADER_BOARD_NAME := mt6735
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

# Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_CORTEX_A53 := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Display
TARGET_SCREEN_HEIGHT := 432
TARGET_SCREEN_WIDTH := 240

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_LARGE_FILESYSTEM := true

# Kernel
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --second_offset 0x00e88000 --tags_offset 0x0df88000 --board 1480056755
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel.gz

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
# BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3925868544
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.mt6735

# System Properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Linker
LINKER_FORCED_SHIM_LIBS := /system/vendor/bin/thermal|libshim_ifc.so
LINKER_FORCED_SHIM_LIBS += /system/lib/libmedia.so|libshim_misc.so:/system/lib64/libmedia.so|libshim_misc.so:/system/lib/libstagefright.so|libshim_misc.so:/system/lib64/libstagefright.so|libshim_misc.so:/system/lib/libandroid_runtime.so|libshim_misc.so:/system/lib64/libandroid_runtime.so|libshim_misc.so
LINKER_FORCED_SHIM_LIBS += /system/vendor/lib/libui_ext.so|libshim_ui.so:/system/vendor/lib64/libui_ext.so|libshim_ui.so:/system/vendor/lib/libcam_utils.so|libshim_ui.so:/system/vendor/lib64/libcam_utils.so|libshim_ui.so
LINKER_FORCED_SHIM_LIBS += /system/vendor/lib/libgui_ext.so|libshim_gui.so:/system/vendor/lib64/libgui_ext.so|libshim_gui.so
LINKER_FORCED_SHIM_LIBS += /system/vendor/lib/mtk-ril.so|libshim_ifc.so:/system/vendor/lib64/mtk-ril.so|libshim_ifc.so

# Hack for building without kernel sources
$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)
