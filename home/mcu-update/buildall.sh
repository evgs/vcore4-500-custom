die() { echo "$*" 1>&2 ; exit 1; }

MUPD=$HOME/mcu-update

cd $HOME/klipper

mkdir -p $MUPD/manta
mkdir -p $MUPD/ebb

cp $MUPD/klipper-config-main-h723 .config
make || die Manta build failed
cp out/klipper.bin $MUPD/manta

cp $MUPD/klipper-config-ebb-g0b1 .config
make || die EBB build failed
cp out/klipper.bin $MUPD/ebb

cp $MUPD/klipper-config-linuxhost .config
make || die MCU Host build failed

sudo systemctl stop klipper-mcu.service
make flash
sudo systemctl start klipper-mcu.service


