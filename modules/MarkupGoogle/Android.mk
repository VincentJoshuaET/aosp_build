LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := MarkupGoogle
LOCAL_PACKAGE_NAME := com.google.android.markup
LOCAL_PRODUCT_MODULE := true

LOCAL_REQUIRED_MODULES := libsketchology_native
include $(BUILD_GAPPS_PREBUILT_APK)

include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := libsketchology_native
include $(BUILD_GAPPS_PREBUILT_SHARED_LIBRARY)
