#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

# build.prop
#echo "ro.bluetooth.library_name=libbluetooth_qti.so" >> $1/build.prop

# drop finddevice, needs to be done before copying system files
rm -rf $1/priv-app/FindDevice

# Copy system files
rsync -ra $thispath/system/ $systempath

# drop dirac
rm -rf $1/priv-app/DiracAudioControlService
# drop FingerprintExtensionService
rm -rf $1/app/FingerprintExtensionService
# drop nfc
rm -rf $1/app/NQNfcNci

cat $thispath/rw-system.add.sh >> $1/bin/rw-system.sh

sed -i 's/<bool name="support_round_corner">true/<bool name="support_round_corner">false/' $1/etc/device_features/*
sed -i 's/<bool name="support_round_corner">true/<bool name="support_round_corner">false/' $systempath/system/etc/device_features/*

sed -i "/miui.notch/d" $1/build.prop

# Wifi fix
cp -fpr $thispath/bin/* $1/bin/
cat $thispath/rw-system.add.sh >> $1/bin/rw-system.sh
