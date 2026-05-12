param(
    [string]$QuestPath = "/sdcard/Android/data/com.beatgames.beatsaber/files/mods"
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

& "$PSScriptRoot/build.ps1"
adb push "$PSScriptRoot/../build/libvivify.so" "$QuestPath/libvivify.so"
