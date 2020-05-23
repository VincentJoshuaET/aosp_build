LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := SafetyHubPrebuilt
LOCAL_PACKAGE_NAME := com.google.android.apps.safetyhub
LOCAL_PRODUCT_MODULE := true

include $(BUILD_GAPPS_PREBUILT_APK)
