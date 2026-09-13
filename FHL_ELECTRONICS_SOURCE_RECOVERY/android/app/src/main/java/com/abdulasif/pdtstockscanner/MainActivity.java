package com.abdulasif.pdtstockscanner;

import android.os.Bundle;
import com.getcapacitor.BridgeActivity;

/**
 * Rebuild starter activity. The APK manifests a Capacitor bridge activity.
 * This class registers the reconstructed native barcode bridge.
 */
public class MainActivity extends BridgeActivity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        registerPlugin(NativeBarcodePlugin.class);
    }
}
