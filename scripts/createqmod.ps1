$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

$root = Split-Path -Parent $PSScriptRoot
Set-Location $root

if (-not (Test-Path "build/libvivify.so")) {
    & "$PSScriptRoot/build.ps1"
}

qpm qmod zip --import mod.json
