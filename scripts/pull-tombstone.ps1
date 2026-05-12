param(
    [string]$Output = "tombstone.txt"
)

$ErrorActionPreference = "Stop"
adb shell su -c 'ls -t /data/tombstones/tombstone_* | head -1' | ForEach-Object {
    adb shell su -c "cat $_" > $Output
}
