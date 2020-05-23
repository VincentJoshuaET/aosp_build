LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := PixelLauncherIcons
LOCAL_PACKAGE_NAME := com.google.android.nexusicons
LOCAL_DEX_PREOPT := false
LOCAL_PRODUCT_MODULE := true

include $(BUILD_GAPPS_PREBUILT_APK)
