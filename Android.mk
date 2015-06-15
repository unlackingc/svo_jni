LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=SHARED

include D:/workspace/OpenCV-2.4.10-android-sdk/OpenCV-2.4.10-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE := eigen_blas-prebuilt

LOCAL_SRC_FILES := D:/workspace/svonew/jni/armeabi-v7a/libeigen_blas.so

LOCAL_EXPORT_C_INCLUDES := D:/workspace/svonew/jni/eigen

LOCAL_STATIC_LIBRARIES += android_native_app_glue

include $(PREBUILT_SHARED_LIBRARY)




include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=SHARED

include D:/workspace/OpenCV-2.4.10-android-sdk/OpenCV-2.4.10-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE := fast-prebuilt

LOCAL_SRC_FILES := D:/workspace/svonew/jni/armeabi-v7a/libfast.so

LOCAL_EXPORT_C_INCLUDES :=  D:/workspace/svonew/jni/fast/include

LOCAL_STATIC_LIBRARIES += android_native_app_glue

include $(PREBUILT_SHARED_LIBRARY)




include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=SHARED

include D:/workspace/OpenCV-2.4.10-android-sdk/OpenCV-2.4.10-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE := Sophus-prebuilt

LOCAL_SRC_FILES :=D:/workspace/svonew/jni/armeabi-v7a/libSophus.so

LOCAL_EXPORT_C_INCLUDES :=  D:/workspace/svonew/jni/Sophus

LOCAL_STATIC_LIBRARIES += android_native_app_glue

include $(PREBUILT_SHARED_LIBRARY)






include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=SHARED

include D:/workspace/OpenCV-2.4.10-android-sdk/OpenCV-2.4.10-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE := vikit_common-prebuilt

LOCAL_SRC_FILES := D:/workspace/svonew/jni/armeabi-v7a/libvikit_common.so

LOCAL_EXPORT_C_INCLUDES :=  D:/workspace/svonew/jni/rpg_vikit/vikit_common/include

LOCAL_STATIC_LIBRARIES += android_native_app_glue

include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=SHARED

include D:/workspace/OpenCV-2.4.10-android-sdk/OpenCV-2.4.10-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE := svo_main-prebuilt

LOCAL_SRC_FILES := D:/workspace/svonew/jni/armeabi-v7a/libsvo_main.so

LOCAL_EXPORT_C_INCLUDES += D:/workspace/svonew/jni/rpg_svo/svo/include D:/workspace/svonew/jni/OpenCV-2.4.10-android-sdk/sdk/native/jni/include

LOCAL_STATIC_LIBRARIES += android_native_app_glue

include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=SHARED

include D:/workspace/OpenCV-2.4.10-android-sdk/OpenCV-2.4.10-android-sdk/sdk/native/jni/OpenCV.mk

LOCAL_MODULE    := svonew

LOCAL_CFLAGS += -std=c++11

LOCAL_SHARED_LIBRARIES += eigen_blas-prebuilt fast-prebuilt Sophus-prebuilt vikit_common-prebuilt svo_main-prebuilt

LOCAL_SRC_FILES := svonew.cpp

LOCAL_C_INCLUDES := D:/workspace/svonew/jni/boost_1_55_0

LOCAL_LDLIBS    += -lm -llog -landroid

LOCAL_STATIC_LIBRARIES += android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)

