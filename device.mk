#
# Copyright (C) 2013 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/ha3g

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
# $(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    libtinyxml \
    libtinyalsa \
    tinymix
    
# Samsung symbols
PRODUCT_PACKAGES += \
    libsamsung_symbols \
    libdmitry \
    drmserver
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio/ysound.xml:system/etc/ysound.xml \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_adc.dat:system/etc/ymc/param/aec_adc.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_ae0_through.dat:system/etc/ymc/param/aec_ae0_through.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_ae1_through.dat:system/etc/ymc/param/aec_ae1_through.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_fifo.dat:system/etc/ymc/param/aec_cdsp_a_voice_fifo.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_nb.dat:system/etc/ymc/param/aec_cdsp_a_voice_nb.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_param.dat:system/etc/ymc/param/aec_cdsp_a_voice_param.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_vbox.dat:system/etc/ymc/param/aec_cdsp_a_voice_vbox.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_cdsp_a_voice_wb.dat:system/etc/ymc/param/aec_cdsp_a_voice_wb.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_config.dat:system/etc/ymc/param/aec_config.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_control_path_off.dat:system/etc/ymc/param/aec_control_path_off.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_control_path_resume.dat:system/etc/ymc/param/aec_control_path_resume.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_24khz_2mic_bi.dat:system/etc/ymc/param/aec_fdsp_24khz_2mic_bi.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_24khz_2mic_uni.dat:system/etc/ymc/param/aec_fdsp_24khz_2mic_uni.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_24khz_vbox_rec.dat:system/etc/ymc/param/aec_fdsp_24khz_vbox_rec.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_1mic.dat:system/etc/ymc/param/aec_fdsp_bypass_1mic.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_nb_bt.dat:system/etc/ymc/param/aec_fdsp_bypass_nb_bt.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_nb.dat:system/etc/ymc/param/aec_fdsp_bypass_nb.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_voip.dat:system/etc/ymc/param/aec_fdsp_bypass_voip.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_wb_bt.dat:system/etc/ymc/param/aec_fdsp_bypass_wb_bt.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_bypass_wb.dat:system/etc/ymc/param/aec_fdsp_bypass_wb.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_fdsp_chsel_rec.dat:system/etc/ymc/param/aec_fdsp_chsel_rec.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_chsel.dat:system/etc/ymc/param/aec_hf50_chsel.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_chsel_src.dat:system/etc/ymc/param/aec_hf50_chsel_src.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_chsel_svoice.dat:system/etc/ymc/param/aec_hf50_chsel_svoice.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_nb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_nb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_nb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_swb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_swb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_voip_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_voip_vbox.dat:system/etc/ymc/param/aec_hf50_voip_vbox.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_nb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_vt_wb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_svoice_2.dat:system/etc/ymc/param/aec_hf50_wb_svoice_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_svoicecar_2.dat:system/etc/ymc/param/aec_hf50_wb_svoicecar_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type0_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type0_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type1_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type1_sp_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type2_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat:system/etc/ymc/param/aec_hf50_wb_type3_rc_2mic_2.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_vbox_cp.dat:system/etc/ymc/param/aec_hf50_wb_vbox_cp.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hf50_wb_vbox_svoice.dat:system/etc/ymc/param/aec_hf50_wb_vbox_svoice.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_hp_dac0.dat:system/etc/ymc/param/aec_hp_dac0.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_line1_dac0.dat:system/etc/ymc/param/aec_line1_dac0.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_line2_dac1.dat:system/etc/ymc/param/aec_line2_dac1.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_lrmix.dat:system/etc/ymc/param/aec_lrmix.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_lrmix_dac1.dat:system/etc/ymc/param/aec_lrmix_dac1.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_rc_dac0.dat:system/etc/ymc/param/aec_rc_dac0.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_sidetone.dat:system/etc/ymc/param/aec_sidetone.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_sidetone_vol_nb.dat:system/etc/ymc/param/aec_sidetone_vol_nb.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_sidetone_vol_wb.dat:system/etc/ymc/param/aec_sidetone_vol_wb.dat \
    $(LOCAL_PATH)/configs/audio/ymc/param/aec_sp_dac1.dat:system/etc/ymc/param/aec_sp_dac1.dat

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Camera
PRODUCT_PACKAGES += \
    libstlport \
    libhwjpeg \
    camera.universal5420 \
    Snap \
    libfimg
    
# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger
    
# Camera permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.exynos.cam.sh:system/etc/init.exynos.cam.sh

PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Display
#PRODUCT_PACKAGES += \
#    libExynosHWCService \
#    libfimg

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.cer:system/etc/gps.cer \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml
# HW composer
PRODUCT_PACKAGES += \
    libion \
    hwcomposer.exynos5 \
    libion_exynos \
    gralloc.exynos5 \
    libcec

# IR
PRODUCT_PACKAGES += \
    consumerir.universal5420

# Input device
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:system/usr/idc/Synaptics_HID_TouchPad.idc \
    $(LOCAL_PATH)/configs/idc/Synaptics_RMI4_TouchPad_Sensor.idc:system/usr/idc/Synaptics_RMI4_TouchPad_Sensor.idc \
    $(LOCAL_PATH)/configs/idc/sec_e-pen.idc:system/usr/idc/sec_e-pen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/configs/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    $(LOCAL_PATH)/configs/keylayout/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    $(LOCAL_PATH)/configs/keylayout/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl

# Keystore
#PRODUCT_PACKAGES += \
    keystore.exynos5

# Lights
PRODUCT_PACKAGES += \
    lights.universal5420

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.bcm2079x.universal5420 \
    NfcNci \
    Tag \
    com.android.nfc_extras

# NFCEE access control + configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm-20791b04.conf:system/etc/libnfc-brcm-20791b04.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-brcm-20791b05.conf:system/etc/libnfc-brcm-20791b05.conf

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory


# Network tools

#PRODUCT_PACKAGES += \
    libpcap \
    tcpdump
# Audio codecs
PRODUCT_PACKAGES += \
    libOMX.Exynos.AAC.Decoder \
    libOMX.Exynos.FLAC.Decoder \
    libOMX.Exynos.MP3.Decoder \
    libOMX.Exynos.WMA.Encoder

# Stagefright and device specific modules
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libExynosOMX_Core

# Video codecs
PRODUCT_PACKAGES += \
    libOMX.Exynos.AVC.Decoder \
    libOMX.Exynos.HEVC.Decoder \
    libOMX.Exynos.MPEG4.Decoder \
    libOMX.Exynos.MPEG4.Encoder \
    libOMX.Exynos.VP8.Decoder \
    libOMX.Exynos.WMV.Decoder
    
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
# CPU producer to CPU consumer not supported
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1

# Power
PRODUCT_PACKAGES += \
    power.universal5420

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.samsung.rc \
    init.universal5420.rc \
    init.universal5420.usb.rc \
    init.universal5420.wifi.rc \
    ueventd.universal5420.rc

# Radio
PRODUCT_PACKAGES += \
    cbd \
    libsecril-client \
    libsecril-client-sap \
    modemloader
    
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d /dev/ttyS0 \
    rild.libpath=/system/lib/libsec-ril.so \
    ro.ril.telephony.mqanelements=5 \
    ro.ril.hsxpa=3 \
    ro.ril.gprsclass=12 \
    ro.telephony.ril_class=ha3gRIL \
    ro.ril.hsupa.category=6 \
    ro.ril.hsdpa.category=24
    # Recovery
PRODUCT_PACKAGES += \
    init.recovery.universal5420.rc

# Sensors
# PRODUCT_PACKAGES += \
#    sensors.universal5420

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    hostapd_default.conf \
    libwpa_client \
    wpa_supplicant \
    libnetcmdiface \
    macloader
    
ADDITIONAL_DEFAULT_PROPERTIES += \
# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    persist.adb.notify=0 \
    ro.secure=0 \
    persist.sys.root_access=3 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
    persist.sys.usb.config=mtp 
    
# call common exynos5 LOCAL_MODULE
$(call inherit-product, hardware/samsung_slsi/exynos5/exynos5.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

$(call inherit-product-if-exists, vendor/samsung/ha3g/ha3g-vendor.mk)
