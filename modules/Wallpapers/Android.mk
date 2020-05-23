LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := Wallpapers
LOCAL_PACKAGE_NAME := com.google.android.apps.wallpaper
LOCAL_PRODUCT_MODULE := true

GAPPS_LOCAL_OVERRIDES_MIN_VARIANT :=
GAPPS_LOCAL_OVERRIDES_PACKAGES := WallpaperPicker WallpaperPicker2

include $(BUILD_GAPPS_PREBUILT_APK)
