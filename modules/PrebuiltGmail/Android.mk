LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := PrebuiltGmail
LOCAL_PACKAGE_NAME := com.google.android.gm
LOCAL_PRODUCT_MODULE := true

GAPPS_LOCAL_OVERRIDES_MIN_VARIANT := stock
GAPPS_LOCAL_OVERRIDES_PACKAGES := Email

include $(BUILD_GAPPS_PREBUILT_APK)
