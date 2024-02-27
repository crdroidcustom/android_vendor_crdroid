PRODUCT_VERSION_MAJOR = 15
PRODUCT_VERSION_MINOR = 0

CUSTOM_EDITION := GAPPS
CUSTOM_BUILD_DATETIME := $(shell date +%s)
CUSTOM_BUILD_DATE := $(shell date -d @$(CUSTOM_BUILD_DATETIME) +"%Y%m%d-%H%M%S")

# Increase CR Version with each major release.
CR_VERSION := 11.1-BETA

# Internal version
LINEAGE_VERSION := crDroid-CUSTOM-v$(CR_VERSION)-$(CUSTOM_EDITION)-$(CUSTOM_BUILD_DATE)

# Display version
LINEAGE_DISPLAY_VERSION := v$(CR_VERSION)-$(CUSTOM_EDITION)-$(CUSTOM_BUILD_DATE)

# LineageOS version properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.crdroid.build.version=$(LINEAGE_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(CR_VERSION)
