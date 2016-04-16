## Session 2 - Flic daemon
# Enable bluetooth adapter
sudo hciconfig hci0 up

# Start daemon
sudo ~/flic/$(uname -m)/daemon -l -f flic.sqlite3