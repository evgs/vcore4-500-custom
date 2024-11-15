set -x

MAIN_CAN_UID=4fe9466f24a8

echo "Request for bootloader mode"

~/katapult/scripts/flashtool.py -i can0 -u $MAIN_CAN_UID -r

echo "Wait for USB enumeration"

sleep 5s

~/katapult/scripts/flashtool.py -d /dev/ttyACM0 -f manta/klipper.bin
