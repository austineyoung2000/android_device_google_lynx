# sepolicy that are shared among devices using whitechapel
BOARD_SEPOLICY_DIRS += device/google/lynx/sepolicy/vendor
BOARD_SEPOLICY_DIRS += device/google/lynx/sepolicy/tracking_denials

BOARD_VENDOR_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/vibrator/common
BOARD_VENDOR_SEPOLICY_DIRS += hardware/google/pixel-sepolicy/vibrator/cs40l26

# audio
BOARD_SEPOLICY_DIRS += device/google/lynx/sepolicy/audio