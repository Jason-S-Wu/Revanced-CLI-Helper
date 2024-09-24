# Revanced-CLI-Helper
PowerShell script for compiling ReVanced APKs with optional package name customization

# Requrements
- Java Runtime Environment 11
- [ReVanced CLI](https://github.com/ReVanced/revanced-cli/releases/latest)
- [ReVanced Patches](https://github.com/ReVanced/revanced-patches/releases/latest)
- [ReVanced Integrations](https://github.com/ReVanced/revanced-integrations/releases/latest)

## Usage

1. Ensure all downloaded files (ReVanced CLI, Patches, and Integrations) are in the same directory as the PowerShell script.
2. Run the PowerShell script `patch.ps1`.
3. When prompted, enter the path to the APK you want to patch.
4. Choose whether to include the "Change package name" option.

## Script Functionality

The script performs the following actions:

1. Prompts the user for the path to the APK they want to patch.
2. Asks if the user wants to include the "Change package name" option.
3. Automatically locates the ReVanced CLI JAR, Patches JAR, and Integrations APK files in the current directory.
4. Constructs and executes the appropriate command to patch the specified APK using the ReVanced CLI.

## Notes

- Make sure you have Java Runtime Environment 11 installed and properly configured.
- The script assumes that the ReVanced CLI, Patches, and Integrations files are in the same directory and follow the standard naming convention (e.g., `revanced-cli-*.jar`).
- The patched APK will be created in the same directory as the script.
