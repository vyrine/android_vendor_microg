LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := default-permissions-com.google.android.gms.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/default-permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-com.google.android.gms.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sysconfig-com.google.android.gms.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/sysconfig
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE := GmsCore
LOCAL_MODULE_CLASS := APPS
LOCAL_OPTIONAL_USES_LIBRARIES := \
	org.apache.http.legacy \
	androidx.window.extensions \
	androidx.window.sidecar
LOCAL_OVERRIDES_PACKAGES := com.qualcomm.location
LOCAL_PRIVILEGED_MODULE := true
LOCAL_PRODUCT_MODULE := true
LOCAL_REQUIRED_MODULES := \
	default-permissions-com.google.android.gms.xml \
	privapp-permissions-com.google.android.gms.xml \
	sysconfig-com.google.android.gms.xml
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_USES_LIBRARIES := com.android.location.provider
include $(BUILD_PREBUILT)
