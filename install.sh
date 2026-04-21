#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/lib/common.sh"
source "$SCRIPT_DIR/lib/detect_installer.sh"

print_step "ArchVinci installer"
print_info "This installer will guide you through the setup process."

mkdir -p "$SCRIPT_DIR/input"

print_step "Prepare installer"
print_info "Download the DaVinci Resolve Studio Linux ZIP from the Blackmagic website."
print_info "Copy the ZIP file into the input directory:"
echo "  $SCRIPT_DIR/input"
pause_for_enter

INSTALLER_ZIP="$(find_installer_zip "$SCRIPT_DIR/input")"

print_success "Installer detected:"
echo "  $INSTALLER_ZIP"