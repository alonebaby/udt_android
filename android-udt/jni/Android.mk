LOCAL_PATH := $(call my-dir)
LOCAL_CPP_EXTENSION:=.cpp
include $(CLEAR_VARS)
LOCAL_MODULE    := udt
LOCAL_SRC_FILES := md5.cpp common.cpp window.cpp list.cpp buffer.cpp packet.cpp channel.cpp queue.cpp ccc.cpp cache.cpp core.cpp epoll.cpp api.cpp
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
PATH_TO_UDT_SOURCE:=./
PATH_TO_LIBUDT_SO:=./lib/
LOCAL_C_INCLUDES += $(PATH_TO_UDT_SOURCE)
LOCAL_LDLIBS += -L$(PATH_TO_LIBUDT_SO) -ludt
LOCAL_MODULE    := appclient
LOCAL_SRC_FILES := app/appclient.cpp
include $(BUILD_EXECUTABLE)
