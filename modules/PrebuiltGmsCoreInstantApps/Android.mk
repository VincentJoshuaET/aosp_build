LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := PrebuiltGmsCoreInstantApps
LOCAL_PACKAGE_NAME := com.google.android.instantapps.supervisor
LOCAL_PRODUCT_MODULE := true

include $(BUILD_GAPPS_PREBUILT_APK)
