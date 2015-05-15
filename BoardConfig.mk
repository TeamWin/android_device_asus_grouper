# Copyright (C) 2010 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
# The proprietary variant sets USE_CAMERA_STUB := false, this way
# we use the camera stub when the vendor tree isn't present, and
# the true camera library when the vendor tree is available.  Similarly,
# we set USE_PROPRIETARY_AUDIO_EXTENSIONS to true in the proprietary variant as
# well.
USE_CAMERA_STUB := true
USE_PROPRIETARY_AUDIO_EXTENSIONS := false

BOARD_HAL_STATIC_LIBRARIES := libdumpstate.grouper

TARGET_RECOVERY_UI_LIB := librecovery_ui_grouper

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/grouper

-include vendor/asus/grouper/BoardConfigVendor.mk
include device/asus/grouper/BoardConfigCommon.mk

TARGET_RECOVERY_FSTAB = device/asus/grouper/fstab.grouper

BOARD_SEPOLICY_DIRS := \
        device/asus/grouper/sepolicy

BOARD_SEPOLICY_UNION := \
        file_contexts \
        genfs_contexts \
        app.te \
        btmacreader.te \
        device.te \
        drmserver.te \
        init_shell.te \
        file.te \
        rild.te \
        sensors_config.te \
        shell.te \
        surfaceflinger.te \
        system.te \
        zygote.te

#TWRP
DEVICE_RESOLUTION := 800x1280
#DEVICE_RESOLUTION := 280x280
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := false
TW_INCLUDE_L_CRYPTO := true

#TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/sdhci-tegra.3/by-name/UDA"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nomblk_io_submit,errors=panic"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "/dev/block/platform/sdhci-tegra.3/by-name/MDA"
TW_ROTATION := 90
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

