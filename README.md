# FHL Electronics Android App

This repository contains the recovered and reconstructed Android/Capacitor source package for the FHL Electronics stock scanner application.

## Recovery package

The `FHL_ELECTRONICS_SOURCE_RECOVERY/` directory contains the full recovered package, including the editable web application bundle, decoded Android resources and manifest, bytecode-level APK artifacts, reconstructed Capacitor/Android project files, and native barcode scanner bridge source.

The package preserves the repaired application behavior, including the stock persistence fix, admin-only promoter login lock/unlock controls, global promoter logout, and the admin-only latest Excel update panel.

## Important recovery note

The original Android Studio project history and original Java/Kotlin sources cannot be recovered from a compiled APK. The `android/` project is therefore a maintainable rebuild starter. The `web/` bundle is recovered from the APK and remains the primary editable application behavior. The `recovered-apk/` directory is retained as a reference record containing the decoded manifest, resources, and smali representation.

## Build prerequisites

Install Node.js, Android Studio, and the Android SDK. From `FHL_ELECTRONICS_SOURCE_RECOVERY/`, install the JavaScript dependencies and synchronize the native project:

```bash
npm install
npm run android:sync
```

Open the `android/` directory in Android Studio and allow Gradle to download dependencies. Before any production rebuild, test barcode scanning, camera permission, Excel import, Firestore synchronization, Android back-button behavior, and data persistence across application updates on a physical Android 11+ device.

## Signing and release safety

Signing keys, passwords, Firebase service credentials, user databases, and local device storage are intentionally excluded. The embedded app login password literals were redacted from this GitHub copy and replaced with setup placeholders; restore credentials only through a secure local release process. Do not commit keystores, environment files, `google-services.json`, service-account files, or generated APK/AAB files. The production signing credentials must be supplied securely at release time.

## Data update reference

The latest verified workbook referenced by the recovery work is `STOCKWITHPRICE13.09.xlsx`, containing 2,290 product rows with numeric stock quantity and price values. Firestore metadata recorded the latest upload by the admin user `Asif`; direct per-record rewrite access is not included in this repository.
