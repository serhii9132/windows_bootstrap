#!/bin/bash

echo "Select the OS to deploy:"
echo "  1) server-22"
echo "  2) server-25"
echo "  3) win-11"
echo ""

read -p "Enter a number (1-3): " choice

case $choice in
    1)
        export os="server-22"
        ;;
    2)
        export os="server-25"
        ;;
    3)
        export os="win-11"
        ;;
    *)
        echo "Error: Invalid input. Please enter a number from 1 to 3."
        exit 1
        ;;
esac

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
LOG_DIR="${SCRIPT_DIR}/logs"
TIMESTAMP=$(date +"%Y_%m_%d_%H-%M-%S")
LOG_FILE="${LOG_DIR}/ansible_${TIMESTAMP}_${os}.log"

mkdir -pv "$LOG_DIR"
export ANSIBLE_LOG_PATH="$LOG_FILE"

molecule "$@"