#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

# FILE LOCATIONS
CONFIG_FILE=/system/etc/audio_effects.conf
VENDOR_CONFIG=/system/vendor/etc/audio_effects.conf
HTC_CONFIG_FILE=/system/etc/htc_audio_effects.conf
OTHER_VENDOR_FILE=/system/etc/audio_effects_vendor.conf
OFFLOAD_CONFIG=/system/etc/audio_effects_offload.conf

AUDMODLIB=/cache/audmodlib

aud_mod_lib() {
  for CFG in $CONFIG_FILE $VENDOR_CONFIG $HTC_CONFIG_FILE $OTHER_VENDOR_FILE $OFFLOAD_CONFIG; do
    mkdir -p /magisk/audmodlib${CFG%/*}
  done

  for CFG in $CONFIG_FILE $VENDOR_CONFIG $HTC_CONFIG_FILE $OTHER_VENDOR_FILE $OFFLOAD_CONFIG; do
    cp -af $AUDMODLIB$CFG /magisk/audmodlib$CFG
  done
}

if [ -d /magisk/audmodlib ]; then
  if cmp $AUDMODLIB/system/etc/audio_effects.conf /magisk/audmodlib/system/etc/audio_effects.conf; then
    echo true
  else
    echo false
    aud_mod_lib
    reboot
  fi
fi
