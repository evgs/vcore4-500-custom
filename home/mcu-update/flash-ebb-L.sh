set -x
BEACON_CAN_UID=bd2c17e08f53
EBBL_CAN_UID=48670252d13c
MAIN_CAN_UID=4fe9466f24a8

FW=$HOME/mcu-update/ebb/klipper.bin

echo "Request for bootloader mode"

~/katapult/scripts/flashtool.py -i can0 -u $EBBL_CAN_UID -f $FW

