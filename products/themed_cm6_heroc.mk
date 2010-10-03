# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_heroc.mk)

# Themed CM6 build time theming vendor setup
# Add Themed CM6 Overrides
PRODUCT_NAME := themed_cm6_heroc

# Reorder Product Overlays to properly include theme specific stuff before
# anything else
PRODUCT_PACKAGE_OVERLAYS := vendor/themed_cm6/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/heroc

PRODUCT_COPY_FILES +=  \
    vendor/themed_cm6/proprietary/ThemeDefaults.apk:system/app/ThemeDefaults.apk \
    vendor/themed_cm6/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh
