param(
    [switch]$clean
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

$root = Split-Path -Parent $PSScriptRoot
Set-Location $root

if ($clean -and (Test-Path "build")) {
    Remove-Item -Recurse -Force "build"
}

if (-not (Test-Path "cmake/utils.cmake") -or -not (Test-Path "cmake/qpm.cmake")) {
    qpm restore
}

cmake -S . -B build -G Ninja -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build build --config RelWithDebInfo
