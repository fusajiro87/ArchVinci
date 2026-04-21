#!/usr/bin/env bash

print_step() {
  echo
  echo "==> $1"
}

print_info() {
  echo "[INFO] $1"
}

print_success() {
  echo "[OK] $1"
}

print_error() {
  echo "[ERROR] $1" >&2
}

pause_for_enter() {
  echo
  read -rp "Press Enter to continue..."
}