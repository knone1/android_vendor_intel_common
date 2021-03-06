#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifeq ($(BOARD_HAVE_BLUETOOTH),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_COPY_HEADERS := \
    include/hci_vs.h \
    include/hci_vs_lib.h \

LOCAL_COPY_HEADERS_TO := libbluetooth_vs

include $(BUILD_COPY_HEADERS)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	hci_vs.c \

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/include \
	$(TOP)/external/bluetooth/bluez/lib/
LOCAL_SHARED_LIBRARIES := \
	libbluetooth
LOCAL_MODULE:= libbluetooth_vs
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif
