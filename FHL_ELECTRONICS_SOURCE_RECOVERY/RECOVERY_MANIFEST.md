# Recovery manifest

| Item | Origin | Notes |
|---|---|---|
| Application web bundle | `assets/public/` inside APK | Editable source assets recovered directly from the APK. |
| Android manifest | `AndroidManifest.xml` decoded from APK | Exact decoded manifest kept in `recovered-apk/`. |
| Native classes | `classes*.dex` decoded to smali | Preserved as bytecode-level source representation. |
| Barcode implementation | App scanner activity plus ML Kit classes identified in decoded bytecode | Java bridge and scanner in `android/` are a reconstruction, not the original source. |
| Gradle and Capacitor files | Not present in APK | Reconstructed to give a maintainable Android Studio starting point. |

No signing key, user database, credentials, or local device storage has been included in this package.
