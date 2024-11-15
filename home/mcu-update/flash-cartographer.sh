set -x
BEACON_CAN_UID=bd2c17e08f53
MAIN_CAN_UID=4fe9466f24a8

#FW=Carto4/Cartographer_CAN_1000000_8kib_offset.bin
FW=Carto4/Survey_Cartographer_CAN_1000000_8kib_offset.bin

echo "Request for bootloader mode"

~/katapult/scripts/flashtool.py -i can0 -u $BEACON_CAN_UID -f $FW

