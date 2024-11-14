#
# Copyright (C) 2018 The LineageOS Project
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

# adb for new bring up - turn on all adbd right away
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=adb

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    aaudio.hw_burst_min_usec=2000 \
    aaudio.mmap_exclusive_policy=2 \
    aaudio.mmap_policy=2 \
    af.fast_track_multiplier=1 \
    audio_hal.force_voice_config=wide \
    ro.config.media_vol_steps=25

# Bluetooth

PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.device.class_of_device?=90,2,12 \
    bluetooth.profile.asha.central.enabled?=true \
    bluetooth.profile.a2dp.source.enabled?=true \
    bluetooth.profile.avrcp.target.enabled?=true \
    bluetooth.profile.bas.client.enabled?=true \
    bluetooth.profile.gatt.enabled?=true \
    bluetooth.profile.hfp.ag.enabled?=true \
    bluetooth.profile.hid.device.enabled?=true \
    bluetooth.profile.hid.host.enabled?=true \
    bluetooth.profile.map.server.enabled?=true \
    bluetooth.profile.opp.enabled?=true \
    bluetooth.profile.pan.nap.enabled?=true \
    bluetooth.profile.pan.panu.enabled?=true \
    bluetooth.profile.pbap.server.enabled?=true \
    bluetooth.profile.sap.server.enabled?=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.bluetooth.disableabsvol=true

# BPF
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.ebpf.supported=false \
    bpf.progs_loaded=1

# fastbootd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fastbootd.available=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwc.winupdate=0 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.surface_flinger.running_without_sync_framework = true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers = 3 \
    debug.sf.latch_unsignaled=1 \
    debug.renderengine.backend=threaded \
    ro.opengles.version=196609 \
    ro.hardware.egl=mali

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# Disable all stagefright for QPR3 - otherwise, there's no sound
#    debug.stagefright.ccodec=0 \
#    debug.stagefright.omx_default_rank=0 \
#    debug.stagefright.omx_default_rank.sw-audio=1

# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
    net.tcp.default_init_rwnd=60

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdcp2.rx=tz

# SoC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=Samsung \
    ro.soc.model=Exynos5420

# System
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.binary_xml=false

# Taskbar
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.hw.mainkeys=0

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.direct.interface=p2p0
