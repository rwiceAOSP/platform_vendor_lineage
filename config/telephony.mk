# GMS
ifeq ($(WITH_GMS),true)
WITH_GMS_COMMS_SUITE := true
endif

ifdef LINEAGE_BUILD
# Sensitive Phone Numbers list
PRODUCT_PACKAGES += \
    sensitive_pn.xml
endif

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

ifdef LINEAGE_BUILD
# Telephony packages
PRODUCT_PACKAGES += \
    messaging \
    Stk

# Default ringtone
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=Orion.ogg

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_PRODUCT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Disable mobile data by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.android.mobiledata=false
endif
