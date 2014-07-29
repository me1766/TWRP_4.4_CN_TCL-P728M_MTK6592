USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/TCT/CROSS_LTE/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := mt6592
TARGET_BOARD_PLATFORM_GPU := mali-450mp

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := CROSS_LTE

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
# BOARD_SYSTEMIMAGE_PARTITION_SIZE := 
# BOARD_USERDATAIMAGE_PARTITION_SIZE := 
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Custom recovery
TARGET_PREBUILT_KERNEL := device/TCT/CROSS_LTE/kernel
TARGET_RECOVERY_INITRC := device/TCT/CROSS_LTE/twrp_init.rc

DEVICE_RESOLUTION := 720x1280

BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_cn_28x28.h\"
BOARD_TOUCH_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_SDCARD_ON_DATA := true

BORAD_UI_CHINESE := true
#BOARD_SMALL_CHINESE_FONT := true
BOARD_INCLUDE_FB2PNG := true

RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
AROMAFM_FILE_PATH := "/sdcard/clockworkmod/aromafm.zip"

# TWRP
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/sdcard2"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard2"
#TW_NO_REBOOT_BOOTLOADER := true
#TW_NO_USB_STORAGE := true
TW_ALWAYS_RMRF := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
#TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_FB2PNG := true
#TW_USE_TOOLBOX := true

BOARD_CUSTOM_BOOTIMG_MK := device/TCT/CROSS_LTE/custombootimg.mk