# Audio Modification Library
AudModLib is a framework that allows the seamless integration of multiple audio mods for Magisk. [More details in support thread](https://forum.xda-developers.com/apps/magisk/module-audio-modification-library-t3579612).

## Compatibility
* Android Lollipop+
* Magisk install (MagiskSU/SuperSU)
* Pixel support
* Works with nearly every device, kernel, and rom

## Change Log
v1.5
	- Update sepolicy for magisk 13
	- Add unity system props
	- Added file backup/restore of modified files
	- Added vendor fix for nexus devices
	- Added system_root support for pixel devices
	- Added phh superuser and LOS su support (note, LOS doesn't support sepolicy patching)
	- Added support for magisk imgs located in /cache/audmodlib
	- Added @Osm0sis at xda-developers uninstaller idea (just add "uninstall" to zip name and it'll function as uninstaller)
	- Added autouninstall (if mod is already installed and you flash same version zip again, it'll uninstall)
	- Added system override (if you're on magisk but would rather have it install to system, add word "system" to zip name and it'll install everything but scripts to system)
	- Added file/folder backup/restore of normally wiped files
	- New modular approach - no need to modify update-binary anymore
	
v1.4
	- Change SELinux live patching to allow better compatibility between different devices, kernels, and roms; while also keeping the amount of "allowances" to a minumum
	- Changed post-fs-data(.d)/service(.d) shell script names for cosmetic recognition
	- Merge SuperSU shell script with MagiskSU post-fs-data(.d)/service(.d) script for less fragmentation
	- Added /cache/audmodlib.log to determine if script has run successfully
	- More audio policy files and various mixer_paths files are now included in the framework
	- Install script changes that include: major update to Pixel (A/B OTA) support, mounting changes, improved script efficiency, fixes & consolidation, and cosmetic fixes
	- Add/fix proper addon.d support

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
