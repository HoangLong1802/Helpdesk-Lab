#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 username"
  exit 1
fi
USERNAME=$1
sudo useradd -m -s /bin/bash "$USERNAME"
echo "$USERNAME:ChangeMe123" | sudo chpasswd
sudo usermod -aG sudo "$USERNAME"
echo "User $USERNAME created with default password."