# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_SPECIFIC_HEADER_PATH := device/pantech/msm8660-common/include

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DNO_QCOM_MVS

TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DMISSING_EGL_PIXEL_FORMAT_YV12 -DMISSING_EGL_EXTERNAL_IMAGE -DUNABLE_TO_DEQUEUE

# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# wifi
# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
# uses bcm4330
BOARD_WLAN_DEVICE           := bcm4330
WIFI_DRIVER_MODULE_PATH     := "/lib/modules/wlan.ko"
WIFI_DRIVER_FW_STA_PATH     := "/system/etc/wl/bcm4330.bin"
WIFI_DRIVER_FW_AP_PATH      := "/system/etc/wl/bcm4330_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/wl/bcm4330_p2p.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wl/bcm4330.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME     := "wlan"

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/msm8660-common/recovery/graphics.c

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
USE_OPENGL_RENDERER := true
TARGET_HAVE_BYPASS := false
TARGET_USES_SF_BYPASS := false
TARGET_USES_C2D_COMPOSITION := true
#BOARD_NO_RGBX_8888    := true
TARGET_USES_OVERLAY := false
BOARD_USE_QCOM_PMEM := true
TARGET_QCOM_HDMI_OUT := true
TARGET_QCOM_HDMI_RESOLUTION_AUTO := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

TARGET_USES_OLD_LIBSENSORS_HAL := true

TARGET_USES_ION := false
BOARD_EGL_CFG := device/pantech/msm8660-common/configs/egl.cfg
# FIXME: Overlay has an issue on Quincy when playing video in landscape mode
#COMMON_GLOBAL_CFLAGS += -DQCOM_ROTATOR_KERNEL_FORMATS

BOARD_PROVIDES_LIBRIL := true
TARGET_PROVIDES_RILD := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
DYNAMIC_SHARED_LIBV8SO  := false

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8660

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun%d/file

# Camera
BOARD_CAMERA_USE_MM_HEAP := true

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHTS := true

# Nicer font rendering
BOARD_USE_SKIA_LCDTEXT := true
