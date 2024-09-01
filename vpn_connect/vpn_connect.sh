#!/bin/bash

# Navigate to the Downloads directory
cd ~/Downloads

# Path to your OpenVPN configuration file
VPN_CONFIG="Himapippalla23.ovpn"

# Check if the VPN configuration file exists
if [[ ! -f "$VPN_CONFIG" ]]; then
  echo "Error: VPN configuration file $VPN_CONFIG not found in Downloads directory."
  exit 1
fi

# Start the OpenVPN connection
echo "Connecting to the VPN..."
sudo openvpn "$VPN_CONFIG" &

# Wait for the VPN connection to establish
sleep 10  # Adjust the sleep time as needed

# Test the connection with curl
echo "Testing the connection with curl..."
curl 10.10.10.10/whoami

