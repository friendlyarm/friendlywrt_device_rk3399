#!/bin/bash

TARGET_PLAT=rk3399
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=friendlywrt

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=rockchip
FRIENDLYWRT_SRC=friendlywrt
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3399/common-files)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3399/default-settings)
FRIENDLYWRT_FILES+=(device/friendlyelec/rk3399/sd-update-tool)

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
TARGET_IMAGE_DIRNAME=friendlywrt
TARGET_SD_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_RK3399_arm64_sd.img
TARGET_EFLASHER_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_RK3399_arm64_eflasher.img


