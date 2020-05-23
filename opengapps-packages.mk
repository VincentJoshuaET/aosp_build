include vendor/opengapps/build/core/definitions.mk
include vendor/opengapps/build/config.mk
include vendor/opengapps/build/opengapps-files.mk

DEVICE_PACKAGE_OVERLAYS += \
    $(GAPPS_DEVICE_FILES_PATH)/overlay/google

GAPPS_PRODUCT_PACKAGES += \
    GoogleBackupTransport \
    GoogleContactsSyncAdapter \
    GoogleFeedback \
    GoogleOneTimeInitializer \
    GooglePartnerSetup \
    PrebuiltGmsCore \
    GoogleServicesFramework \
    GoogleLoginService \
    SetupWizard \
    Phonesky \
    GoogleCalendarSyncAdapter \
    GoogleTTS \
    GooglePackageInstaller \
    Turbo \
    AndroidPlatformServices \
    GmsCoreSetupPrebuilt \
    AndroidMigratePrebuilt \
    libjni_latinimegoogle \
    Velvet \
    DigitalWellbeing \
    MarkupGoogle \
    SoundPicker \
    CalendarGooglePrebuilt \
    PrebuiltExchange3Google \
    PrebuiltGmail \
    CalculatorGoogle \
    PrebuiltDeskClockGoogle \
    Maps \
    Photos \
    YouTube \
    Books \
    CloudPrint2 \
    Drive \
    FitnessPrebuilt \
    PrebuiltKeep \
    Videos \
    Music2 \
    Newsstand \
    PlayGames \
    talkback \
    GoogleContacts \
    LatinImeGoogle \
    StorageManagerGoogle \
    TagGoogle \
    GoogleVrCore \
    GooglePrintRecommendationService \
    GoogleExtServices \
    GoogleExtShared \
    Wallet \
    CarrierServices \
    GoogleEarth \
    GCS \
    Street \
    TranslatePrebuilt \
    ActionsServices \
    WebViewGoogle \
    Chrome \
    GoogleDialer \
    PrebuiltBugle \
    PixelLauncher \
    Wallpapers \
    SafetyHubPrebuilt \
    PixelThemesStub2019 \
    PixelLiveWallpaperPrebuilt \
    MicropaperPrebuilt \
    NexusWallpapersStubPrebuilt2019 \
    LocationHistoryPrebuilt \
    NgaResources \
    arcore \
    RecorderPrebuilt

GAPPS_FORCE_PIXEL_LAUNCHER := true
GAPPS_FORCE_BROWSER_OVERRIDES := true
GAPPS_FORCE_MMS_OVERRIDES := true
GAPPS_FORCE_WEBVIEW_OVERRIDES := true
GAPPS_FORCE_DIALER_OVERRIDES := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.enable_assist_gesture_training=true \
    setupwizard.theme=glif_v3_light \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.show_pixel_tos=false \
    ro.storage_manager.show_opt_in=false \
    ro.opa.eligible_device=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent

# This needs to be at the end of standard files, but before the GAPPS_FORCE_* options,
# since those also affect DEVICE_PACKAGE_OVERLAYS. We don't want to exclude a package
# that also has an overlay, since that will make us use the overlay but not have the
# package. This can cause issues.
PRODUCT_PACKAGES += $(filter-out $(GAPPS_EXCLUDED_PACKAGES),$(GAPPS_PRODUCT_PACKAGES))
