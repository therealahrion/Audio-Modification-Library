# Audio Modification Library Template
AudModLib is a compatibility framework that allows the seamless integration of multiple audio mods for both Magisk and System installs. [More details in support thread](https://forum.xda-developers.com/apps/magisk/module-audio-modification-library-t3579612).

## Compatibility
* Android Jellybean+
* init.d (other root & rootless) - requires init.d support. If you don't have init.d support, try [Init.d Injector](https://forum.xda-developers.com/android/software-hacking/mod-universal-init-d-injector-wip-t3692105)
* MagiskSU & SuperSU
* Magisk & System install
* Nexus/Pixel support (A/B OTA)
* SELinux enforcing
* Works with nearly every device, kernel, and rom

## Change Log
### v2.6 - 12.25.2017
* Move sepolicy out of aml and into individual modules
* Fix and improve aml boot script
* Update binary with v1500 magisk template - now only compatible with magisk v15+

### v2.5 - 12.13.2017
* Fix conditional logic
* Fix boot scripts
* Fix prop install
* Concatentate and reorganize update-binary
* Removed xmlstarlet - not compatible with all devices and there's no real need for it
* Add some new variables and functionality so apps and libs will be installed to vendor if rom is oreo or newer
* Added audio_effects xml files to CFGS array - along with previous point, should add pixel 2 compatibility'
* Added new sepolicy patch needed for oreo
* Replace sepolicy patches with "setenforce 0" if oos oreo is detected - temporary workaround for now

### v2.4 - 11.30.2017
* Fix mounting issues with Magisk v14.0
* Streamlined some of the code

### v2.3 - 11.28.2017
* Bug fixes and fine tuning for prop logic
* Fix unmounting for system installs
* Get rid of errors causeing recovery log spam
* Add pixel 2 support (need magisk 14.5 or newer)
* Remove all variables for conf/pol/mix files - autodetect them instead
* Comment out volume_listener library instead of the entire output_session_processing
* Remove proxy library addition from aml (mod specific)
* Redo util_functions - use magisk one if present
* Add magisk 14.5 support
* General script improvements

### v2.2 - 11.8.2017
* Got rid of common aml prop file - now uses individual prop file for each mod
* Sepolicy function fixes
* Remove EXT variable - no need for it
* Use /su/bin/sush shebang for scripts with systemless supersu install
* Fix bootmode aml automount
* Fix magisk clean flash support
* Add AML upgrade feature

### v2.1 - 10.20.2017
* Updated for Magisk v14.3
* Updated to Magisk module template 1410
* Massive script reduction & efficiency enhancements
* Added XMLStartlet for arm/arm64 & x86 by JamesDSP developer, james3460297 @ XDA Developers (this toolkit allows the editing & patching of XML files using a simple set of shell commands in a way similar to how it is done with grep, sed, awk, diff, patch, join, etc commands)
* Combined customrules.sh CP_PRFX command with MK_PRFX so by default, the command CP_PRFX both creates the directory and copies the file (thus removing the need to have two seperate customrules.sh for cp and mk)
* Combined customrules.sh CP_PRFX command with CP_SFFX, so the default file placement permission is 0644 and the default folder creation permission is 0755 (you can manually define file copy permission by adding " 0755" or whatever permission you want at the end of the line that contains CP_PRFX)
* Silently uninstall previous version before new version upgrades (this is to keep every upgrade install clean in cases where the new version doesn't include files the previous version may have included)
* Further A/B OTA (Pixel family) improvements
* System backup/restore fully automated (no need to manually write files to INFO file anymore)
* Added MAXAPI variable to unity-uservariables that compliments MINAPI (this allows the developer to quickly set the minimum and maximum SDK version of their modification)
* Added cabability for modifications to modify /data partition, with full backup/removal support
* Greatly improved uninstall function by concatenating script
* Added "minVer" (an internal check that should always be equal to the latest stable Magisk release in cases where the template is based off of a beta release)
* Added support for SuperSU BINDSBIN mode
* Fix cache system installs
* Moved scripts to post-fs-data for Magisk installs (fixes some issues such as AM3D white screen on compatible devices)
* Combined multiple wipe functions into one
* Fixed System override issues some were facing
* Fixed System install partition re-mounting
* Updated Instructions (for developers only)
* Addon.d script fixes/improvements
* Various miscellaneous script fixes and improvements

### v2.0
* Massive installer and script overhaul
* Added autouninstall (if mod is already installed and you flash same version zip again, it'll uninstall), thus removing the need for an uninstall zip
* Added file/folder backup/restore of modified files
* Added file/folder backup/restore of normally wiped files
* Added Osm0sis @ xda-developers uninstaller idea (just add "uninstall" to zip name and it'll function as uninstaller)
* Added phh's SuperUser and LOS su support (note, LOS doesn't support sepolicy patching)
* Added proxy library to AML to allow the proxy effects found in multiple audio modules
* Added support for Magisk imgs located in /cache/audmodlib
* Added system_root support for Pixel devices
* Added system override (if you're on magisk but would rather have it install to system, add word "system" to zip name and it'll install everything but scripts to system)
* Add Unity system props
* Added vendor fix for Nexus devices
* AML functionality and uses overhauled
* Bug fixes
* Modified Unity Installer to allow use for non AML modules
* Moved scripts from Magisk .core to the individual module folder due to .core limitations
* New modular approach - no need to modify update-binary anymore: check instructions for more details on how this works
* Reworked addon.d system install scripts
* Removed AML cache workaround by reworking AML changes via magisk_merge
* Reworked AML vendor audio_effects to not be overwritten by system audio_effects by commenting out conflicting lines
* Reworked script permissions
* Update sepolicy for Magisk 13+
* Updated to Magisk module template 1400

### v1.4
* Change SELinux live patching to allow better compatibility between different devices, kernels, and roms; while also keeping the amount of "allowances" to a minumum
* Changed post-fs-data(.d)/service(.d) shell script names for cosmetic recognition
* Merge SuperSU shell script with MagiskSU post-fs-data(.d)/service(.d) script for less fragmentation
* Added /cache/audmodlib.log to determine if script has run successfully
* More audio policy files and various mixer_paths files are now included in the framework
* Install script changes that include: major update to Pixel (A/B OTA) support, mounting changes, improved script efficiency, fixes & consolidation, and cosmetic fixes
* Add/fix proper addon.d support

### v1.3
* Script addition to allow various audio mods working with SELinux Enforcing
* Remove (audmodlib)service.sh and replace with post-fs-data(.d) audmodlib.sh, which should fix when root may be lost upon installing certain mods

### v1.2
* Added audmodlib.sh post-fs-data.d script
* Fix selinux injection script to work for MagiskSU/SuperSU (system and systemless)
* Install script fixes

### v1.1
* Hotfix for bootloop issues on some devices

### v1.0
* Initial Magisk release

## Source Code
* Module [GitHub](https://github.com/therealahrion/Audio-Modification-Library)
