## Session 1 - Bluez

# Kill existing bluetoothd process
sudo kill $(ps aux | grep '[b]luetoothd' | awk '{print $2}')

sudo ~/bluez/src/bluetoothd -nEd