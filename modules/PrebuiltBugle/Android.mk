LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := PrebuiltBugle
LOCAL_PACKAGE_NAME := com.google.android.apps.messaging
LOCAL_PRODUCT_MODULE := true

GAPPS_LOCAL_OVERRIDES_MIN_VARIANT :=
GAPPS_LOCAL_OVERRIDES_PACKAGES := messaging Mms

include $(BUILD_GAPPS_PREBUILT_APK)
