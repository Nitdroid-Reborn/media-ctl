LOCAL_PATH:= $(call my-dir)

#
# media-ctl
#
include $(CLEAR_VARS)
LOCAL_SRC_FILES:= src/main.c src/options.c src/v4l2subdev.c src/mediactl.c
LOCAL_MODULE:= media-ctl
LOCAL_SHARED_LIBRARIES:= libc libcutils
LOCAL_CFLAGS+=-Ibionic/libc/include -I$(LOCAL_PATH)/src
LOCAL_MODULE_TAGS:= optional
include $(BUILD_EXECUTABLE)
