#!/usr/bin/env bash

find_installer_zip() {
  local input_dir="$1"

  shopt -s nullglob
  local matches=("$input_dir"/DaVinci_Resolve_Studio*_Linux.zip)
  shopt -u nullglob

  if [ "${#matches[@]}" -eq 0 ]; then
    print_error "No DaVinci Resolve Studio Linux ZIP was found in: $input_dir"
    exit 1
  fi

  if [ "${#matches[@]}" -gt 1 ]; then
    print_error "Multiple installer ZIP files were found in: $input_dir"
    printf ' - %s\n' "${matches[@]}" >&2
    echo "Please keep only one ZIP file in the input directory." >&2
    exit 1
  fi

  printf '%s\n' "${matches[0]}"
}