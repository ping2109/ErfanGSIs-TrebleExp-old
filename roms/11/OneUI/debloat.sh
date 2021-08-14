#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

rm -rf $1/app/Facebook_stub
rm -rf $1/app/Gmail2
rm -rf $1/app/Maps
rm -rf $1/app/SamsungOne
rm -rf $1/app/Stk
rm -rf $1/app/Stk2
rm -rf $1/priv-app/FotaAgent
rm -rf $1/priv-app/DigitalWellbeing
rm -rf $1/priv-app/KLMSAgent
rm -rf $1/priv-app/knoxvpnproxyhandler
rm -rf $1/priv-app/KnoxCore
rm -rf $1/priv-app/KnoxGuard
rm -rf $1/priv-app/KnoxKeychain
rm -rf $1/priv-app/KnoxPushManager
rm -rf $1/priv-app/knoxanalyticsagent
rm -rf $1/priv-app/LiveStickers
rm -rf $1/priv-app/OMCAgent5
rm -rf $1/priv-app/OneDrive_Samsung_v3
rm -rf $1/priv-app/ONS
rm -rf $1/priv-app/PeopleStripe
rm -rf $1/priv-app/SamsungPayStubMini
rm -rf $1/priv-app/SmartManager_v6_DeviceSecurity
rm -rf $1/priv-app/SOAgent
rm -rf $1/priv-app/SPPPushClient
rm -rf $1/priv-app/Velvet
rm -rf $1/system_ext/priv-app/GoogleFeedback
rm -rf $1/system_ext/priv-app/SetupWizard
