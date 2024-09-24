# Prompt for the path to the APK you want to patch
$AdditionalApkPath = Read-Host "Enter the path to the APK you want to patch"

# Ask the user if they want to include the '-i "Change package name"' property
$includeChangePackageName = Read-Host "Do you want to include the '-i \"Change package name\"' property? (yes/no)"

# Find the Revanced CLI JAR file
$revancedCliJar = Get-ChildItem .\revanced-cli-*.jar | Select-Object -First 1

# Find the Revanced patches JAR file
$revancedPatchesJar = Get-ChildItem .\revanced-patches-*.jar | Select-Object -First 1

# Find the Revanced integrations APK file
$revancedIntegrationsApk = Get-ChildItem .\revanced-integrations-*.apk | Select-Object -First 1

# Construct the command with the additional APK
if ($includeChangePackageName -eq "yes") {
    $command = "java -jar '{0}' patch -b '{1}' -i 'Change package name' -m '{2}' '{3}'" -f $revancedCliJar.FullName, $revancedPatchesJar.FullName, $revancedIntegrationsApk.FullName, $AdditionalApkPath
} else {
    $command = "java -jar '{0}' patch -b '{1}' -m '{2}' '{3}'" -f $revancedCliJar.FullName, $revancedPatchesJar.FullName, $revancedIntegrationsApk.FullName, $AdditionalApkPath
}

# Execute the command
Invoke-Expression $command
