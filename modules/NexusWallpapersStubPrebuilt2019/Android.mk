LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := NexusWallpapersStubPrebuilt2019
LOCAL_PACKAGE_NAME := com.google.android.apps.wallpaper.nexus
LOCAL_PRODUCT_MODULE := true

include $(BUILD_GAPPS_PREBUILT_APK)
