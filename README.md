# Audio Modification Library
AudModLib is a framework that allows the seamless integration of multiple audio mods for Magisk. [More details in support thread](https://forum.xda-developers.com/apps/magisk/module-audio-modification-library-t3579612).

## Compatibility
* Android Lollipop+
* Magisk install (MagiskSU/SuperSU)
* Pixel support
* Works with nearly every device, kernel, and rom

## Change Log
v1.3
	- Script addition to allow various audio mods working with SELinux Enforcing
	- Remove (audmodlib)service.sh and replace with pos-fs-data(.d) audmodlib.sh, which should fix when root may be lost upon installing certain mods

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