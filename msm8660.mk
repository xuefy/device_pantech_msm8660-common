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


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# EGL config
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/configs/egl.cfg:system/lib/egl/egl.cfg

# Media config
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# QCOM Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    hdmid

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    libaudioutils

# GPS
PRODUCT_PACKAGES += \
	gps.msm8660

ifeq ($(BOARD_HAVE_NFC),true)

PRODUCT_COPY_FILES += \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    device/sample/nxp/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/pantech/msm8660-common/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/pantech/msm8660-common/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

endif # BOARD_HAVE_NFC

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug
endif

# keylayouts
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/keylayout/8660_handset.kl:system/usr/keylayout/8660_handset.kl\
    device/pantech/msm8660-common/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/pantech/msm8660-common/keylayout/ffa-keypad.kl:system/usr/keylayout/ffa-keypad.kl \
    device/pantech/msm8660-common/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/pantech/msm8660-common/keylayout/matrix-keypad.kl:system/usr/keylayout/matrix-keypad.kl \
    device/pantech/msm8660-common/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Keychars
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/keychars/ffa-keypad_numeric.kcm.bin:system/usr/keychars/ffa-keypad_numeric.kcm.bin \
    device/pantech/msm8660-common/keychars/ffa-keypad_qwerty.kcm.bin:system/usr/keychars/ffa-keypad_qwerty.kcm.bin \
    device/pantech/msm8660-common/keychars/fluid-keypad_numeric.kcm.bin:system/usr/keychars/fluid-keypad_numeric.kcm.bin \
    device/pantech/msm8660-common/keychars/fluid-keypad_qwerty.kcm.bin:system/usr/keychars/fluid-keypad_qwerty.kcm.bin \
    device/pantech/msm8660-common/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/pantech/msm8660-common/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin

# IDC
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/pantech/msm8660-common/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# Misc init scripts
PRODUCT_COPY_FILES += \
    device/pantech/msm8660-common/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    device/pantech/msm8660-common/etc/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    device/pantech/msm8660-common/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/pantech/msm8660-common/overlay

