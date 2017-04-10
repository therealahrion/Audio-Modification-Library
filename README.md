# Audio Modification Library
AudModLib is a framework that allows the seamless integration of multiple audio mods for Magisk. [More details in support thread](https://forum.xda-developers.com/apps/magisk/module-audio-modification-library-t3579612).

## Compatibility
* Android Lollipop+
* Magisk install (MagiskSU/SuperSU)
* Pixel support
* Works with nearly every device, kernel, and rom

## Change Log
v1.4
	- Change SELinux live patching to allow better compatibility between different devices, kernels, and roms; while also keeping the amount of "allowances" to a minumum
	- Changed post-fs-data(.d)/service(.d) shell script names for cosmetic recognition
	- Merge SuperSU shell script with MagiskSU post-fs-data(.d)/service(.d) script for less fragmentation
	- Added /cache/audmodlib.log to determine if script has run successfully
	- more audio policy files and various mixer_paths files are now included in the framework
	- Install script changes that include: major update to Pixel (A/B OTA) support, mounting changes, improved script efficiency, fixes & consolidation

v1.3
	- Script addition to allow various audio mods working with SELinux Enforcing
	- Remove (audmodlib)service.sh and replace with post-fs-data(.d) audmodlib.sh, which should fix when root may be lost upon installing certain mods

v1.2
	- Added audmodlib.sh post-fs-data.d script
    - Fix selinux injection script to work for MagiskSU/SuperSU (system and systemless)
	- Install script fixes

v1.1
    - Hotfix for bootloop issues on some devices

v1.0
    - Initial Magisk release

## Source Code
* Module [GitHub](https://github.com/therealahrion/Audio-Modification-Library)