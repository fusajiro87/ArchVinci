> **Status: Work in progress**
> This project is currently incomplete and not functional.
> Please do not use it yet.

# ArchVinci

A guided installer for running DaVinci Resolve Studio in a Rocky Linux Distrobox on Arch Linux.

## Status

Early work in progress.

## What this project does

- Creates a Rocky Linux 8 Distrobox container
- Installs DaVinci Resolve Studio inside the container
- Applies the required dependency and AMD OpenCL setup
- Creates a launcher on the host system

## Requirements

- Arch Linux host
- Distrobox
- Podman or Docker
- AMD GPU
- DaVinci Resolve Studio Linux ZIP downloaded manually from the Blackmagic website

## Quick start

1. Clone this repository
2. Copy the DaVinci Resolve Studio Linux ZIP into the `input/` directory
3. Run:

```bash
./install.sh