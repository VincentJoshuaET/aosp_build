LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := GoogleExtShared
LOCAL_PACKAGE_NAME := com.google.android.ext.shared
LOCAL_PRODUCT_MODULE := true

GAPPS_LOCAL_OVERRIDES_MIN_VARIANT :=
GAPPS_LOCAL_OVERRIDES_PACKAGES := ExtShared

include $(BUILD_GAPPS_PREBUILT_APK)
