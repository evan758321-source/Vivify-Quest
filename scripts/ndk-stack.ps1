param(
    [string]$LogFile = "logcat.log"
)

$ErrorActionPreference = "Stop"
ndk-stack -sym "$PSScriptRoot/../build" -dump $LogFile
