# Apps
PRODUCT_PACKAGES += \
    EmergencyInfo

ifdef LINEAGE_BUILD
PRODUCT_PACKAGE_OVERLAYS += vendor/lineage/overlay/wifionly
endif
