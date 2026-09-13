# FHL ELECTRONICS — Android source recovery package

This ZIP is a **source-recovery package** built from the supplied `FHL_ELECTRONICS_v5.9.5.latest.apk`, including the repaired web bundle. The APK is a **Capacitor application with Cordova compatibility code**, not a pure Capacitor project. APK files preserve compiled Android bytecode and packaged web assets; they do not contain the original Android Studio project history, original Gradle lockfiles, original Java/Kotlin source files, or the original plugin repositories.

## Contents

| Folder/file | Contents | Status |
|---|---|---|
| `web/` | Recovered app HTML, JavaScript, CSS, images and web assets. Includes the Firestore stock persistence repair. | Recovered and editable |
| `recovered-apk/AndroidManifest.xml` | Exact decoded APK manifest. | Recovered |
| `recovered-apk/res/` | Decoded resources from the APK. | Recovered |
| `recovered-apk/smali/` | Selected native bytecode artifacts: app activity, Camera/ML Kit barcode, Capacitor and Cordova bridge classes. | Recovered bytecode, **not original Java/Kotlin** |
| `android/` | A maintainable Android/Capacitor rebuild starter containing Gradle files, an Android manifest, CameraX/ML Kit dependencies, and reconstructed barcode bridge source. | Newly reconstructed starter |
| `package.json`, `capacitor.config.ts` | Capacitor project metadata for the reconstructed starter. | Newly reconstructed starter |

> The `android/` project is intentionally labeled as a **rebuild starter**. It is not asserted to be the original project source because such source is not recoverable from an APK. The original behavior is preserved in `web/`; the native scanner source is reconstructed from the APK-visible `ScannerActivity` implementation and its CameraX/ML Kit dependencies.

## Native barcode scanner

The decoded manifest and bytecode identify `com.abdulasif.pdtstockscanner.ScannerActivity`, implemented with CameraX and Google ML Kit barcode scanning. The reconstructed `android/app/src/main/java/com/abdulasif/pdtstockscanner/ScannerActivity.java` provides a maintainable implementation of that scanner, while `NativeBarcodePlugin.java` exposes it to Capacitor as `NativeBarcode.scan()`.

## Opening the project

Install Node.js and Android Studio. From the ZIP root, run `npm install`, then run `npm run android:sync`. Open the `android/` directory in Android Studio, allow Gradle to download dependencies, and build the `app` module. If your Android Studio requests a Gradle wrapper, run `gradle wrapper` once inside the `android/` directory or use its bundled Gradle setup.

## Important compatibility note

The recovered `web/` bundle contains Cordova compatibility files (`cordova.js` and `cordova_plugins.js`). The original APK contains both Capacitor and Cordova bridge artifacts. Before a production rebuild, test barcode scanning, file import, camera permission, Firestore synchronization, and Android back-button behavior on a physical device. Keep the included original decoded manifest and smali files as the reference record during that migration.
