LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := Photos
LOCAL_PACKAGE_NAME := com.google.android.apps.photos
LOCAL_PRODUCT_MODULE := true

GAPPS_LOCAL_OVERRIDES_MIN_VARIANT := stock
GAPPS_LOCAL_OVERRIDES_PACKAGES := Gallery Gallery2 MotGallery MediaShortcuts

include $(BUILD_GAPPS_PREBUILT_APK)
