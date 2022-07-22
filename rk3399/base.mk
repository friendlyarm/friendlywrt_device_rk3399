#!/bin/bash

TARGET_PLAT=rk3399
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=friendlywrt

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=rockchip
FRIENDLYWRT_SRC=friendlywrt
FRIENDLYWRT_PATCHS+=("feeds/luci/;device/common/src-patchs/feeds/luci/0001-fix-to-make-factory-reset-button-work-on-FriendlyWrt.patch")
FRIENDLYWRT_FILES+=(device/common/ntfs3)
FRIENDLYWRT_FILES+=(device/common/default-settings)
FRIENDLYWRT_FILES+=(device/common/emmc-tools)
FRIENDLYWRT_FILES+=(device/common/busybox-top)
FRIENDLYWRT_FILES+=(device/common/distfeeds)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3399/r8169)

# U-boot
# 

TARGET_UBOOT_CONFIG=rk3399_defconfig

# Kernel
# 

TARGET_KERNEL_CONFIG=nanopi4_linux_defconfig
TARGET_KERNEL_DTB=resource.img

# Misc
# 
FRIENDLYWRT_ROOTFS=build_dir/target-aarch64_generic_musl/root-rockchip
FRIENDLYWRT_PACKAGE_DIR=bin/targets/rockchip/armv8/packages
TARGET_IMAGE_DIRNAME=friendlywrt22
TARGET_SD_RAW_FILENAME=friendlywrt_22.03_$(date +%Y%m%d)_rk3399_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=friendlywrt_22.03_$(date +%Y%m%d)_rk3399_arm64_eflasher.img


