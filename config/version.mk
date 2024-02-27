PRODUCT_VERSION_MAJOR = 15
PRODUCT_VERSION_MINOR = 0

ifeq ($(WITH_GMS),true)
CUSTOM_EDITION := GAPPS
else
CUSTOM_EDITION := VANILLA
endif

CUSTOM_BUILD_DATETIME := $(shell date +%s)
CUSTOM_BUILD_DATE := $(shell date -d @$(CUSTOM_BUILD_DATETIME) +"%Y%m%d-%H%M%S")

# Increase CR Version with each major release.
CR_VERSION := 11.6

# Internal version
LINEAGE_VERSION := crDroid-CUSTOM-v$(CR_VERSION)-$(CUSTOM_EDITION)-$(CUSTOM_BUILD_DATE)

# Display version
LINEAGE_DISPLAY_VERSION := v$(CR_VERSION)-$(CUSTOM_EDITION)-$(CUSTOM_BUILD_DATE)

# LineageOS version properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.crdroid.build.version=$(CR_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)
