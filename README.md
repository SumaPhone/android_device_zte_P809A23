# Android device tree for ZTE ZTF32 (P809A23)

```
#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
## FTM mode
 Power off device and hold press power key and manner mode key(マナー) 2 seconds.
 
 ADB enabled in FTM mode.
## Recovery mode
	adb reboot recovery
## EDL mode
	adb reboot edl
## Fastboot mode
	adb reboot bootloader
## Bootloader Unlock
 see [XDA thread.](https://xdaforums.com/t/bootloader-unlocking-on-older-qualcomm-zte-devices-devinfo-partition-modification.4100897/)

 You can use [edl.py](https://github.com/bkerler/edl) tool.
## Build
	mkdir -p work/mamo4/tw5 ; cd work/mamo4/tw5
	repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-5.1
	mkdir .repo/local_manifests ; cd .repo/local_manifests
	wget https://raw.github.com/SumaPhone/android_device_zte_P809A23/twrp-5.1/local_manifest.xml
	cd ../..
	repo sync -c -j$(nproc -all) --no-clone-bundle
	# Open bootable/recovery/gui/theme/portrait_mdpi/ui.xml and optimize font size. (recommended 24)
	. build/envsetup.sh
	lunch omni_P809A23-eng
	mka recoveryimage
## Flash (with [edl.py](https://github.com/bkerler/edl) tool)
	./edl r recovery path/to/recovery_stock.img
	./edl w recovery path/to/TWRP_recovery.img
## Fix overwrite recovery
	# Mount /system on TWRP
	mv recovery-from-boot.p recovery-from-boot.bak

 AT YOUR OWN RISK!
 
 Good luck!
