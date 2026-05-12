$ErrorActionPreference = "Stop"
adb shell am force-stop com.beatgames.beatsaber
adb shell monkey -p com.beatgames.beatsaber 1
