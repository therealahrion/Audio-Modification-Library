# Audio Modification Library
AudModLib is a compatibility framework that allows the seamless integration of multiple audio mods for both Magisk and System installs. [More details in support thread](https://forum.xda-developers.com/apps/magisk/module-audio-modification-library-t3579612).

## Compatibility
* Android Lollipop+
* init.d (LineageOS SU, phh's SU, & rootless)
* MagiskSU & SuperSU
* Magisk & System install
* Nexus/Pixel support (A/B OTA)
* SELinix enforcing (LOS SU & rootless need permissive)
* Works with nearly every device, kernel, and rom

## Change Log
v2.1
    - Unity/AML v2.1: Updated for Magisk v14.2
    - Unity/AML v2.1: Updated to Magisk module template 1410
    - Unity/AML v2.1: Silently uninstall previous version before new version upgrades (this is to keep every upgrade install clean in cases where the new version doesnt include files the previous version may have included)
    - Unity/AML v2.1: Further A/B OTA (Pixel family) improvements
    - Unity/AML v2.1: System backup/restore fully automated (no need to manually write files to INFO file anymore)
    - Unity/AML v2.1: Added cabability for modifications to modify /data partition
    - Unity/AML v2.1: Added "minVer" (an internal check that should always be equal to the latest stable Magisk release in cases where the template is based off of a beta release)
    - Unity/AML v2.1: Added support for SuperSU BINDSBIN mode
    - Unity/AML v2.1: Fix cache system installs
    - Unity/AML v2.1: Moved scripts to post-fs-data for Magisk installs (fixes some issues such as AM3D white screen on compatible devices)
    - Unity/AML v2.1: Fixed System override issues some were facing
    - Unity/AML v2.1: Fixed System install partition re-mounting
    - Unity/AML v2.1: Updated Instructions (for developers only)
    - Unity/AML v2.1: Various script fixes and improvements

v2.0
	- Massive installer and script overhaul
	- Added autouninstall (if mod is already installed and you flash same version zip again, it'll uninstall), thus removing the need for an uninstall zip
	- Added file/folder backup/restore of modified files
	- Added file/folder backup/restore of normally wiped files
	- Added Osm0sis @ xda-developers uninstaller idea (just add "uninstall" to zip name and it'll function as uninstaller)
	- Added phh's SuperUser and LOS su support (note, LOS doesn't support sepolicy patching)
	- Added proxy library to AML to allow the proxy effects found in multiple audio modules
	- Added support for Magisk imgs located in /cache/audmodlib
	- Added system_root support for Pixel devices
	- Added system override (if you're on magisk but would rather have it install to system, add word "system" to zip name and it'll install everything but scripts to system)
	- Add Unity system props
	- Added vendor fix for Nexus devices
	- AML functionality and uses overhauled
	- Bug fixes
	- Modified Unity Installer to allow use for non AML modules
	- Moved scripts from Magisk .core to the individual module folder due to .core limitations
	- New modular approach - no need to modify update-binary anymore: check instructions for more details on how this works
	- Reworked addon.d system install scripts
	- Removed AML cache workaround by reworking AML changes via magisk_merge
	- Reworked AML vendor audio_effects to not be overwritten by system audio_effects by commenting out conflicting lines
	- Reworked script permissions
	- Update sepolicy for Magisk 13+
	- Updated to Magisk module template 1400
	
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
