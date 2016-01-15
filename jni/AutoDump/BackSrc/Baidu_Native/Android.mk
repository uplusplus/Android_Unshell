CFLAGS := -Wwrite-strings -Wpointer-arith -fpermissive -Wwrite-strings -fpermissive -Woverflow  -Wformat
INCLUDE_PATH := $(LOCAL_DIR)/SubHook  \
				$(LOCAL_DIR)/Utils 	\
				$(LOCAL_DIR)/MDexFile \
				$(LOCAL_DIR) 
LOCAL_PATH := $(call my-dir)
#Baidu_Auto 、自动识别百度
include $(CLEAR_VARS)
LOCAL_C_INCLUDES:= $(INCLUDE_PATH)
LOCAL_MODULE    := Baidu_Native
LOCAL_SRC_FILES := Baidu_Native.cpp
LOCAL_STATIC_LIBRARIES := 	lib-Utils lib-SubHook lib-MDexFile  substrate-dvm substrate 
LOCAL_LDLIBS := -llog  -L$(LOCAL_PATH) 
LOCAL_LDFLAGS := $(LOCAL_DIR)/libsubstrate-dvm.so $(LOCAL_DIR)/libsubstrate.so
LOCAL_CFLAGS  	:= $(CFLAGS)
include $(BUILD_SHARED_LIBRARY) 